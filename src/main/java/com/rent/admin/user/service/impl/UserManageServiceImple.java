package com.rent.admin.user.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Service;

import com.rent.admin.user.service.UserDAO;
import com.rent.admin.user.service.UserManageService;
import com.rent.admin.user.service.UserVO;
import com.rent.common.StringUtil;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import egovframework.rte.fdl.idgnr.EgovIdGnrService;
import egovframework.rte.fdl.property.EgovPropertyService;
import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;

@Service("userManageService")
public class UserManageServiceImple extends EgovAbstractServiceImpl implements UserManageService {
	
	protected Log log = LogFactory.getLog(this.getClass());
	
	@Resource(name="userDAO")
	private UserDAO userDAO;
	
	@Resource(name="mailSender")
	private MailSender mailSender;
	
	@Resource(name = "propertiesService")
	private EgovPropertyService propertiesService;
	
	@Resource(name = "userIdGnrService")
	private EgovIdGnrService userIdGnrService;
	
	//사용자 리스트
	public Map<String, Object> selectUserList(UserVO userVO) throws Exception {
		
		Map<String, Object> rsltMap = new HashMap<>();
		//페이징 
		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(userVO.getPageIndex());
		paginationInfo.setRecordCountPerPage(userVO.getPageUnit());
		paginationInfo.setPageSize(userVO.getPageSize());
		
		userVO.setFirstIndex(paginationInfo.getFirstRecordIndex()+1); 
		userVO.setLastIndex(paginationInfo.getLastRecordIndex());
		userVO.setRecordCountPerPage(paginationInfo.getRecordCountPerPage());
		
		List<UserVO> selectList = null;
		
		//총 카운트 
		int cnt = userDAO.selectUserListCnt(userVO);
		paginationInfo.setTotalRecordCount(cnt);
		
		if(cnt > 0){
			//리스트
			selectList = userDAO.selectUserList(userVO);
		}
		
		rsltMap.put("paginationInfo", paginationInfo);
		rsltMap.put("userList", selectList);
		rsltMap.put("userListCnt", cnt);
		
		return rsltMap;
	}
	
	//사용자 아이디, 이메일 중복체크
	public String selectUserIdChk(UserVO userVO) throws Exception {
		UserVO resultVO = userDAO.selectUserIdChk(userVO);
		String message = "N";
		if(resultVO != null) {
			if(userVO.getUserId().equals(resultVO.getUserId())) {
				message = "userId";
			} else {
				if(userVO.getEmailAddr().equals(resultVO.getEmailAddr())) {
					message = "emailAddr";
				}
			}
		}
		return message;
	}
	
	//사용자 등록
	public void insertUserProc(UserVO userVO) throws Exception {
		userVO.setUserSeq(userIdGnrService.getNextStringId());
		userDAO.insertUserProc(userVO);
	}
		
	//사용자 상세
	public UserVO selectUserDetail(UserVO userVO) throws Exception {
		return userDAO.selectUserDetail(userVO);
	}
	
	//사용자 패스워드 초기화
	public void updateUserPwReset(UserVO userVO) throws Exception {
		String tmpPwd = StringUtil.getRandomPassword();
		userVO.setUserPw(tmpPwd);
		userDAO.updateUserPwReset(userVO);
		
		SimpleMailMessage mailMessage = new SimpleMailMessage();
		mailMessage.setTo(userVO.getEmailAddr());
		mailMessage.setFrom(propertiesService.getString("Naver.Email"));
		mailMessage.setSubject(propertiesService.getString("Mail.TmpPwdTitle"));
		String content = propertiesService.getString("Mail.TmpPwdContent");
		content = content.replaceAll("userPw", tmpPwd);
		mailMessage.setText(content);
		this.mailSender.send(mailMessage);
	}
	
	//사용자 이메일 중복체크
	public Integer selectUserEmailChk(UserVO userVO) throws Exception {
		return userDAO.selectUserEmailChk(userVO);
	}
	
	//사용자 수정
	public void updateUserProc(UserVO userVO) throws Exception {
		userDAO.updateUserProc(userVO);
	}
}
