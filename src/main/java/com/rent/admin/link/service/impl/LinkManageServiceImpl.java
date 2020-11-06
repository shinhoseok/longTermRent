package com.rent.admin.link.service.impl;

import javax.annotation.Resource;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Service;

import com.rent.admin.link.service.LinkDAO;
import com.rent.admin.link.service.LinkManageService;
import com.rent.admin.link.service.LinkVO;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;

@Service("linkManageService")
public class LinkManageServiceImpl extends EgovAbstractServiceImpl implements LinkManageService {
	
	protected Log log = LogFactory.getLog(this.getClass());
	
	@Resource(name="linkDAO")
	private LinkDAO linkDAO;
	
	//링크관리
	public LinkVO selectReviewLink(LinkVO linkVO) throws Exception {
		return linkDAO.selectReviewLink(linkVO);
	}
	
	//링크수정
	public void updateLinkProc(LinkVO linkVO) throws Exception {
		linkDAO.updateLinkProc(linkVO);
	}
}
