package com.rent.login.service;

import egovframework.rte.psl.dataaccess.mapper.Mapper;

@Mapper("loginDAO")
public interface LoginDAO {
	//로그인정보
	public LoginVO selectLoginUserInfo(LoginVO loginVO) throws Exception;
	//아이디 찾기
	public LoginVO selectIdSearch(LoginVO loginVO) throws Exception;
	//비밀번호 찾기
	public LoginVO selectUserPwSearch(LoginVO loginVO) throws Exception;
	//비밀번호 초기화
	public void updateUserPwReset(LoginVO loginVO) throws Exception;
}
