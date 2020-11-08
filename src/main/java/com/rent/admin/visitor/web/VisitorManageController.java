package com.rent.admin.visitor.web;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.rent.admin.visitor.service.VisitorManageService;
import com.rent.admin.visitor.service.VisitorVO;

@Controller
public class VisitorManageController {
	
	protected Log log = LogFactory.getLog(this.getClass());
	
	@Resource(name = "visitorManageService")
	private VisitorManageService visitorManageService;
	
	@RequestMapping(value = "/vtmgr/z/selectVisitorList.do")
	public String selectVistorList(@ModelAttribute("visitorVO") VisitorVO visitorVO, ModelMap model) throws Exception {
		
		Map<String, Object> rsltMap = visitorManageService.selectVisitorList(visitorVO);
		model.addAttribute("rslt", rsltMap);
		
		model.addAttribute("alevel", "1");
		model.addAttribute("blevel", "1");
		model.addAttribute("clevel", "1");
		
		return "/admin/visitor/visitorList";
	}
	
	@RequestMapping(value = "/vtmgr/z/selectVisitorListExcelDownload.do")
	public String selectVisitorListExcelDownload(@ModelAttribute("visitorVO") VisitorVO visitorVO, ModelMap model) throws Exception {
		
		List<VisitorVO> selectList = visitorManageService.selectVisitorListExcelDownload(visitorVO);
		
		model.addAttribute("visitorList", selectList);
		model.addAttribute("templateFileName"	, "visitorListExcelDownload.xls");
		model.addAttribute("destFileName"		, "견적관리목록");
		
		return "excelView";
	}
}
