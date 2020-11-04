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
				<p class="contentTitle">사용자 관리</p>
				<p class="sub_path">
					<img src="${imagePath }/ico_home.png" width="10" height="9" />&nbsp;〉&nbsp;사용자관리&nbsp;〉&nbsp;사용자관리
				</p>
				<form:form commandName="userVO" id="listForm" name="listForm" method="post" action="${basePath}/usermgr/z/selectUserList.do">
					<form:hidden path="pageIndex" id="pageIndex" />
					<form:hidden path="userSeq" />
					<div class="selectBox">
						<form:select path="searchCondition" class="w13p">
							<form:option value="userNm" label="사용자명"></form:option>
							<form:option value="emailAddr" label="이메일주소"></form:option>
							<form:option value="userId" label="아이디"></form:option>
						</form:select> 
						<form:input path="searchKeyword" onkeydown="if(event.keyCode==13){javascript:fn_searchList(1);}" class="searchName" style="width: 737px;"></form:input>
						<button type="button" class="grayBtn ico" onclick="javascript:fn_searchList(1);"><img src="${imagePath }/ico_search.png"> 검색</button>
					</div>
				</form:form>
				<div class="tableLayer">
					<table class="tableList">
						<caption></caption>
						<colgroup>
							<col width="5%">
							<col width="15%">
							<col width="15%">
							<col width="*">
							<col width="15%">
							<col width="15%">
						</colgroup>
						<thead>
							<th class="noBg">번호</th>
							<th>아이디</th>
							<th>성명</th>
							<th>이메일</th>
							<th>사용여부</th>
							<th>가입일자</th>
						</thead>
						<tbody>
							<c:choose>
								<c:when test="${rslt.userListCnt > 0}">
									<c:forEach items="${rslt.userList}" var="list" varStatus="i">
										<tr class="row" style="cursor: pointer;" onclick="javascript:fn_selectUserDetail('<c:out value='${list.userSeq}'/>');">
											<td><c:out value="${i.count}"/></td>
											<td><c:out value="${list.userId}"/></td>
											<td><c:out value="${list.userNm}"/></td>
											<td><c:out value="${list.emailAddr}"/></td>
											<td>
												<c:choose>
													<c:when test="${list.delYn eq 'Y'}">
														X
													</c:when>
													<c:otherwise>
														O
													</c:otherwise>
												</c:choose>
											</td>
											<td><c:out value="${list.regDt}"/></td>
										</tr>
									</c:forEach>
								</c:when>
								<c:otherwise>
									<td colspan="6">데이터가 없습니다.</td>
								</c:otherwise>
							</c:choose>
						</tbody>
					</table>
					<div class="T_btnLayer fr">
						<a href="javascript:void(0);" onclick="javascript:fn_insertUser();"><button type="button" class="blueBtn L">등록</button></a>
					</div>
				</div>
				<!--페이징-->
				<div class="paging_place">
					<div class="paging_wrap">
						<ui:pagination paginationInfo="${rslt.paginationInfo}" type="image" jsFunction="fn_searchList" />
					</div>
				</div>
			</div>
		</div>
		<!--container End-->
	</div>
	<!--wrap End-->
	<%@ include file="/WEB-INF/jsp/rent/common/footer.jsp"%>
	<!--//footer-->
	
	<script type="text/javascript">
	var fn_searchList = function(pageNo){
		var forms = document.listForm;
		forms.pageIndex.value = pageNo;
		forms.submit();
	};
	
	var fn_selectUserDetail = function(userSeq) {
		var frm = document.listForm;
		frm.userSeq.value = userSeq;
		frm.action = "${basePath}/usermgr/z/selectUserDetail.do";
		frm.submit();
	};
	
	var fn_insertUser = function() {
		var frm = document.listForm;
		frm.action = "${basePath}/usermgr/z/insertUser.do";
		frm.submit();
	};
	</script>
</body>
</html>
