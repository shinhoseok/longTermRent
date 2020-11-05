package com.rent.login.service.impl;

import javax.annotation.Resource;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Service;

import com.rent.common.StringUtil;
import com.rent.login.service.LoginDAO;
import com.rent.login.service.LoginService;
import com.rent.login.service.LoginVO;

import egovframework.rte.fdl.property.EgovPropertyService;

@Service("loginService")
public class LoginServiceImpl implements LoginService {
	protected Log log = LogFactory.getLog(this.getClass());
	
	@Resource(name="loginDAO")
	private LoginDAO loginDao;
	
	@Resource(name="mailSender")
	private MailSender mailSender;
	
	@Resource(name = "propertiesService")
	private EgovPropertyService propertiesService;
	
	//로그인정보
	public LoginVO selectLoginUserInfo(LoginVO loginVO) throws Exception {
		return loginDao.selectLoginUserInfo(loginVO);
	}
	
	//아이디 찾기
	public LoginVO selectIdSearch(LoginVO loginVO) throws Exception {
		return loginDao.selectIdSearch(loginVO);
	}
	
	//아이디 찾기 메일발송
	public void afterIdSearch(LoginVO loginVO) throws Exception {
		
		SimpleMailMessage mailMessage = new SimpleMailMessage();
		mailMessage.setTo(loginVO.getEmailAddr());
		mailMessage.setFrom(propertiesService.getString("Naver.Email"));
		mailMessage.setSubject(propertiesService.getString("Mail.IdSearchTitle"));
		String content = propertiesService.getString("Mail.IdSearchContent");
		content = content.replaceAll("userId", loginVO.getUserId());
		mailMessage.setText(content);
		this.mailSender.send(mailMessage);
		
	}
	
	//비밀번호 찾기
	public LoginVO selectUserPwSearch(LoginVO loginVO) throws Exception {
		return loginDao.selectUserPwSearch(loginVO);
	}
	
	//비밀번호 찾기 임시비밀번호 메일발송
	public void afterUserPwSearch(LoginVO loginVO) throws Exception {
		
		String tmpPwd = StringUtil.getRandomPassword();
		loginVO.setUserPw(tmpPwd);
		loginDao.updateUserPwReset(loginVO);
		
		SimpleMailMessage mailMessage = new SimpleMailMessage();
		log.debug("LoginServiceImpl.afterUserPwSearch Email >>>>>> "+loginVO.getEmailAddr());
		mailMessage.setTo(loginVO.getEmailAddr());
		mailMessage.setFrom(propertiesService.getString("Naver.Email"));
		mailMessage.setSubject(propertiesService.getString("Mail.TmpPwdTitle"));
		String content = propertiesService.getString("Mail.TmpPwdContent");
		content = content.replaceAll("userPw", tmpPwd);
		mailMessage.setText(content);
		this.mailSender.send(mailMessage);
		
	}
}
