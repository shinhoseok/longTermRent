package com.rent.home.service;

import java.util.List;
import java.util.Map;

import com.rent.admin.survey.service.SurveyVO;
import com.rent.admin.visitor.service.VisitorVO;

public interface HomeService {
	
	public Map<String, Object> main(SurveyVO surveyVO) throws Exception;
	
	public List<VisitorVO> selectVisitorDetail(VisitorVO visitorVO) throws Exception;
	
	public void insertVisitorProc(VisitorVO visitorVO) throws Exception;
}
