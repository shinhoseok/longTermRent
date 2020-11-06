package com.rent.admin.survey.service;

import java.util.List;

import egovframework.rte.psl.dataaccess.mapper.Mapper;

@Mapper("surveyDAO")
public interface SurveyDAO {
	//설문 질문 목록
	List<SurveyVO> selectSurveyQtnList(SurveyVO surveyVO) throws Exception;
	//설문 질문 수정
	void updateSurveyQtnProc(SurveyVO surveyVO) throws Exception;
	//설문 답변 목록
	List<SurveyVO> selectSurveyAsrList(SurveyVO surveyVO) throws Exception;
	//설문 답변수정
	void updateSurveyAsrProc(SurveyVO surveyVO) throws Exception;
}
