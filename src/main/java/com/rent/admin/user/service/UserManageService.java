package com.rent.admin.user.service;

import java.util.Map;

public interface UserManageService {
	//사용자 목록
	public Map<String, Object> selectUserList(UserVO userVO) throws Exception;
	//사용자 아이디, 이메일 중복체크
	public String selectUserIdChk(UserVO userVO) throws Exception;
	//사용자 등록
	public void insertUserProc(UserVO userVO) throws Exception;
	//사용자 상세
	public UserVO selectUserDetail(UserVO userVO) throws Exception;
	//사용자 비밀번호 초기화
	public void updateUserPwReset(UserVO userVO) throws Exception;
	//사용자 이메일 중복체크
	public Integer selectUserEmailChk(UserVO userVO) throws Exception;
	//사용자 수정
	public void updateUserProc(UserVO userVO) throws Exception;
}
