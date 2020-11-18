<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/rent/ucommon/include.jsp"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko" lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1, minimum-scale=1">
<meta content="yes" name="apple-mobile-web-app-capable" />
<meta content="minimum-scale=1.0, width=device-width, maximum-scale=1, user-scalable=no" name="viewport" />
<title>바른청년 장기렌트</title>
<!--공통css-->
<link rel="stylesheet" type="text/css" href="${cssPath}/landing.css">
<!-- 스크립트 선언 -->
<script type="text/javascript" src="${scriptPath}/jquery/jquery-1.12.3.min.js"></script>
</head>
<body>
<section>
	<article>
		<div class="logo_box">
			<h1 style="cursor: pointer;" onclick="location.href='${basePath}/home/a/main.do'">바른청년</h1>
			<h2>장기렌트 영업기밀!</h2>
			<p>
				설문에 참여하시고 1%를 위한<br> 특별할인을 받아보세요.
			</p>
		</div>
		<div class="text_box">
			<img src="${imagePath}/q6.png" class="img_q1">
			<p class="text_q text_q1_mo">
				바른청년 렌터카 고객님의<br> 전화번호가 어떻게 되세요?
			</p>
			<div class="answer_box">
				<input type="text" id="param" placeholder="-빼고 휴대전화를 입력해주세요" onfocus="checker(this, 11 , 'nbytes_param');" onblur="stopchecker();"></input>
				<a href="javascript:void(0);" onclick="fn_insertVisitorProc();"><p class="btn_ok">확인</p> </a>
			</div>
			<div class="check_info check_info_mo">
				<a href="javascript:void(0);" onclick="javascript:fn_step7Check();" class="btn_check_info" id="step7Check"> </a>
				<p style="cursor: pointer;" onclick="location.href='${basePath}/home/a/privacy.do'">개인정보 수집 및 이용동의 (필수)</p>
			</div>
			<a href="javascript:void(0);" onclick="javascript:fn_selectLanding();" class="btn_close_mo">건너뛰기 > </a>
		</div>
		<a href="javascript:void(0);" onclick="javascript:fn_selectLanding();" class="btn_close"></a>
	</article>
</section>
<!--step 표시-->
<div class="step_bar">
	<div class="step step6">
		<p>STEP 6</p>
	</div>
</div>
<form:form commandName="visitorVO" action="${basePath}/home/a/insertVisitorProc.do" name="visitorVO" id="visitorVO" method="post">
	<form:hidden path="qtnId" id="qtnId"/>
	<form:hidden path="asrId" id="asrId"/>
	<form:hidden path="itrstdCarTy" id="itrstdCarTy"/>
	<form:hidden path="visitorNm" id="visitorNm"/>
	<form:hidden path="telNo" id="telNo"/>
	<form:hidden path="accessPath" id="accessPath"/>
	<form:hidden path="overlapCnt" id="overlapCnt"/>
</form:form>
<script type="text/javascript">
$(function() {
	$('#step7Check').css('background-image', 'url("")');
	alert($("#qtnId").val());
});
</script>
</body>
</html>