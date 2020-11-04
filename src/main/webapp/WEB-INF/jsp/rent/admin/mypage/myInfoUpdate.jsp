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
<script type="text/javascript" src="${scriptPath}/validation/validation.js"></script>
<script type="text/javascript" src="${scriptPath}/common.js"></script>
</head>
<body>
	<div class="header">
		<div class="header_centerBox">
			<jsp:include page="/WEB-INF/jsp/rent/common/top.jsp" flush="false" />
		</div>
		<!--header_centerBox End-->
	</div>
	<!--header End-->
	<div class="wrap">
		<div class="contents">
			<h3 style="padding-top: 20px;">개인정보 변경</h3>
			<p class="sub_path">
				<img src="${imagePath }/ico_home.png" width="10" height="9" />&nbsp;〉&nbsp;개인정보변경
			</p>
			<h4 class="contentTitle_h4">개인 정보</h4>
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
							<th>이름</th>
							<td><c:out value="${resultVO.userNm}"/></td>
							<th>아이디</th>
							<td><c:out value="${resultVO.userId}"/></td>
						</tr>
						<tr>
							<th>이메일 주소</th>
							<td colspan="4"><c:out value="${resultVO.emailAddr}"/></td>
						</tr>
					</tbody>
				</table>
			</div>
			<h4 class="contentTitle_h4">비밀번호 변경</h4>
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
							<th>기존 비밀번호</th>
							<td colspan="3">
								<div class="commonSearch_wrap">
									<label class="blind" for=" ">d</label>
									<input type="password" id="beforePw" style="width: 720px; height:28px; border: 1px solid #D4D4D4;" onfocus="checker(this, 20 , 'nbytes_beforePw');" onblur="stopchecker();">
									&nbsp;[<span id="nbytes_beforePw" class="color_red">0</span>/20]byte
								</div>
							</td>
						</tr>
						<form:form commandName="resultVO" name="userVO" id="userVO" method="post" action="${basePath}/mypagemgr/w/updateUserPwReset.do">
							<form:hidden path="userSeq" id="userSeq"/>
							<tr>
								<th>신규 비밀번호</th>
								<td colspan="3">
									<div class="commonSearch_wrap">
										<label class="blind" for=" ">d</label>
										<form:password path="userPw" id="userPw" style="width: 720px; height:28px; border: 1px solid #D4D4D4;" onfocus="checker(this, 20 , 'nbytes_userPw');" onblur="stopchecker();"/>
										&nbsp;[<span id="nbytes_userPw" class="color_red">0</span>/20]byte
									</div>
								</td>
							</tr>
						</form:form>
						<tr>
							<th>신규 비밀번호 확인</th>
							<td colspan="3">
								<div class="commonSearch_wrap">
									<label class="blind" for=" ">d</label> 
									<input type="password" id="user_pw_confirm" style="width: 720px; height:28px; border: 1px solid #D4D4D4;" onfocus="checker(this, 20 , 'nbytes_user_pw_confirm');" onblur="stopchecker();"/>
									&nbsp;[<span id="nbytes_user_pw_confirm" class="color_red">0</span>/20]byte
								</div>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="T_btnLayer fr">
				<a href="javascript:void(0);" onclick="javascript:fn_updateUserPwProc('<c:out value="${resultVO.userId}"/>');"><button type="button" class="blueBtn L">수정</button></a>
				<a href="${basePath}/vtmgr/z/selectVisitorList.do"><button type="button" class="blueBtn L">취소</button></a>
			</div>
		</div>
	</div>
	<!--container End-->
	</div>
	<!--wrap End-->
	<%@ include file="/WEB-INF/jsp/rent/common/footer.jsp"%>
	<!--//footer-->
	
	<script type="text/javascript">
	var fn_updateUserPwProc = function(userId) {
		if (!TypeChecker.required($("#beforePw").val())) {
			alert("'기존 비밀번호'는  "+ TypeChecker.requiredText);
			$("#beforePw").focus();
			return;
		}
		if (!TypeChecker.required($("#userPw").val())) {
			alert("'신규 비밀번호'는  "+ TypeChecker.requiredText);
			$("#userPw").focus();
			return;
		}
		if(!fn_checkPass("userPw")) {
			return;
		}
		if (!TypeChecker.required($("#user_pw_confirm").val())) {
			alert("'신규 비밀번호 확인'은  "+ TypeChecker.requiredText);
			$("#user_pw_confirm").focus();
			return;
		}
		if($("#userPw").val() != $("#user_pw_confirm").val()) {
			alert("패스워드를 확인해주세요");
			$("#userPw").focus();
			return;
		}
		if(!confirm("수정 하시겠습니까?")){
			return;
		}
		var params = {};
		params.userId = userId;
		params.userPw = $("#beforePw").val();
		//중복체크
		$.ajax({ 	
			url: "${basePath}/mypagemgr/w/selectBeforeUserPwConfirm.do",
			type: 'POST',
			dataType : "json",
			data : params,
			error: function(){
				 alert("현재 조회 서비스가 원할하지 않습니다.\n잠시후 다시 이용해 주십시요.");
				 return;
			},
			success: function(r) { 
				if(r.result) {
					document.userVO.submit();
				} else {
					alert("기존 비밀번호가 올바르지 않습니다.\n다시 시도해 주시기 바랍니다.");
					$("#beforePw").focus();
					return;
				}
			}
		}); 
	};
	</script>
</body>
</html>
