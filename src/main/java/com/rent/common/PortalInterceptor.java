package com.rent.common;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.ModelAndViewDefiningException;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.rent.login.service.LoginVO;

public class PortalInterceptor extends HandlerInterceptorAdapter {
	
	protected Log log = LogFactory.getLog(this.getClass());
	
	private String requestURI;

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		requestURI = request.getRequestURI(); // 요청 URI
		log.debug("###preHandle-requestURI:" + requestURI);
		
		// c:import 를 사용할경우의 uri 값
		String importURI = request.getAttribute("javax.servlet.include.request_uri") == null ? "" : (String) (request.getAttribute("javax.servlet.include.request_uri"));
		log.debug("preHandle=====================");
		log.debug("requestURI=====================" + requestURI);
		log.debug("jsp:include or c:import uri =====================" + importURI);
		
		LoginVO loginVO = null;
		loginVO = (LoginVO) request.getSession().getAttribute(GlobalConstants.LOGIN_SESSION_KEY);
		
		String[] replaceURI = null;
		replaceURI = requestURI.split("/"); // "" 0번째, contextRoot 1번째, program 2번째, w 3번째, selectPrgoram.do 4번째
		
		Boolean roleChk = false;
		
		if ("a".equals(replaceURI[2])) { // TODO BASIC context root가 없으면 2번째 , 있으면 3번째로 변경해줘야함
			roleChk = true;
		} else if("w".equals(replaceURI[2])) { // TODO BASIC context root가 없으면 2번째 , 있으면 3번째로 변경해줘야함
			if (loginVO != null) {
				roleChk = true;
			}
		} else { //z 사용자관리
			if (loginVO != null) {
				if(loginVO.getUserSeq().equals(GlobalConstants.ADMIN_SEQ)) {
					roleChk = true;
				}
			}
		}
		if(!roleChk) {
			ModelAndView modelAndView = new ModelAndView("redirect:/common/a/roleBridge.do");
			throw new ModelAndViewDefiningException(modelAndView);
		}
		
		return true;
	}
}
