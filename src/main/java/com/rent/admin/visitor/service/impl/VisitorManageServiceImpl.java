package com.rent.admin.visitor.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Service;

import com.rent.admin.visitor.service.VisitorDAO;
import com.rent.admin.visitor.service.VisitorManageService;
import com.rent.admin.visitor.service.VisitorVO;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;

@Service("visitorManageService")
public class VisitorManageServiceImpl extends EgovAbstractServiceImpl implements VisitorManageService {
	
	protected Log log = LogFactory.getLog(this.getClass());
	
	@Resource(name="visitorDAO")
	private VisitorDAO visitorDAO;
	
	//견적관리 리스트
	public Map<String, Object> selectVisitorList(VisitorVO visitorVO) throws Exception {
		
		Map<String, Object> rsltMap = new HashMap<>();
		//페이징 
		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(visitorVO.getPageIndex());
		paginationInfo.setRecordCountPerPage(visitorVO.getPageUnit());
		paginationInfo.setPageSize(visitorVO.getPageSize());
		
		visitorVO.setFirstIndex(paginationInfo.getFirstRecordIndex()); 
		visitorVO.setLastIndex(paginationInfo.getLastRecordIndex());
		visitorVO.setRecordCountPerPage(paginationInfo.getRecordCountPerPage());
		
		List<VisitorVO> selectList = null;
		
		int cnt = visitorDAO.selectVisitorListCnt(visitorVO);
		paginationInfo.setTotalRecordCount(cnt);
		
		if(cnt > 0) {
			selectList = visitorDAO.selectVisitorList(visitorVO);
		}
		
		rsltMap.put("paginationInfo", paginationInfo);
		rsltMap.put("userList", selectList);
		rsltMap.put("userListCnt", cnt);
		
		return rsltMap;
	}
}
