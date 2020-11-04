<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/rent/common/include.jsp"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko" lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<title>BASIC administrator</title>
<!--공통css-->
<link rel="stylesheet" type="text/css" href="${cssPath}/common.css">
<!--현업 main page-->
<link rel="stylesheet" type="text/css" href="${cssPath}/worksite.css">
<!--현업 login-->
<link rel="stylesheet" type="text/css" href="${cssPath}/loginstyle.css">
<!-- 스크립트 선언 -->
<script type="text/javascript" src="${scriptPath}/jquery/jquery-1.12.3.min.js"></script>
</head>
<body class="backcolor">
	<div class="login_wrap">
		<div class="loginBox">
			<h2>
				<img src="${imagePath}/logo.png" width="143" height="19" />
			</h2>
			<p class="txt_login">
				<span>Log in to Basic Administrator Account</span>
			</p>
			<form:form commandName="loginVO" id="loginVO" name="loginVO" method="post" action="${basePath}/login/z/afterLogin.do">
				<dl class="box_area">
					<dt>
						<a href="javascript:void(0);" onclick="javascript:fn_login();"><img src="${imagePath}/btn_login.jpg" width="97" height="78" /></a>
					</dt>
					<dd class="namebox">ID</dd>
					<dd class="boxin">
						<form:input path="userId" id="userId" placeholder="아이디" title="아이디를 입력해주세요." maxlength="100" />
					</dd>
					<dd class="namebox">PASSWORD</dd>
					<dd class="boxin">
						<form:password id="userPw" path="userPw" onkeypress="if(event.keyCode==13){fn_login();} " placeholder="비밀번호" title="비밀번호를 입력해주세요." maxlength="21" />
					</dd>
					<dd class="boxin" style="margin-top: 20px;">
						<span style="cursor: pointer;" onclick="javascript:fn_selectIdSearch();">아이디 찾기</span>&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;
						<span style="cursor: pointer;" onclick="javascript:fn_selectPwSearch();">비밀번호 찾기</span>
					</dd>
				</dl>
			</form:form>
		</div>
		
	</div>
	<script type="text/javascript" src="${scriptPath}/validation/validation.js"></script>
	<script type="text/javascript">
	var fn_login = function() {
		if (!TypeChecker.required($("#userId").val())) {
			alert("'아이디'는  "+ TypeChecker.requiredText);
			$("#userId").focus();
			return;
		}
		if (!TypeChecker.required($("#userPw").val())) {
			alert("'비밀번호'는  "+ TypeChecker.requiredText);
			$("#userPw").focus();
			return;
		}
		$("#loginVO").submit();
	};
	
	var fn_selectIdSearch = function() {
		location.href="${basePath}/login/z/selectIdSearch.do";
	};
	
	var fn_selectPwSearch = function() {
		location.href="${basePath}/login/z/selectPwdSearch.do";
	};
	</script>
</body>
</html>
