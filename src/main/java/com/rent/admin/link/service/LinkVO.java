package com.rent.admin.link.service;

import java.io.Serializable;

import com.rent.common.service.CommDefaultVO;

@SuppressWarnings("serial")
public class LinkVO extends CommDefaultVO implements Serializable {
	//링크아이디
	private String linkId;
	//링크주소
	private String linkAddr;
	//링크종류
	private String linkKind;
	
	public String getLinkId() {
		return linkId;
	}
	public void setLinkId(String linkId) {
		this.linkId = linkId;
	}
	public String getLinkAddr() {
		return linkAddr;
	}
	public void setLinkAddr(String linkAddr) {
		this.linkAddr = linkAddr;
	}
	public String getLinkKind() {
		return linkKind;
	}
	public void setLinkKind(String linkKind) {
		this.linkKind = linkKind;
	}
}
