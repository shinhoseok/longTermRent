package com.rent.admin.link.web;

import javax.annotation.Resource;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.support.SessionStatus;

import com.rent.admin.link.service.LinkManageService;
import com.rent.admin.link.service.LinkVO;
import com.rent.common.GlobalConstants;
import com.rent.login.service.LoginVO;

@Controller
public class LinkManageController {
	
	protected Log log = LogFactory.getLog(this.getClass());
	
	@Resource(name = "linkManageService")
	private LinkManageService linkManageService;
	
	@RequestMapping("/linkmgr/w/updateReviewLink.do")
	public String updateReviewLink(@ModelAttribute("linkVO") LinkVO linkVO, ModelMap model) throws Exception {
		
		linkVO.setLinkKind(GlobalConstants.REVIEW_LINK_CODE);
		LinkVO resultVO = linkManageService.selectReviewLink(linkVO);
		model.addAttribute("resultVO", resultVO);
		
		model.addAttribute("alevel", "3");
		model.addAttribute("blevel", "2");
		model.addAttribute("clevel", "1");
		
		return "/admin/link/reviewLinkUpdate";
	}
	
	@RequestMapping("/linkmgr/w/updateReviewLinkProc.do")
	public String updateReviewLinkProc(@ModelAttribute("linkVO") LinkVO linkVO, ModelMap model, SessionStatus status, LoginVO sessionVO) throws Exception {
		
		linkVO.setModId(sessionVO.getUserSeq());
		linkManageService.updateLinkProc(linkVO);
		//중복 submit 방지
		status.setComplete();
		
		String redirectUrl = "/linkmgr/w/updateReviewLink.do";
		String message = "수정 되었습니다.";
		
		model.addAttribute("message", message);
		model.addAttribute("redirectUrl", redirectUrl);
		
		return "/common/temp_action_message";
	}
	
	@RequestMapping("/linkmgr/w/updateYouTubeLink.do")
	public String updateYouTubeLink(@ModelAttribute("linkVO") LinkVO linkVO, ModelMap model) throws Exception {
		
		linkVO.setLinkKind(GlobalConstants.YOUTUBE_LINK_CODE);
		LinkVO resultVO = linkManageService.selectReviewLink(linkVO);
		model.addAttribute("resultVO", resultVO);
		
		model.addAttribute("alevel", "3");
		model.addAttribute("blevel", "2");
		model.addAttribute("clevel", "2");
		
		return "/admin/link/youTubeLinkUpdate";
	}
	
	@RequestMapping("/linkmgr/w/updateYoutubeLinkProc.do")
	public String updateYoutubeLinkProc(@ModelAttribute("linkVO") LinkVO linkVO, ModelMap model, SessionStatus status, LoginVO sessionVO) throws Exception {
		
		linkVO.setModId(sessionVO.getUserSeq());
		linkManageService.updateLinkProc(linkVO);
		//중복 submit 방지
		status.setComplete();
		
		String redirectUrl = "/linkmgr/w/updateYouTubeLink.do";
		String message = "수정 되었습니다.";
		
		model.addAttribute("message", message);
		model.addAttribute("redirectUrl", redirectUrl);
		
		return "/common/temp_action_message";
	}
}
