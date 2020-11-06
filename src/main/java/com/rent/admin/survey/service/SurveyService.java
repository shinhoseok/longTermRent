package com.rent.admin.survey.service;

import java.util.List;
import java.util.Map;

public interface SurveyService {
	//설문질문 리스트
	public List<SurveyVO> selectSurveyQtnList(SurveyVO surveyVO) throws Exception;
	//설문 수정
	public void updateSurveyQtnProc(SurveyVO surveyVO) throws Exception;
	//설문답변 리스트
	public Map<String, Object> selectSurveyAsrList() throws Exception;
	//설문 답변수정
	public void updateSurveyAsrProc(SurveyVO surveyVO) throws Exception;
}
