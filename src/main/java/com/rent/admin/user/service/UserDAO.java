package com.rent.admin.user.service;

import java.util.List;

import egovframework.rte.psl.dataaccess.mapper.Mapper;

@Mapper("userDAO")
public interface UserDAO {
	
	//사용자 목록 카운트
	Integer selectUserListCnt(UserVO userVO) throws Exception;
	//사용자 목록
	List<UserVO> selectUserList(UserVO userVO) throws Exception;
	//사용자 등록
	void insertUserProc(UserVO userVO) throws Exception;
	//사용자 아이디,이메일 중복체크
	UserVO selectUserIdChk(UserVO userVO) throws Exception;
	//사용자 상세
	UserVO selectUserDetail(UserVO userVO) throws Exception;
	//사용자 비밀번호 초기화
	void updateUserPwReset(UserVO userVO) throws Exception;
	//사용자 이메일 중복체크
	Integer selectUserEmailChk(UserVO userVO) throws Exception;
	//사용자 수정
	void updateUserProc(UserVO userVO) throws Exception;
}
