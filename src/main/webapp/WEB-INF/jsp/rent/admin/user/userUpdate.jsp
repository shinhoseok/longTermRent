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
		<div class="container">
			<div class="sub_leftMenu">
				<%@ include file="/WEB-INF/jsp/rent/common/leftMenu.jsp"%>
			</div>
			<div class="contents">
				<p class="contentTitle">사용자 수정</p>
				<p class="sub_path">
					<img src="${imagePath }/ico_home.png" width="10" height="9" />&nbsp;〉&nbsp;사용자관리&nbsp;〉&nbsp;사용자관리
				</p>
				<h4 class="contentTitle_h4">회원 수정</h4>
				<form:form commandName="resultVO" name="userVO" id="userVO" method="post" action="${basePath}/usermgr/z/updateUserProc.do">
					<form:hidden path="userSeq" id="userSeq"/>
					<form:hidden path="userId" id="userId"/>
					<input type="hidden" id="pwChangeGubun" name="pwChangeGubun" value="N"></input>
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
									<td><c:out value="${resultVO.userId}"/></td>
									</td>
									<th class="bullet_orange">이메일</th>
									<td>
										<div class="commonSearch_wrap">
											<label class="blind" for=" ">d</label> 
											<form:input path="emailAddr" onfocus="checker(this, 100 , 'nbytes_emailAddr');" onblur="stopchecker();" style="width: 230px;" type="text"/>
											&nbsp;[<span id="nbytes_emailAddr" class="color_red">0</span>/100]byte
										</div>
									</td>
								</tr>
								<tr>
									<th class="bullet_orange">이름</th>
									<td>
										<div class="commonSearch_wrap">
											<label class="blind" for=" ">d</label> 
											<form:input path="userNm" onfocus="checker(this, 50 , 'nbytes_userNm');" onblur="stopchecker();" style="width: 230px;" type="text"/>
											&nbsp;[<span id="nbytes_userNm" class="color_red">0</span>/50]byte
										</div>
									</td>
									<th>사용여부</th>
									<td>
										<form:radiobutton path="delYn" id="radio01" checked="${resultVO.delYn eq 'N' ? 'checked' : '' }" value="N"/> <label for="radio01" class="mr15">O</label>
										<form:radiobutton path="delYn" id="radio02" checked="${resultVO.delYn eq 'Y' ? 'checked' : '' }" value="Y"/> <label for="radio02">X</label>
									</td>
								</tr>
								<tr>
									<th class="bullet_orange">비밀번호</th>
									<td colspan="3">
										<div class="commonSearch_wrap">
											<label class="blind" for=" ">d</label>
											<form:password path="userPw" id="userPw" style="width: 230px; height:28px; border: 1px solid #D4D4D4;" readonly="true" onfocus="checker(this, 20 , 'nbytes_userPw');" onblur="stopchecker();"/>
											&nbsp;[<span id="nbytes_userPw" class="color_red">0</span>/20]byte
											&nbsp;&nbsp;&nbsp;<label class="blind" for=""></label> <input type="checkbox" id="userPwChkBox" value=""></input> 체크시 비밀번호 변경
										</div>
									</td>
								</tr>
								<tr style="display: none;" id="pwdConfirmTr">
									<th class="bullet_orange">비밀번호 확인</th>
									<td colspan="3">
										<div class="commonSearch_wrap">
											<label class="blind" for=" ">d</label> 
											<input type="password" id="user_pw_confirm" style="width: 230px; height:28px; border: 1px solid #D4D4D4;" onfocus="checker(this, 20 , 'nbytes_user_pw_confirm');" onblur="stopchecker();"/> &nbsp;
											&nbsp;[<span id="nbytes_user_pw_confirm" class="color_red">0</span>/20]byte 
										</div>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				</form:form>
				<div class="T_btnLayer fr">
					<a href="javascript:void(0);" onclick="javascript:fn_updateUserProc();"><button type="button" class="blueBtn L">수정</button></a>
					<a href="javascript:void(0);" onclick="javascript:fn_selectUserDetail();"><button type="button" class="blueBtn L">취소</button></a>
				</div>
			</div>
		</div>
		<!--container End-->
	</div>
	<!--wrap End-->
	<!-- footer Start-->
	<%@ include file="/WEB-INF/jsp/rent/common/footer.jsp"%>
	<!-- footer End -->

	<script type="text/javascript">
	$(function() {
		$("#userPwChkBox").change(function() {
			$("#userPw").val("");
			$("#user_pw_confirm").val("");
			if($("#userPwChkBox").is(":checked")) {
				$("#userPw").attr('readonly',false);
				$("#pwdConfirmTr").show();
			} else {
				$("#userPw").attr('readonly',true);
				$("#pwdConfirmTr").hide();
			}
		});
	});
	
	//취소 - 상세정보로 돌아감
	var fn_selectUserDetail = function() {
		var frm = document.userVO;
		frm.action = "${basePath}/usermgr/z/selectUserDetail.do";
		frm.submit();
	};
	
	var fn_updateUserProc = function() {
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
		if($("#userPwChkBox").is(':checked')){
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
			if(!fn_checkPass("userPw")) {
				return;
			}
			if($("#userVO #userPw").val() != $("#userVO #user_pw_confirm").val()) {
				alert("패스워드를 확인해주세요");
				$("#userVO #userPw").focus();
				return;
			}
		}
		if(!confirm("수정 하시겠습니까?")){
			return;
		}
		//중복체크
		$.ajax({ 	
			url: "${basePath}/usermgr/z/selectUserEmailChk.do",
			type: 'POST',
			dataType : "json",
			data : $("#userVO").serialize(),
			error: function(){
				 alert("현재 조회 서비스가 원할하지 않습니다.\n잠시후 다시 이용해 주십시요.");
				 return;
			},
			success: function(r) { 
				if(r.resultCnt > 0) {
					alert("사용자 이메일이 중복되었습니다 \n다른값으로 입력바랍니다.");
					$("#emailAddr").focus();
					return;
				}
				document.userVO.submit();
			}
		}); 
	};
	</script>
</body>
</html>
