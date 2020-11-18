package com.rent.home.service.impl;

import java.time.LocalDateTime;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Service;

import com.rent.admin.survey.service.SurveyDAO;
import com.rent.admin.survey.service.SurveyVO;
import com.rent.admin.visitor.service.VisitorDAO;
import com.rent.admin.visitor.service.VisitorVO;
import com.rent.common.StringUtil;
import com.rent.home.service.HomeService;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import egovframework.rte.fdl.idgnr.EgovIdGnrService;
import egovframework.rte.fdl.property.EgovPropertyService;

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
	
	@Resource(name="mailSender")
	private MailSender mailSender;
	
	@Resource(name = "propertiesService")
	private EgovPropertyService propertiesService;
	
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
		
		LocalDateTime today = LocalDateTime.now();
		String accessPath = "PC";
		if(visitorVO.getAccessPath().equals("M")) {
			accessPath = "모바일";
		}
		String content = propertiesService.getString("Mail.SurveyCompletContent");
		String mailTitle = propertiesService.getString("Mail.SurveyCompletTitle");
		mailTitle = mailTitle.replaceAll("visitorNm", visitorVO.getVisitorNm());
		content = content.replaceAll("visitorNm", visitorVO.getVisitorNm());
		content = content.replaceAll("today", String.valueOf(today));
		content = content.replaceAll("accessPath", accessPath);
		String asrContents = "";
		if(!StringUtil.isEmpty(visitorVO.getQtnId())) {
			String[] qtnIdArr = visitorVO.getQtnId().split(",");
			String[] asrIdArr = visitorVO.getAsrId().split(",");
			int i = 0;
			for(String qtnId : qtnIdArr) {
				visitorVO.setMppgId(visitorMppIdGnrService.getNextStringId());
				visitorVO.setQtnId(qtnId);
				visitorVO.setAsrId(asrIdArr[i]);
				visitorDAO.insertVisitorMppgProc(visitorVO);
				
				asrContents = surveyDAO.selectSurveyAsrDetail(asrIdArr[i]);
				if(StringUtil.isEmpty(asrContents)) {
					asrContents = "-";
				}
				content = content.replaceAll("asrContents_"+i, asrContents);
				i++;
			}
		}
		
		SimpleMailMessage mailMessage = new SimpleMailMessage();
		mailMessage.setTo(propertiesService.getString("Naver.Email"));
		mailMessage.setFrom(propertiesService.getString("Naver.Email"));
		mailMessage.setSubject(mailTitle);
		
		content = content.replaceAll("itrstdCarTy", visitorVO.getItrstdCarTy());
		content = content.replaceAll("telNo", visitorVO.getTelNo());
		content = content.replaceAll("overlapCnt", String.valueOf(visitorVO.getOverlapCnt()));
		mailMessage.setText(content);
		this.mailSender.send(mailMessage);
		
	}
	
	public void insertSkipVisitorProc(VisitorVO visitorVO) throws Exception {
		visitorVO.setVisitorId(visitorIdGnrService.getNextStringId());
		visitorDAO.insertVisitorProc(visitorVO);
		
		SimpleMailMessage mailMessage = new SimpleMailMessage();
		mailMessage.setTo(propertiesService.getString("Naver.Email"));
		mailMessage.setFrom(propertiesService.getString("Naver.Email"));
		LocalDateTime today = LocalDateTime.now();
		String accessPath = "PC";
		if(visitorVO.getAccessPath().equals("M")) {
			accessPath = "모바일";
		}
		String content = propertiesService.getString("Mail.SurveyCompletContent");
		String mailTitle = propertiesService.getString("Mail.SurveyCompletTitle");
		mailTitle = mailTitle.replaceAll("visitorNm", visitorVO.getVisitorNm());
		content = content.replaceAll("visitorNm", visitorVO.getVisitorNm());
		content = content.replaceAll("today", String.valueOf(today));
		content = content.replaceAll("accessPath", accessPath);
		
		mailMessage.setSubject(mailTitle);
		for(int i=0; i<3; i++) {
			content = content.replaceAll("asrContents_"+i, "-");
		}
		
		content = content.replaceAll("itrstdCarTy", visitorVO.getItrstdCarTy());
		content = content.replaceAll("telNo", visitorVO.getTelNo());
		content = content.replaceAll("overlapCnt", String.valueOf(visitorVO.getOverlapCnt()));
		mailMessage.setText(content);
		this.mailSender.send(mailMessage);
	}
}
