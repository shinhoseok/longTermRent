package com.rent.home.web;

import java.util.List;
import java.util.Map;

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
import com.rent.admin.survey.service.SurveyVO;
import com.rent.admin.visitor.service.VisitorVO;
import com.rent.common.GlobalConstants;
import com.rent.home.service.HomeService;

@Controller
public class HomeController {
	
	protected Log log = LogFactory.getLog(this.getClass());
	
	@Resource(name = "homeService")
	private HomeService homeService;
	
	@Resource(name = "linkManageService")
	private LinkManageService linkManageService;
	
	//메인화면
	@RequestMapping(value="/home/a/main.do")
	public String main() throws Exception {
		return "/home/main";
	}
	
	@RequestMapping(value="/home/a/selectMainStep1.do")
	public String selectMainStep1(ModelMap model) throws Exception {
		
		SurveyVO surveyVO = new SurveyVO();
		surveyVO.setQtnId(GlobalConstants.QUESTION_ONE);
		Map<String, Object> rsltMap = homeService.main(surveyVO);
		
		model.addAttribute("rslt", rsltMap);
		
		return "/home/step1";
	}
	
	@RequestMapping(value="/home/a/selectMainStep2.do")
	public String selectMainStep2(ModelMap model) throws Exception {
		
		SurveyVO surveyVO = new SurveyVO();
		surveyVO.setQtnId(GlobalConstants.QUESTION_TWO);
		Map<String, Object> rsltMap = homeService.main(surveyVO);
		
		model.addAttribute("rslt", rsltMap);
		
		return "/home/step2";
	}
	
	@RequestMapping(value="/home/a/selectMainStep3.do")
	public String selectMainStep3(ModelMap model) throws Exception {
		
		SurveyVO surveyVO = new SurveyVO();
		surveyVO.setQtnId(GlobalConstants.QUESTION_THREE);
		Map<String, Object> rsltMap = homeService.main(surveyVO);
		
		model.addAttribute("rslt", rsltMap);
		
		return "/home/step3";
	}
	
	@RequestMapping(value="/home/a/selectMainStep4.do")
	public String selectMainStep4() throws Exception {
		return "/home/step4";
	}
	
	@RequestMapping(value="/home/a/selectMainStep5.do")
	public String selectMainStep5() throws Exception {
		return "/home/step5";
	}
	
	@RequestMapping(value="/home/a/selectMainStep6.do")
	public String selectMainStep6() throws Exception {
		return "/home/step6";
	}
	
	@RequestMapping(value="/home/a/selectMainStep7.do")
	public String selectMainStep7(@ModelAttribute("visitorVO") VisitorVO visitorVO, ModelMap model) throws Exception {
		
		List<VisitorVO> resultVO = homeService.selectVisitorDetail(visitorVO);
		if(resultVO == null) {
			model.addAttribute("overlapCnt", 0);
		} else {
			model.addAttribute("overlapCnt", resultVO.size()+1);
		}
		return "jsonView";
	}
	
	@RequestMapping(value = "/home/a/selectStep6.do")
	public String selectStep6(@ModelAttribute("visitorVO") VisitorVO visitorVO, ModelMap model) throws Exception {
		return "/home/step6";
	}
	
	@RequestMapping(value="/home/a/insertVisitorProc.do")
	public String insertVisitorProc(@ModelAttribute("visitorVO") VisitorVO visitorVO, ModelMap model, SessionStatus status) throws Exception {
		
		homeService.insertVisitorProc(visitorVO);
		status.setComplete(); //중복 submit 방지
		
		return "/home/step7";
	}
	
	@RequestMapping(value = "/home/a/selectLanding.do")
	public String selectLanding(ModelMap model) throws Exception {
		
		LinkVO linkVO = new LinkVO();
		linkVO.setLinkKind(GlobalConstants.YOUTUBE_LINK_CODE);
		LinkVO youtubeLinkVO = linkManageService.selectReviewLink(linkVO);
		model.addAttribute("youtubeLinkVO", youtubeLinkVO);
		
		return "/home/landing";
	}
	
	@RequestMapping(value = "/home/a/selectMobileLanding.do")
	public String selectMobileLanding(ModelMap model) throws Exception {
		
		LinkVO linkVO = new LinkVO();
		linkVO.setLinkKind(GlobalConstants.YOUTUBE_LINK_CODE);
		LinkVO youtubeLinkVO = linkManageService.selectReviewLink(linkVO);
		model.addAttribute("youtubeLinkVO", youtubeLinkVO);
		
		return "/home/mobileLanding";
	}
	
	@RequestMapping(value = "/home/a/privacy.do")
	public String privacy() throws Exception {
		return "/home/privacy";
	}
}
