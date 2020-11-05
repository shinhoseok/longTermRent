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
		<jsp:include page="/WEB-INF/jsp/rent/common/top2.jsp" flush="false" />
	</div>
	<!--header End-->
	<!--header End-->
	<div class="wrap">
		<div class="contents">
			<h3 style="padding-top: 20px;">아이디 찾기</h3>
			<p class="sub_path">
				<img src="${imagePath }/ico_home.png" width="10" height="9" />&nbsp;〉&nbsp;아이디 찾기
			</p>
			<h4 class="contentTitle_h4">본인 확인</h4>
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
							<th>본인 확인</th>
							<td colspan="3">
								등록되어 있는 이름과 이메일 주소가 같아야, 이메일로 아이디를 받을 수 있습니다. 등록한 회원정보로 찾기 어려우시면 관리자에게 문의 바랍니다.
							</td>
						</tr>
						<form:form commandName="loginVO" id="loginVO" name="loginVO" method="post" action="${basePath}/login/a/afterIdSearch.do">
							<form:hidden path="userId" />
							<tr>
								<th>이름</th>
								<td colspan="3">
									<div class="commonSearch_wrap">
										<label class="blind" for=" ">d</label> 
										<form:input path="userNm" id="userNm" style="width: 720px;" onfocus="checker(this, 50 , 'nbytes_userNm');" onblur="stopchecker();"/>
										&nbsp;[<span id="nbytes_userNm" class="color_red">0</span>/50]byte
									</div>
								</td>
							</tr>
							<tr>
								<th>이메일 주소</th>
								<td colspan="3">
									<div class="commonSearch_wrap">
										<label class="blind" for=" ">d</label> 
										<form:input path="emailAddr" id="emailAddr" style="width: 720px;" onfocus="checker(this, 100 , 'nbytes_emailAddr');" onblur="stopchecker();"/>
										&nbsp;[<span id="nbytes_emailAddr" class="color_red">0</span>/100]byte 
									</div>
								</td>
							</tr>
						</form:form>
					</tbody>
				</table>
			</div>
			<div class="T_btnLayer fr">
				<a href="javascript:void(0);" onclick="javascript:fn_selectIdSearchAjax();"><button type="button" class="blueBtn L">아이디 찾기</button></a>
				<a href="${basePath}/login/a/login.do"><button type="button" class="blueBtn L">취소</button></a>
			</div>
		</div>
	</div>
	<!--container End-->
	</div>
	<!--wrap End-->
	<%@ include file="/WEB-INF/jsp/rent/common/footer.jsp"%>
	<!--//footer-->
	
	<script type="text/javascript">
	var fn_selectIdSearchAjax = function() {
		if (!TypeChecker.required($("#userNm").val())) {
			alert("'이름'은  "+ TypeChecker.requiredText);
			$("#userNm").focus();
			return;
		}
		if (!TypeChecker.korEng($("#userNm").val())) {
			alert("'이름'는' "+TypeChecker.korEngText);
			$("#userNm").focus();
			return;
		}
		if (!TypeChecker.required($("#emailAddr").val())) {
			alert("'이메일'은  "+ TypeChecker.requiredText);
			$("#emailAddr").focus();
			return;
		}
		if (!TypeChecker.email($("#emailAddr").val())) {
			alert("이메일은 "+TypeChecker.emailText);
			$("#emailAddr").focus();
			return;
		}
		
		$.ajax({ 	
			url: "${basePath}/login/a/selectIdSearchAjax.do",
			type: 'POST',
			dataType : "json",
			data : $("#loginVO").serialize(),
			error: function(){
				 alert("현재 조회 서비스가 원할하지 않습니다.\n잠시후 다시 이용해 주십시요.");
				 return;
			},
			success: function(r) {
				if(r.message != "N") {
					$("#userId").val(r.message);
					document.loginVO.submit();
				} else {
					alert("사용자 정보가 올바르지 않습니다.\n다른값으로 입력바랍니다.");
					$("#userNm").focus();
					return;
				}
				
			}
		}); 
	};
	</script>
</body>
</html>
