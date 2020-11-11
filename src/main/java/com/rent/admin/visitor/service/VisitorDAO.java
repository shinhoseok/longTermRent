package com.rent.admin.visitor.service;

import java.util.List;

import egovframework.rte.psl.dataaccess.mapper.Mapper;

@Mapper("visitorDAO")
public interface VisitorDAO {
	//견적관리 목록 카운트
	Integer selectVisitorListCnt(VisitorVO visitorVO) throws Exception;
	//견적관리 목록
	List<VisitorVO> selectVisitorList(VisitorVO visitorVO) throws Exception;
	
	public List<VisitorVO> selectVisitorDetail(VisitorVO visitorVO) throws Exception;
	
	public void insertVisitorProc(VisitorVO visitorVO) throws Exception;
	
	public void insertVisitorMppgProc(VisitorVO visitorVO) throws Exception;
}
