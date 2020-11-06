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
					<img src="${imagePath }/ico_home.png" width="10" height="9" />&nbsp;〉&nbsp;설문조사 관리&nbsp;〉&nbsp;답변 수정
				</p>
				<c:choose>
					<c:when test="${fn:length(rslt.surveyQtnList) > 0}">
						<c:forEach items="${rslt.surveyQtnList }" varStatus="i" var="qlist">
							<h4 class="contentTitle_h4">질문${i.count}</h4>
							<div class="tableLayer">
								<table class="table">
									<caption></caption>
									<colgroup>
										<col width="150px">
										<col width="339px">
										<col width="150px">
										<col width="339px">
									</colgroup>
									<tbody class="line">
										<tr>
											<td colspan="4" class="f_more_b"><c:out value="${qlist.qtnContents}"/></td>
										</tr>
										<c:set var="key" value="${qlist.qtnId}"/>
										<c:choose>
											<c:when test="${fn:length(rslt[key]) > 0}">
												<c:forEach items="${rslt[key]}" varStatus="j" var="alist">
													<tr>
														<th class="bullet_orange">답변 ${i.count}_${j.count}</th>
														<td><c:out value="${alist.asrContents}"/></td>
														<th class="bullet_orange">답변 ${i.count}_${j.count} 변경</th>
														<td>
															<div class="commonSearch_wrap">
																<label class="blind" for=" ">d</label>
																<input id="<c:out value="${alist.asrId}"/>" style="width: 200px;" type="text" placeholder="새로운 답변을 입력하세요.">
																<button type="button" class="blueBtn M" onclick="javascript:fn_updateSurveyAsrProc('<c:out value="${alist.asrId}"/>');">수정</button>
															</div>
														</td>
													</tr>
												</c:forEach>
											</c:when>
											<c:otherwise>
												<tr><td colspan="4">등록된 답변이 없습니다</td></tr>
											</c:otherwise>
										</c:choose>
										
									</tbody>
								</table>
							</div>
						</c:forEach>
					</c:when>
					<c:otherwise>
						<h4 class="contentTitle_h4">등록된 질문이 없습니다.</h4>
					</c:otherwise>
				</c:choose>
				<tbody class="line">
			</div>
		</div>
		<!--container End-->
	</div>
	<!--wrap End-->
	<%@ include file="/WEB-INF/jsp/rent/common/footer.jsp"%>
	<!--//footer-->
	<form action="${basePath}/svymgr/w/updateSurveyAsrProc.do" name="updateForm" id="updateForm">
		<input type="hidden" name="asrId" id="asrId">
		<input type="hidden" name="asrContents" id="asrContents">
	</form>
	<script type="text/javascript">
	var fn_updateSurveyAsrProc = function(asrId) {
		if (!TypeChecker.required($("#"+asrId).val())) {
			alert("'답변'은  "+ TypeChecker.requiredText);
			$("#"+asrId).focus();
			return;
		}
		var frm = document.updateForm;
		frm.asrId.value = asrId;
		frm.asrContents.value = $("#"+asrId).val();
		frm.submit();
	};
	</script>
</body>
</html>
