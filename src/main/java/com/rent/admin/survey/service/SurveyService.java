package com.rent.admin.survey.service;

import java.util.List;

public interface SurveyService {
	//설문질문 리스트
	public List<SurveyVO> selectSurveyQtnList(SurveyVO surveyVO) throws Exception;
	//설문 수정
	public void updateSurveyQtnProc(SurveyVO surveyVO) throws Exception;
}
