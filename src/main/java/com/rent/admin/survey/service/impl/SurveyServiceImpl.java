package com.rent.admin.survey.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Service;

import com.rent.admin.survey.service.SurveyDAO;
import com.rent.admin.survey.service.SurveyService;
import com.rent.admin.survey.service.SurveyVO;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;

@Service("surveyService")
public class SurveyServiceImpl extends EgovAbstractServiceImpl implements SurveyService {
	
	protected Log log = LogFactory.getLog(this.getClass());
	
	@Resource(name="surveyDAO")
	private SurveyDAO surveyDAO;
	
	//설문질문 리스트
	public List<SurveyVO> selectSurveyQtnList(SurveyVO surveyVO) throws Exception {
		return surveyDAO.selectSurveyQtnList(surveyVO);
	}
	
	//설문 수정
	public void updateSurveyQtnProc(SurveyVO surveyVO) throws Exception {
		surveyDAO.updateSurveyQtnProc(surveyVO);
	}
	
	//설문답변 리스트
	public Map<String, Object> selectSurveyAsrList() throws Exception {
		Map<String, Object> rsltMap = new HashMap<String, Object>();
		
		SurveyVO surveyVO = new SurveyVO();
		List<SurveyVO> surveyQtnList = surveyDAO.selectSurveyQtnList(surveyVO);
		for(int i=0; i<surveyQtnList.size(); i++) {
			List<SurveyVO> surveyAsrList = surveyDAO.selectSurveyAsrList(surveyQtnList.get(i));
			rsltMap.put(surveyQtnList.get(i).getQtnId(), surveyAsrList);
		}
		
		rsltMap.put("surveyQtnList", surveyQtnList);
		
		return rsltMap;
	}
	
	//설문 답변수정
	public void updateSurveyAsrProc(SurveyVO surveyVO) throws Exception {
		surveyDAO.updateSurveyAsrProc(surveyVO);
	}
}
