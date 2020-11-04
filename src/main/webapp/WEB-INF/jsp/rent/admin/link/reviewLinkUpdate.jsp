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
				<p class="contentTitle">링크 관리</p>
				<p class="sub_path">
					<img src="${imagePath }/ico_home.png" width="10" height="9" />&nbsp;〉&nbsp;링크 관리&nbsp;〉&nbsp;후기 링크
				</p>
				<h4 class="contentTitle_h4">후기 링크</h4>
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
								<th class="bullet_orange">기존 링크 주소</th>
								<td>http://www.naver.com</td>
							</tr>
							<tr>
								<th class="bullet_orange">신규 링크 주소</th>
								<td>
									<div>
										<input id="inactive" style="width: 500px;" type="text" placeholder="http://">
									</div>
								</td>
							</tr>
							<tr>
								<th class="bullet_orange">사용여부</th>
								<td colspan="3">
									<input type="radio" name="" id="radio01" checked="checked"> <label for="radio01" class="mr15">Y</label> <input type="radio" name="" id="radio02"> <label for="radio02">N</label>
								</td>
							</tr>
						</tbody>
					</table>
					<div class="T_btnLayer fr" id="mb15">
						<a href="#"><button type="button" class="blueBtn L">수정</button></a> <a href="#"><button type="button" class="blueBtn L">취소</button></a>
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
