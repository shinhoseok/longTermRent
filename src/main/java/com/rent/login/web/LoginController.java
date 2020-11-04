package com.rent.login.web;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.rent.common.GlobalConstants;
import com.rent.login.service.LoginService;
import com.rent.login.service.LoginVO;

@Controller
public class LoginController {
	protected Log log = LogFactory.getLog(this.getClass());
	
	@Resource(name = "loginService")
	private LoginService loginService;
	
	//로그인화면
	@RequestMapping(value = "/login/a/login.do")
	public String login(@ModelAttribute("loginVO") LoginVO loginVO) throws Exception {
		return "/login/login";
	}
	
	//로그인 처리
	@RequestMapping(value = "/login/z/afterLogin.do")
	public String afterLogin(HttpServletRequest request, @ModelAttribute("loginVO") LoginVO loginVO, ModelMap model) throws Exception {
		
		LoginVO resultVO = (LoginVO)loginService.selectLoginUserInfo(loginVO);
		if(resultVO == null){
			model.addAttribute("message", "로그인정보가 잘못되었습니다.");
			model.addAttribute("redirectUrl", "/login/z/login.do");
			return "/common/temp_action_message";
		}
		request.getSession().setAttribute(GlobalConstants.LOGIN_SESSION_KEY, resultVO);
		
		return "redirect:/vtmgr/z/selectVisitorList.do";
	}
	
	//아이디 찾기
	@RequestMapping(value="/login/z/selectIdSearch.do")
	public String selectIdSearch(@ModelAttribute("loginVO") LoginVO loginVO, ModelMap model) throws Exception {
		
		model.addAttribute("alevel", "1");
		
		return "/login/iDSearch";
	}
		
	//비밀번호 찾기
	@RequestMapping(value="/login/z/selectPwdSearch.do")
	public String selectPwdSearch(@ModelAttribute("loginVO") LoginVO loginVO, ModelMap model) throws Exception {
		
		model.addAttribute("alevel", "2");
		
		return "/login/pwdSearch";
	}
	
	//로그아웃
	@RequestMapping(value="/login/a/logOut.do")
	public String logOut(HttpServletRequest request) throws Exception {
		
		HttpSession session = request.getSession();
		session.setAttribute(GlobalConstants.LOGIN_SESSION_KEY, null);
		session.invalidate();
		
		return "redirect:/login/a/login.do";
	}
}
