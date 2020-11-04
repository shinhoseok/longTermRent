package com.rent.admin.mypage.web;

import javax.annotation.Resource;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.support.SessionStatus;

import com.rent.admin.mypage.service.MyPageService;
import com.rent.admin.user.service.UserManageService;
import com.rent.admin.user.service.UserVO;
import com.rent.login.service.LoginService;
import com.rent.login.service.LoginVO;

@Controller
public class MyPageController {
	protected Log log = LogFactory.getLog(this.getClass());
	
	@Resource(name = "userManageService")
	private UserManageService userManageService;
	
	@Resource(name = "loginService")
	private LoginService loginService;
	
	@Resource(name = "myPageService")
	private MyPageService myPageService;
	
	@RequestMapping(value = "/mypagemgr/z/updateMyInfo.do")
	public String updateMyInfo(@ModelAttribute("userVO") UserVO userVO, ModelMap model) throws Exception {
		
		userVO = userManageService.selectUserDetail(userVO);
		model.addAttribute("resultVO", userVO);
		
		return "/admin/mypage/myInfoUpdate";
	}
	
	@RequestMapping(value = "/mypagemgr/w/selectBeforeUserPwConfirm.do")
	public String selectBeforeUserPwConfirm(@ModelAttribute("loginVO") LoginVO loginVO, ModelMap model) throws Exception {
		
		LoginVO resultVO = (LoginVO)loginService.selectLoginUserInfo(loginVO);
		boolean result = true;
		if(resultVO == null) {
			result = false;
		}
		model.addAttribute("result", result);
		
		return "jsonView";
	}
	
	@RequestMapping(value = "/mypagemgr/w/updateUserPwReset.do")
	public String updateUserPwReset(@ModelAttribute("userVO") UserVO userVO, ModelMap model, SessionStatus status, LoginVO sessionVO) throws Exception {
		userVO.setModId(sessionVO.getUserSeq());
		myPageService.updateUserPwReset(userVO);
		//중복 submit 방지
		status.setComplete();
		
		String redirectUrl = "/vtmgr/z/selectVisitorList.do";
		String message = "비밀번호가 정상적으로 변경되었습니다.";
		
		model.addAttribute("message", message);
		model.addAttribute("redirectUrl", redirectUrl);
		
		return "/common/temp_action_message";
	}
}
