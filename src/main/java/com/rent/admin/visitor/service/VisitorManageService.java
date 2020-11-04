package com.rent.admin.visitor.service;

import java.util.Map;

public interface VisitorManageService {
	//견적관리 리스트
	public Map<String, Object> selectVisitorList(VisitorVO visitorVO) throws Exception;
}
