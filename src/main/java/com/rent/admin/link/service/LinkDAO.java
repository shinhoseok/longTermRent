package com.rent.admin.link.service;

import egovframework.rte.psl.dataaccess.mapper.Mapper;

@Mapper("linkDAO")
public interface LinkDAO {
	//링크관리
	public LinkVO selectReviewLink(LinkVO linkVO) throws Exception;
	//링크수정
	public void updateLinkProc(LinkVO linkVO) throws Exception;
}
