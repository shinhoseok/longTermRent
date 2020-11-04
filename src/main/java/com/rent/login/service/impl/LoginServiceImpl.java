package com.rent.login.service.impl;

import javax.annotation.Resource;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Service;

import com.rent.login.service.LoginDAO;
import com.rent.login.service.LoginService;
import com.rent.login.service.LoginVO;

@Service("loginService")
public class LoginServiceImpl implements LoginService {
	protected Log log = LogFactory.getLog(this.getClass());
	
	@Resource(name="loginDAO")
	private LoginDAO loginDao;
	
	//로그인정보
	public LoginVO selectLoginUserInfo(LoginVO loginVO) throws Exception {
		return loginDao.selectLoginUserInfo(loginVO);
	}
}
