package com.rent.admin.mypage.service.impl;

import javax.annotation.Resource;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Service;

import com.rent.admin.mypage.service.MyPageService;
import com.rent.admin.user.service.UserDAO;
import com.rent.admin.user.service.UserVO;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;

@Service("myPageService")
public class MyPageServiceImpl extends EgovAbstractServiceImpl implements MyPageService {
	
	protected Log log = LogFactory.getLog(this.getClass());
	
	@Resource(name="userDAO")
	private UserDAO userDAO;
	
	//사용자 패스워드 초기화
	public void updateUserPwReset(UserVO userVO) throws Exception {
		userDAO.updateUserPwReset(userVO);
	}
}
