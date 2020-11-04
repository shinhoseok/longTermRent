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
				<p class="contentTitle">사용자 목록</p>
				<p class="sub_path">
					<img src="${imagePath }/ico_home.png" width="10" height="9" />&nbsp;〉&nbsp;사용자관리&nbsp;〉&nbsp;사용자관리
				</p>
				<h4 class="contentTitle_h4">로그인 정보</h4>
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
								<th>아이디</th>
								<td><c:out value="${resultVO.userId}"/></td>
								<th>이름</th>
								<td><c:out value="${resultVO.userNm}"/></td>
							</tr>
							<tr>
								<th>이메일</th>
								<td><c:out value="${resultVO.emailAddr}"/></td>
								<th>사용여부</th>
								<td>
									<c:choose>
										<c:when test="${resultVO.delYn eq 'Y'}">
											X
										</c:when>
										<c:otherwise>
											O
										</c:otherwise>
									</c:choose>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="T_btnLayer fr">
					<a href="javascript:void(0);" onclick="javascript:fn_updateUser();"><button type="button" class="blueBtn L">수정</button></a>
					<a href="javascript:void(0);" onclick="javascript:fn_selectUserList();"><button type="button" class="blueBtn L">목록</button></a>
				</div>
			</div>
		</div>
		<!--container End-->
	</div>
	<form:form commandName="userVO" id="detailForm" name="detailForm" method="post" >
		<form:hidden path="userSeq" />
		<form:hidden path="emailAddr" />
		<form:hidden path="searchCondition"/>
		<form:hidden path="searchKeyword"/>
		<form:hidden path="pageIndex"/>
	</form:form>
	<!--wrap End-->
	<%@ include file="/WEB-INF/jsp/rent/common/footer.jsp"%>
	
<script type="text/javascript">

//수정
var fn_updateUser = function() {
	$('#detailForm').attr("action","${basePath}/usermgr/z/updateUser.do");
	$('#detailForm').submit();
};

//목록
var fn_selectUserList = function() {
	var frm = document.detailForm;
	frm.action = "<c:url value='${basePath}/usermgr/z/selectUserList.do'/>";
	frm.submit();
};

//HTML 로딩후
$(document).ready(function(){
});
</script>
</body>
</html>
