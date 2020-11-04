<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/rent/common/include.jsp"%>
<div class="header_centerBox">
	<h1 style="cursor: pointer;" onclick="javascript:fn_selectMain();">
		<img src="${imagePath }/logo.png" width="143" height="19" />
	</h1>
	<div class="lnb">
		<dl>
			<dt class="hidden">로그인, 로그아웃, 사이트맵 , 설정이 들어가는 자리입니다.</dt>
			<dd style="cursor: pointer;" onclick="javascript:fn_updateMyInfo('${sessionScope.loginVO.userSeq}');">${sessionScope.loginVO.userNm}님 환영합니다.</dd>
			<dd>
				<a href="${basePath}/login/a/logOut.do" class="lbtn">로그아웃</a>
			</dd>
			<dd class="lbar">
				<img src="${imagePath }/lnb_bar.gif" width="1" height="10" />
			</dd>
		</dl>
	</div>
	<!--Local Navigation Bar End-->

	<div class="gnbWrap">
		<div id="menuArea">
			<ul id="navi">
				<c:choose>
					<c:when test="${alevel eq '1'}">
						<li id="menu" class="selectMenu"><a href="${basePath}/vtmgr/z/selectVisitorList.do">견적관리</a></li>
						<li id="menu"><a href="${basePath}/usermgr/z/selectUserList.do">어드민사용자 관리</a></li>
						<li id="menu"><a href="${basePath}/svymgr/w/updateSurveyQtn.do">랜딩페이지 관리</a></li>
					</c:when>
					<c:when test="${alevel eq '2'}">
						<li id="menu"><a href="${basePath}/vtmgr/z/selectVisitorList.do">견적관리</a></li>
						<li id="menu" class="selectMenu"><a href="${basePath}/usermgr/z/selectUserList.do">어드민사용자 관리</a></li>
						<li id="menu"><a href="${basePath}/svymgr/w/updateSurveyQtn.do">랜딩페이지 관리</a></li>
					</c:when>
					<c:when test="${alevel eq '3'}">
						<li id="menu"><a href="${basePath}/vtmgr/z/selectVisitorList.do">견적관리</a></li>
						<li id="menu"><a href="${basePath}/usermgr/z/selectUserList.do">어드민사용자 관리</a></li>
						<li id="menu" class="selectMenu"><a href="${basePath}/svymgr/w/updateSurveyQtn.do">랜딩페이지 관리</a></li>
					</c:when>
					<c:otherwise>
						<li id="menu"><a href="${basePath}/vtmgr/z/selectVisitorList.do">견적관리</a></li>
						<li id="menu"><a href="${basePath}/usermgr/z/selectUserList.do">어드민사용자 관리</a></li>
						<li id="menu"><a href="${basePath}/svymgr/w/updateSurveyQtn.do">랜딩페이지 관리</a></li>
					</c:otherwise>
				</c:choose>
			</ul>
		</div>
	</div>
</div>

<script type="text/javascript">
var fn_updateMyInfo = function(userSeq){
	location.href = "${basePath}/mypagemgr/z/updateMyInfo.do?userSeq="+userSeq;
};

var fn_selectMain = function() {
	location.href = "${basePath}/vtmgr/z/selectVisitorList.do";
};

</script>