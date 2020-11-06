package com.rent.admin.link.service;

public interface LinkManageService {
	//링크관리
	public LinkVO selectReviewLink(LinkVO linkVO) throws Exception;
	//링크수정
	public void updateLinkProc(LinkVO linkVO) throws Exception;
}
