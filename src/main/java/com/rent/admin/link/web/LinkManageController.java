package com.rent.admin.link.web;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LinkManageController {
	
	protected Log log = LogFactory.getLog(this.getClass());
	
	@RequestMapping("/linkmgr/z/updateReviewLink.do")
	public String updateReviewLink(ModelMap model) throws Exception {
		
		model.addAttribute("alevel", "3");
		model.addAttribute("blevel", "2");
		model.addAttribute("clevel", "1");
		
		return "/admin/link/reviewLinkUpdate";
	}
	
	@RequestMapping("/linkmgr/z/updateYouTubeLink.do")
	public String updateYouTubeLink(ModelMap model) throws Exception {
		
		model.addAttribute("alevel", "3");
		model.addAttribute("blevel", "2");
		model.addAttribute("clevel", "2");
		
		return "/admin/link/youTubeLinkUpdate";
	}
}
