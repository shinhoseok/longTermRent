package com.rent.home.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Service;

import com.rent.admin.survey.service.SurveyDAO;
import com.rent.admin.survey.service.SurveyVO;
import com.rent.admin.visitor.service.VisitorDAO;
import com.rent.admin.visitor.service.VisitorVO;
import com.rent.common.StringUtil;
import com.rent.home.service.HomeService;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import egovframework.rte.fdl.idgnr.EgovIdGnrService;

@Service("homeService")
public class HomeServiceImpl extends EgovAbstractServiceImpl implements HomeService {

	protected Log log = LogFactory.getLog(this.getClass());
	
	@Resource(name="surveyDAO")
	private SurveyDAO surveyDAO;
	
	@Resource(name="visitorDAO")
	private VisitorDAO visitorDAO;
	
	@Resource(name = "visitorIdGnrService")
	private EgovIdGnrService visitorIdGnrService;
	
	@Resource(name = "visitorMppIdGnrService")
	private EgovIdGnrService visitorMppIdGnrService;
	
	public Map<String, Object> main(SurveyVO surveyVO) throws Exception {
		
		Map<String, Object> rsltMap = new HashMap<String, Object>();
		
		SurveyVO questionVO = surveyDAO.selectSurveyQtnDetail(surveyVO);
		List<SurveyVO> answerList = surveyDAO.selectSurveyAsrList(surveyVO);
		
		rsltMap.put("questionVO", questionVO);
		rsltMap.put("answerList", answerList);
		
		return rsltMap;
	}
	
	public List<VisitorVO> selectVisitorDetail(VisitorVO visitorVO) throws Exception {
		return visitorDAO.selectVisitorDetail(visitorVO);
	}
	
	public void insertVisitorProc(VisitorVO visitorVO) throws Exception {
		visitorVO.setVisitorId(visitorIdGnrService.getNextStringId());
		visitorDAO.insertVisitorProc(visitorVO);
		
		if(!StringUtil.isEmpty(visitorVO.getQtnId())) {
			String[] qtnIdArr = visitorVO.getQtnId().split(",");
			String[] asrIdArr = visitorVO.getAsrId().split(",");
			int i = 0;
			for(String qtnId : qtnIdArr) {
				visitorVO.setMppgId(visitorMppIdGnrService.getNextStringId());
				visitorVO.setQtnId(qtnId);
				visitorVO.setAsrId(asrIdArr[i]);
				visitorDAO.insertVisitorMppgProc(visitorVO);
				i++;
			}
		}
	}
}
