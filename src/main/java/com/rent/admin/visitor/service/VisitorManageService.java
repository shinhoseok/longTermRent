package com.rent.admin.visitor.service;

import java.util.List;
import java.util.Map;

public interface VisitorManageService {
	//견적관리 리스트
	public Map<String, Object> selectVisitorList(VisitorVO visitorVO) throws Exception;
	//견적관리 엑셀다운로드
	public List<VisitorVO> selectVisitorListExcelDownload(VisitorVO visitorVO) throws Exception;
}
