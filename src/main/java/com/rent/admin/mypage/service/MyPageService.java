package com.rent.admin.mypage.service;

import com.rent.admin.user.service.UserVO;

public interface MyPageService {
	//사용자 패스워드 초기화
	public void updateUserPwReset(UserVO userVO) throws Exception;
}
