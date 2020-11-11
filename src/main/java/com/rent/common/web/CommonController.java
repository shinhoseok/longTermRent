package com.rent.common.web;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CommonController {
	
	protected Log log = LogFactory.getLog(this.getClass());
	
	@RequestMapping(value = "/common/a/roleBridge.do")
	public String roleBridge(HttpServletRequest request, ModelMap model) throws Exception {
		
		String message = "현재 메뉴에 대한 권한이 없습니다";
		
		log.debug("NO RULE MENU MOVE");
		log.debug("request:" + request.getRequestURI());
		
		model.addAttribute("message", message);
		model.addAttribute("redirectUrl", "/home/a/main.do");

		return "/common/temp_action_message";
	}
}
