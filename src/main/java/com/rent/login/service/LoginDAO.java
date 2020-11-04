package com.rent.login.service;

import egovframework.rte.psl.dataaccess.mapper.Mapper;

@Mapper("loginDAO")
public interface LoginDAO {
	//로그인정보
	public LoginVO selectLoginUserInfo(LoginVO loginVO) throws Exception;
}
