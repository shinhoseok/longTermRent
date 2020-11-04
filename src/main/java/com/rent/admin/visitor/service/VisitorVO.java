package com.rent.admin.visitor.service;

import java.io.Serializable;

import com.rent.common.service.CommDefaultVO;

@SuppressWarnings("serial")
public class VisitorVO extends CommDefaultVO implements Serializable {
	//방문자ID
	private String visitorId;
	//접속경로
	private String accessPath;
	//방문자이름
	private String visitorNm;
	//관심차종
	private String itrstdCarTy;
	//전화번호
	private String telNo;
	
	public String getVisitorId() {
		return visitorId;
	}
	public void setVisitorId(String visitorId) {
		this.visitorId = visitorId;
	}
	public String getAccessPath() {
		return accessPath;
	}
	public void setAccessPath(String accessPath) {
		this.accessPath = accessPath;
	}
	public String getVisitorNm() {
		return visitorNm;
	}
	public void setVisitorNm(String visitorNm) {
		this.visitorNm = visitorNm;
	}
	public String getItrstdCarTy() {
		return itrstdCarTy;
	}
	public void setItrstdCarTy(String itrstdCarTy) {
		this.itrstdCarTy = itrstdCarTy;
	}
	public String getTelNo() {
		return telNo;
	}
	public void setTelNo(String telNo) {
		this.telNo = telNo;
	}
}
