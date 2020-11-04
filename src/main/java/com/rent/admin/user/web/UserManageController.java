package com.rent.admin.user.web;

import java.util.Map;

import javax.annotation.Resource;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.support.SessionStatus;

import com.rent.admin.user.service.UserManageService;
import com.rent.admin.user.service.UserVO;
import com.rent.login.service.LoginVO;

@Controller
public class UserManageController {
	
	protected Log log = LogFactory.getLog(this.getClass());
	
	@Resource(name = "userManageService")
	private UserManageService userManageService;
	
	//사용자목록
	@RequestMapping(value = "/usermgr/z/selectUserList.do")
	public String selectUserList(@ModelAttribute("userVO") UserVO userVO, ModelMap model) throws Exception {
		
		Map<String, Object> rsltMap = userManageService.selectUserList(userVO);
		model.addAttribute("rslt", rsltMap);
		
		model.addAttribute("alevel", "2");
		model.addAttribute("blevel", "1");
		model.addAttribute("clevel", "1");
		
		return "/admin/user/userList";
	}
	
	//사용자 등록화면
	@RequestMapping(value = "/usermgr/z/insertUser.do")
	public String insertUser(@ModelAttribute("userVO") UserVO userVO) throws Exception {
		return "/admin/user/userInsert";
	}
	
	//사용자 아이디,이메일 중복체크
	@RequestMapping(value = "/usermgr/z/selectUserIdChk.do")
	public String selectUserIdChk(@ModelAttribute("userVO") UserVO userVO, ModelMap model) throws Exception {
		
		String message = userManageService.selectUserIdChk(userVO);
		model.addAttribute("message", message);
		
		return "jsonView";
	}
	
	//사용자 등록처리
	@RequestMapping(value = "/usermgr/z/insertUserProc.do")
	public String insertUserProc(@ModelAttribute("userVO") UserVO userVO, SessionStatus status, LoginVO sessionVO) throws Exception {
		
		userVO.setRegId(sessionVO.getUserId()); //세션에서 빼야함
		userManageService.insertUserProc(userVO);
		status.setComplete(); //중복 submit 방지
		
		return "redirect:/usermgr/z/selectUserList.do";
	}
	
	//사용자상세보기
	@RequestMapping(value = "/usermgr/z/selectUserDetail.do")
	public String selectUserDetail(@ModelAttribute("userVO") UserVO userVO, ModelMap model) throws Exception {
		
		userVO = userManageService.selectUserDetail(userVO);
		model.addAttribute("resultVO", userVO);
		
		return "/admin/user/userDetail";
	}
	
	//비밀번호 초기화
	@RequestMapping(value = "/usermgr/z/updateUserPwReset.do")
	public String updateUserPwReset(@ModelAttribute("userVO") UserVO userVO, ModelMap model, SessionStatus status, LoginVO sessionVO) throws Exception {
		
		userVO.setModId(sessionVO.getUserSeq());
		userManageService.updateUserPwReset(userVO);
		//중복 submit 방지
		status.setComplete();
		
		String redirectUrl = "/usermgr/z/selectUserDetail.do?userSeq="+userVO.getUserSeq();
		String message = "임시비밀번호가 메일로 발송되었습니다.";
		
		model.addAttribute("message", message);
		model.addAttribute("redirectUrl", redirectUrl);
		
		return "/common/temp_action_message";
	}
	
	//사용자 수정
	@RequestMapping(value = "/usermgr/z/updateUser.do")
	public String updateUser(@ModelAttribute("userVO") UserVO userVO, ModelMap model) throws Exception {
		
		userVO = userManageService.selectUserDetail(userVO);
		model.addAttribute("resultVO", userVO);
		
		return "/admin/user/userUpdate";
	}
	
	//사용자 이메일 중복체크
	@RequestMapping(value = "/usermgr/z/selectUserEmailChk.do")
	public String selectUserEmailChk(@ModelAttribute("userVO") UserVO userVO, ModelMap model) throws Exception {
		
		int resultCnt = userManageService.selectUserEmailChk(userVO);
		model.addAttribute("resultCnt", resultCnt);
		
		return "jsonView";
	}
	
	//사용자 수정 처리
	@RequestMapping(value = "/usermgr/z/updateUserProc.do")
	public String updateUserProc(@ModelAttribute("userVO") UserVO userVO, ModelMap model, SessionStatus status, LoginVO sessionVO) throws Exception {
		userVO.setModId(sessionVO.getUserSeq());
		userManageService.updateUserProc(userVO);
		status.setComplete();
		
		return "redirect:/usermgr/z/selectUserDetail.do?userSeq="+userVO.getUserSeq();
	}
}
