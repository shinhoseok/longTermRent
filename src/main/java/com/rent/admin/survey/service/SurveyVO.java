package com.rent.admin.survey.service;

import java.io.Serializable;

import com.rent.common.service.CommDefaultVO;

@SuppressWarnings("serial")
public class SurveyVO extends CommDefaultVO implements Serializable {
	//질문아이디
	private String qtnId;
	//질문내용
	private String qtnContents;
	
	public String getQtnId() {
		return qtnId;
	}
	public void setQtnId(String qtnId) {
		this.qtnId = qtnId;
	}
	public String getQtnContents() {
		return qtnContents;
	}
	public void setQtnContents(String qtnContents) {
		this.qtnContents = qtnContents;
	}
}
