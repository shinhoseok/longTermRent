package com.rent.login.service;

public interface LoginService {
	//로그인정보
	public LoginVO selectLoginUserInfo(LoginVO loginVO) throws Exception;
	//아이디 찾기
	public LoginVO selectIdSearch(LoginVO loginVO) throws Exception;
	//아이디 찾기 메일발송
	public void afterIdSearch(LoginVO loginVO) throws Exception;
	//비밀번호 찾기
	public LoginVO selectUserPwSearch(LoginVO loginVO) throws Exception;
	//비밀번호 찾기 임시비밀번호 메일발송
	public void afterUserPwSearch(LoginVO loginVO) throws Exception;
}
