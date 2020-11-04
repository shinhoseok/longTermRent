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
				<p class="contentTitle f_blue">설문조사 관리</p>
				<p class="sub_path">
					<img src="${imagePath }/ico_home.png" width="10" height="9" />&nbsp;〉&nbsp;설문조사 관리&nbsp;〉&nbsp;질문 수정
				</p>
				<c:choose>
					<c:when test="${fn:length(resultList) > 0}">
						<c:forEach items="${resultList}" var="list" varStatus="i">
							<h4 class="contentTitle_h4">질문<c:out value="${i.count}"/></h4>
							<div class="tableLayer">
								<table class="table">
									<caption></caption>
									<colgroup>
										<col width="20%">
										<col width="80%">
									</colgroup>
									<tbody class="line">
										<tr>
											<th>질문 <c:out value="${i.count}"/></th>
											<td><c:out value="${list.qtnContents}"/></td>
										</tr>
										<tr>
											<th class="bullet_orange">질문 <c:out value="${i.count}"/> 변경</th>
											<td>
												<div class="commonSearch_wrap">
													<label class="blind" for=" ">d</label><input id="qtnContents_<c:out value="${i.count}"/>" style="width: 550px;" type="text" placeholder="새로운 질문을 입력하세요.">
													<button type="button" class="blueBtn M" onclick="javascript:fn_updateSurveyQtnProc('<c:out value="${i.count}"/>', '<c:out value="${list.qtnId}"/>');">수정</button>
												</div>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
						</c:forEach>
					</c:when>
					<c:otherwise>
						<h4 class="contentTitle_h4">등록된 질문이 없습니다.</h4>
					</c:otherwise>
				</c:choose>
			</div>
		</div>
		<!--container End-->
	</div>
	<form:form commandName="surveyVO" name="surveyVO" id="surveyVO" method="post" action="${basePath}/svymgr/w/updateSurveyQtnProc.do">
		<form:hidden path="qtnId" id="qtnId"/>
		<form:hidden path="qtnContents" id="qtnContents"/>
	</form:form>
	<!--wrap End-->
	<%@ include file="/WEB-INF/jsp/rent/common/footer.jsp"%>
	<!--//footer-->

	<script type="text/javascript">
	var fn_updateSurveyQtnProc = function(idx, qtnId) {
		if (!TypeChecker.required($("#qtnContents_"+idx).val())) {
			alert("'질문'은  "+ TypeChecker.requiredText);
			$("#qtnContents_"+idx).focus();
			return;
		}
		var qtnContents = $("#qtnContents_"+idx).val();
		$("#surveyVO #qtnId").val(qtnId);
		$("#surveyVO #qtnContents").val(qtnContents);
		
		if(!confirm("수정 하시겠습니까?")){
			return;
		}
		
		document.surveyVO.submit();
	};
	</script>
</body>
</html>
