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
<!-- 스크립트 선언 -->
<script type="text/javascript" src="${scriptPath}/jquery/jquery-1.12.3.min.js"></script>
</head>
<body>
	<div class="header">
		<jsp:include page="/WEB-INF/jsp/rent/common/top.jsp" flush="false" />
	</div>
	<!--header End-->
	<div class="wrap">
		<div class="container">
			<div class="sub_leftMenu">
				<%@ include file="/WEB-INF/jsp/rent/common/leftMenu.jsp"%>
			</div>
			<div class="contents">
				<p class="contentTitle">사용자 등록</p>
				<!-- sub_path Start -->
				<p class="sub_path">
					<img src="${imagePath }/ico_home.png" width="10" height="9" />&nbsp;〉&nbsp;사용자관리&nbsp;〉&nbsp;사용자관리
				</p>
				<!-- sub_path End -->
				<h4 class="contentTitle_h4">회원 등록</h4>
				<form:form commandName="userVO" name="userVO" id="userVO" method="post" action="${basePath}/usermgr/z/insertUserProc.do">
					<div class="tableLayer">
						<table class="table">
							<caption></caption>
							<colgroup>
								<col width="150px">
								<col width="340px">
								<col width="150px">
								<col width="340px">
							</colgroup>
							<tbody class="line">
								<tr>
									<th class="bullet_orange">아이디</th>
									<td>
										<div class="commonSearch_wrap">
											<label class="blind" for=" ">d</label> 
											<form:input path="userId" id="userId" style="width: 230px;" onfocus="checker(this, 20 , 'nbytes_userId');" onblur="stopchecker();"/>
											&nbsp;[<span id="nbytes_userId" class="color_red">0</span>/20]byte
										</div>
									</td>
									<th class="bullet_orange">이름</th>
									<td>
										<div class="commonSearch_wrap">
											<label class="blind" for=" ">d</label> 
											<form:input path="userNm" id="userNm" style="width: 230px;" onfocus="checker(this, 50 , 'nbytes_userNm');" onblur="stopchecker();"/>
											&nbsp;[<span id="nbytes_userNm" class="color_red">0</span>/50]byte
										</div>
									</td>
								</tr>
								<tr>
									<th class="bullet_orange">비밀번호</th>
									<td>
										<div class="commonSearch_wrap">
											<label class="blind" for=" ">d</label> 
											<form:password path="userPw" id="userPw" style="width: 230px; height:28px; border: 1px solid #D4D4D4;" onfocus="checker(this, 20 , 'nbytes_userPw');" onblur="stopchecker();"/>
											&nbsp;[<span id="nbytes_userPw" class="color_red">0</span>/20]byte
										</div>
									</td>
									<th class="bullet_orange">비밀번호 확인</th>
									<td>
										<div class="commonSearch_wrap">
											<label class="blind" for=" ">d</label> 
											<input type="password" id="user_pw_confirm" style="width: 230px; height:28px; border: 1px solid #D4D4D4;" onfocus="checker(this, 20 , 'nbytes_user_pw_confirm');" onblur="stopchecker();"/>
											&nbsp;[<span id="nbytes_user_pw_confirm" class="color_red">0</span>/20]byte 
										</div>
									</td>
								</tr>
								<tr>
									<th class="bullet_orange">E-mail</th>
									<td>
										<div class="commonSearch_wrap">
											<label class="blind" for=" ">d</label> 
											<form:input path="emailAddr" id="emailAddr" style="width: 230px;" onfocus="checker(this, 100 , 'nbytes_emailAddr');" onblur="stopchecker();"/>
											&nbsp;[<span id="nbytes_emailAddr" class="color_red">0</span>/100]byte 
										</div>
									</td>
									<th class="bullet_orange">사용여부</th>
									<td>
										<form:radiobutton path="delYn" id="radio01" checked="checked" value="N"/> <label for="radio01" class="mr15">O</label>
										<form:radiobutton path="delYn" id="radio02" value="Y"/> <label for="radio02">X</label>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				</form:form>
				<div class="T_btnLayer fr">
					<a href="javascript:void(0);" onclick="fn_insertUserProc();"><button type="button" class="blueBtn L">등록</button></a>
					<a href="${basePath}/usermgr/z/selectUserList.do"><button type="button" class="blueBtn L">취소</button></a>
				</div>
			</div>
		</div>
		<!--container End-->
	</div>
	<!--wrap End-->
	<!-- footer Start-->
	<%@ include file="/WEB-INF/jsp/rent/common/footer.jsp"%>
	<!-- footer End -->

	<script type="text/javascript" src="${scriptPath}/validation/validation.js"></script>
	<script type="text/javascript" src="${scriptPath}/common.js"></script>
	<script type="text/javascript">
	$(function() {
	});
	
	//저장
	var fn_insertUserProc = function(){
		if (!TypeChecker.required($("#userId").val())) {
			alert("'아이디'는  "+ TypeChecker.requiredText);
			$("#userId").focus();
			return;
		}
		if (!TypeChecker.usrid($("#userVO #userId").val())) {
			alert("'아이디'는' "+TypeChecker.usridText);
			$("#userVO #userId").focus();
			return;
		}
		if (!TypeChecker.required($("#userNm").val())) {
			alert("'이름'은  "+ TypeChecker.requiredText);
			$("#userNm").focus();
			return;
		}
		if (!TypeChecker.korEng($("#userVO #userNm").val())) {
			alert("'이름'는' "+TypeChecker.korEngText);
			$("#userVO #userNm").focus();
			return;
		}
		if (!TypeChecker.required($("#userPw").val())) {
			alert("'비밀번호'는  "+ TypeChecker.requiredText);
			$("#userPw").focus();
			return;
		}
		if (!TypeChecker.required($("#user_pw_confirm").val())) {
			alert("'비밀번호 확인'은  "+ TypeChecker.requiredText);
			$("#user_pw_confirm").focus();
			return;
		}
		//패스워드조합3가지
		if(!fn_checkPass("userPw")) {
			return;
		}
		if($("#userVO #userPw").val() != $("#userVO #user_pw_confirm").val()) {
			alert("패스워드를 확인해주세요");
			$("#userVO #userPw").focus();
			return;
		}
		if (!TypeChecker.required($("#emailAddr").val())) {
			alert("'이메일'은  "+ TypeChecker.requiredText);
			$("#emailAddr").focus();
			return;
		}
		if (!TypeChecker.email($("#userVO #emailAddr").val())) {
			alert("이메일은 "+TypeChecker.emailText);
			$("#userVO #emailAddr").focus();
			return;
		}
		//중복체크
		$.ajax({ 	
			url: "${basePath}/usermgr/z/selectUserIdChk.do",
			type: 'POST',
			dataType : "json",
			data : $("#userVO").serialize(),
			error: function(){
				 alert("현재 조회 서비스가 원할하지 않습니다.\n잠시후 다시 이용해 주십시요.");
				 return;
			},
			success: function(r) { 
				if(r.message == 'userId') {
					alert("사용자 아이디가 중복되었습니다.\n다른값으로 입력바랍니다.");
					$("#userId").focus();
					return;
				}
				if(r.message == 'emailAddr') {
					alert("사용자 이메일이 중복되었습니다 \n다른값으로 입력바랍니다.");
					$("#emailAddr").focus();
					return;
				}
				if(!confirm("등록 하시겠습니까?")){
					return;
				}
				document.userVO.submit();
			}
		}); 
	};
	</script>
</body>
</html>
