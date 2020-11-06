package com.rent.admin.survey.web;

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

import com.rent.admin.survey.service.SurveyService;
import com.rent.admin.survey.service.SurveyVO;
import com.rent.login.service.LoginVO;

@Controller
public class SurveyController {

	protected Log log = LogFactory.getLog(this.getClass());
	
	@Resource(name = "surveyService")
	private SurveyService surveyService;
	
	@RequestMapping(value = "/svymgr/w/updateSurveyQtn.do")
	public String updateSurvey(@ModelAttribute("surveyVO") SurveyVO surveyVO, ModelMap model) throws Exception {
		
		List<SurveyVO> resultList = surveyService.selectSurveyQtnList(surveyVO);
		model.addAttribute("resultList", resultList);
		
		model.addAttribute("alevel", "3");
		model.addAttribute("blevel", "1");
		model.addAttribute("clevel", "1");
		
		return "/admin/survey/surveyQtnUpdate";
	}
	
	@RequestMapping(value = "/svymgr/w/updateSurveyQtnProc.do")
	public String updateSurveyQtnProc(@ModelAttribute("surveyVO") SurveyVO surveyVO, ModelMap model,  SessionStatus status, LoginVO sessionVO) throws Exception {
		
		surveyVO.setModId(sessionVO.getUserSeq());
		surveyService.updateSurveyQtnProc(surveyVO);
		//중복 submit 방지
		status.setComplete();
		
		String redirectUrl = "/svymgr/w/updateSurveyQtn.do";
		String message = "수정 되었습니다.";
		
		model.addAttribute("message", message);
		model.addAttribute("redirectUrl", redirectUrl);
		
		return "/common/temp_action_message";
	}
	
	@RequestMapping(value = "/svymgr/w/updateSurveyAnswer.do")
	public String updateSurveyAnswer(@ModelAttribute("surveyVO") SurveyVO surveyVO, ModelMap model) throws Exception {
		
		Map<String, Object> rsltMap = surveyService.selectSurveyAsrList();
		model.addAttribute("rslt", rsltMap);
		
		model.addAttribute("alevel", "3");
		model.addAttribute("blevel", "1");
		model.addAttribute("clevel", "2");
		
		return "/admin/survey/surveyAnswerUpdate";
	}
	
	@RequestMapping(value = "/svymgr/w/updateSurveyAsrProc.do")
	public String updateSurveyAsrProc(@ModelAttribute("surveyVO") SurveyVO surveyVO, ModelMap model, LoginVO sessionVO, SessionStatus status) throws Exception {
		
		surveyVO.setModId(sessionVO.getUserSeq());
		surveyService.updateSurveyAsrProc(surveyVO);
		//중복 submit 방지
		status.setComplete();
		
		String redirectUrl = "/svymgr/w/updateSurveyAnswer.do";
		String message = "수정 되었습니다.";
		
		model.addAttribute("message", message);
		model.addAttribute("redirectUrl", redirectUrl);
		
		return "/common/temp_action_message";
	}
}
