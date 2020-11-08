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
	//중복접속 카운트
	private int overlapCnt;
	//설문답변1~3
	private String answer1;
	private String answer2;
	private String answer3;
	
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
	public int getOverlapCnt() {
		return overlapCnt;
	}
	public void setOverlapCnt(int overlapCnt) {
		this.overlapCnt = overlapCnt;
	}
	public String getAnswer1() {
		return answer1;
	}
	public void setAnswer1(String answer1) {
		this.answer1 = answer1;
	}
	public String getAnswer2() {
		return answer2;
	}
	public void setAnswer2(String answer2) {
		this.answer2 = answer2;
	}
	public String getAnswer3() {
		return answer3;
	}
	public void setAnswer3(String answer3) {
		this.answer3 = answer3;
	}
}
