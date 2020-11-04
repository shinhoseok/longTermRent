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
				<p class="contentTitle">견적 관리</p>
				<p class="sub_path">
					<img src="${imagePath }/ico_home.png" width="10" height="9" />&nbsp;〉&nbsp;견적관리&nbsp;〉&nbsp;견적관리
				</p>
				<div class="selectBox">
					<select name="select" class="w13p">
						<option>성명</option>
						<option>전화번호</option>
					</select>
					<input class="searchName" name="" type="text" />
					<button type="button" class="grayBtn ico">
						<img src="${imagePath }/ico_search.png"> 검색
					</button>
				</div>
				<div class="tableLayer">
					<table class="tableList">
						<caption></caption>
						<colgroup>
							<col width="5%">
							<col width="15%">
							<col width="10%">
							<col width="10%">
							<col width="10%">
							<col width="10%">
							<col width="10%">
							<col width="10%">
							<col width="15%">
							<col width="5%">
						</colgroup>
						<thead>
							<th class="noBg">번호</th>
							<th>날짜</th>
							<th>접속경로</th>
							<th>1.특별할인</th>
							<th>2.차이점</th>
							<th>3.월비용</th>
							<th>관심차종</th>
							<th>성명</th>
							<th>전화번호</th>
							<th>중복</th>
						</thead>
						<tbody>
							<c:choose>
								<c:when test="${rslt.userListCnt > 0}">
									<c:forEach items="${rslt.userList}" var="list" varStatus="i">
										<tr class="row">
											<td><c:out value="${i.count}"/></td>
											<td><c:out value="${list.regDt}"/></td>
											<td><c:out value="${list.accessPath}"/></td>
											<td><c:out value="${list.accessPath}"/></td>
											<td><c:out value="${list.accessPath}"/></td>
											<td><c:out value="${list.accessPath}"/></td>
											<td><c:out value="${list.itrstdCarTy}"/></td>
											<td><c:out value="${list.visitorNm}"/></td>
											<td><c:out value="${list.telNo}"/></td>
											<td>3</td>
										</tr>
									</c:forEach>
								</c:when>
								<c:otherwise>
									<td colspan="10">데이터가 없습니다.</td>
								</c:otherwise>
							</c:choose>
						</tbody>
					</table>
					<div class="T_btnLayer fr">
						<a href="#"><button type="button" class="blueBtn L">엑셀 다운로드</button></a>
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
</body>
</html>
