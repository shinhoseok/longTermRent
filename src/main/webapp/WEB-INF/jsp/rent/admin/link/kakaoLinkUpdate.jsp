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
				<p class="contentTitle f_blue">링크 관리</p>
				<p class="sub_path">
					<img src="${imagePath }/ico_home.png" width="10" height="9" />&nbsp;〉&nbsp;링크 관리&nbsp;〉&nbsp;카카오 링크
				</p>

				<h4 class="contentTitle_h4">카카오 링크</h4>
				<div class="tableLayer">
					<table class="table">
						<caption></caption>
						<colgroup>
							<col width="150px">
							<col width="339px">
							<col width="150px">
							<col width="339px">
						</colgroup>
						<form:form commandName="linkVO" name="linkVO" id="linkVO" method="post" action="${basePath}/linkmgr/w/updateKakaoLinkProc.do">
							<input type="hidden" name="linkId" id="linkId" value="<c:out value="${resultVO.linkId}"/>">
							<input type="hidden" name="linkKind" id="linkKind" value="<c:out value="${resultVO.linkKind}"/>">
							<tbody class="line">
								<tr>
									<th class="bullet_orange">기존 카카오링크</th>
									<td><c:out value="${resultVO.linkAddr}"/></td>
								</tr>
								<tr>
									<th class="bullet_orange">신규 카카오링크</th>
									<td>
										<div>
											<form:input type="text" path="linkAddr" id="linkAddr"  onfocus="checker(this, 200 , 'nbytes_linkAddr');" onblur="stopchecker();" style="width: 690px; height:28px; border: 1px solid #D4D4D4;"/> &nbsp;
											&nbsp;[<span id="nbytes_linkAddr" class="color_red">0</span>/200]byte
										</div>
									</td>
								</tr>
							</tbody>
						</form:form>
					</table>
					<div class="T_btnLayer fr" id="mb15">
						<a href="javascript:void(0);" onclick="javascript:fn_updateKakaoLinkProc();"><button type="button" class="blueBtn L">수정</button></a>
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
	var fn_updateKakaoLinkProc = function() {
		if (!TypeChecker.required($("#linkAddr").val())) {
			alert("'신규 링크 주소'는  "+ TypeChecker.requiredText);
			$("#linkAddr").focus();
			return;
		}
		if(!confirm("수정 하시겠습니까?")){
			return;
		}
		document.linkVO.submit();
	};
	</script>
</body>
</html>
