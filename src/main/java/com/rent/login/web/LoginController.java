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
	@RequestMapping(value = "/login/a/afterLogin.do")
	public String afterLogin(HttpServletRequest request, @ModelAttribute("loginVO") LoginVO loginVO, ModelMap model) throws Exception {
		
		LoginVO resultVO = (LoginVO)loginService.selectLoginUserInfo(loginVO);
		if(resultVO == null){
			model.addAttribute("message", "로그인정보가 잘못되었습니다.");
			model.addAttribute("redirectUrl", "/login/a/login.do");
			return "/common/temp_action_message";
		}
		request.getSession().setAttribute(GlobalConstants.LOGIN_SESSION_KEY, resultVO);
		
		return "redirect:/vtmgr/z/selectVisitorList.do";
	}
	
	//아이디 찾기
	@RequestMapping(value="/login/a/selectIdSearch.do")
	public String selectIdSearch(@ModelAttribute("loginVO") LoginVO loginVO, ModelMap model) throws Exception {
		
		model.addAttribute("alevel", "1");
		
		return "/login/iDSearch";
	}
	
	//아이디 찾기 이름,이메일 정합성 체크
	@RequestMapping(value="/login/a/selectIdSearchAjax.do")
	public String selectIdSearchAjax(@ModelAttribute("loginVO") LoginVO loginVO, ModelMap model) throws Exception {
		
		LoginVO resultVO = loginService.selectIdSearch(loginVO);
		String message = "N";
		if(resultVO != null) {
			message = resultVO.getUserId();
		}
		model.addAttribute("message", message);
		
		return "jsonView";
	}
	
	//아이디 찾기 메일발송
	@RequestMapping(value="/login/a/afterIdSearch.do")
	public String afterIdSearch(@ModelAttribute("loginVO") LoginVO loginVO, ModelMap model) throws Exception {
		
		loginService.afterIdSearch(loginVO);
		
		String redirectUrl = "/login/a/login.do";
		String message = "아이디가 메일로 발송되었습니다.";
		
		model.addAttribute("message", message);
		model.addAttribute("redirectUrl", redirectUrl);
		
		return "/common/temp_action_message";
	}
	
	//비밀번호 찾기
	@RequestMapping(value="/login/z/selectPwdSearch.do")
	public String selectPwdSearch(@ModelAttribute("loginVO") LoginVO loginVO, ModelMap model) throws Exception {
		
		model.addAttribute("alevel", "2");
		
		return "/login/pwdSearch";
	}
	
	//비밀번호 찾기 정합성
	@RequestMapping(value = "/login/a/selectUserPwSearch.do")
	public String selectUserPwSearch(@ModelAttribute("loginVO") LoginVO loginVO, ModelMap model) throws Exception {
		
		LoginVO resultVO = loginService.selectUserPwSearch(loginVO);
		String message = "N";
		if(resultVO != null) {
			message = resultVO.getUserSeq();
		}
		model.addAttribute("message", message);
		
		return "jsonView";
	}
	
	//비밀번호 찾기 임시비밀번호 메일발송
	@RequestMapping(value = "/login/a/afterUserPwSearch.do")
	public String afterUserPwSearch(@ModelAttribute("loginVO") LoginVO loginVO, ModelMap model) throws Exception {
		
		loginService.afterUserPwSearch(loginVO);
		
		String redirectUrl = "/login/a/login.do";
		String message = "임시 비밀번호가 메일로 발송되었습니다.";
		
		model.addAttribute("message", message);
		model.addAttribute("redirectUrl", redirectUrl);
		
		return "/common/temp_action_message";
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
