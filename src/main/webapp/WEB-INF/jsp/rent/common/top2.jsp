<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/rent/common/include.jsp"%>
<div class="header_centerBox">
	<h1 style="cursor: pointer;" onclick="javascript:fn_selectMain();">
		<img src="${imagePath}/logo.png" width="143" height="19" />
	</h1>
	<div class="lnb">
		<dl>
		</dl>
	</div>
	<!--Local Navigation Bar End-->
	<div class="gnbWrap">
		<div id="menuArea">
			<ul id="navi">
				<c:choose>
					<c:when test="${alevel eq '1' }">
						<li id="menu" class="selectMenu"><a href="${basePath }/login/a/selectIdSearch.do">아이디 찾기</a></li>
						<li id="menu"><a href="${basePath }/login/a/selectPwdSearch.do">비밀번호 찾기</a></li>
					</c:when>
					<c:when test="${alevel eq '2' }">
						<li id="menu"><a href="${basePath }/login/a/selectIdSearch.do">아이디 찾기</a></li>
						<li id="menu" class="selectMenu"><a href="${basePath }/login/a/selectPwdSearch.do">비밀번호 찾기</a></li>
					</c:when>
				</c:choose>
			</ul>
		</div>
	</div>
</div>
<!--header_centerBox End-->
<script type="text/javascript">
var fn_selectMain = function() {
	location.href = "${basePath}/login/a/login.do";
};
</script>