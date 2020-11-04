package com.rent.admin.user.service;

import java.io.Serializable;

import com.rent.common.service.CommDefaultVO;

@SuppressWarnings("serial")
public class UserVO extends CommDefaultVO implements Serializable {
	
	/** 사용자 비밀번호 */
	private String userPw;
	/** 이메일 주소 */
	private String emailAddr;
	
	public String getUserPw() {
		return userPw;
	}
	public void setUserPw(String userPw) {
		this.userPw = userPw;
	}
	public String getEmailAddr() {
		return emailAddr;
	}
	public void setEmailAddr(String emailAddr) {
		this.emailAddr = emailAddr;
	}
	
}
