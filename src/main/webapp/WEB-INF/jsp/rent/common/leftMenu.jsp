<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/rent/common/include.jsp"%>
<c:choose>
	<c:when test="${alevel eq '1'}">
		<c:if test="${blevel eq '1'}">
			<c:if test="${clevel eq '1'}">
				<h3>견적 관리</h3>
				<ul class="menuBox">
					<li class="bigMenu"><a href="${basePath}/vtmgr/z/selectVisitorList.do">견적관리</a>
						<div class="subMenu">
							<ul>
								<li class="selectsubMenu"><a href="${basePath}/vtmgr/z/selectVisitorList.do"> 견적 관리</a></li>
								<li class="smallMenu"><a href="#">견적 통계</a></li>
									
							</ul>
						</div>
					</li>
				</ul>
			</c:if>
			<c:if test="${clevel eq '2'}">
				<h3>견적 관리</h3>
				<ul class="menuBox">
					<li class="bigMenu"><a href="${basePath}/vtmgr/z/selectVisitorList.do">견적관리</a>
						<div class="subMenu">
							<ul>
								<li class="smallMenu"><a href="${basePath}/vtmgr/z/selectVisitorList.do"> 견적 관리</a></li>
								<li class="selectsubMenu"><a href="#">견적 통계</a></li>
									
							</ul>
						</div>
					</li>
				</ul>
			</c:if>
		</c:if>
	</c:when>
	<c:when test="${alevel eq '2'}">
		<c:if test="${blevel eq '1'}">
			<c:if test="${clevel eq '1'}">
				<h3>어드민사용자 관리</h3>
				<ul class="menuBox">
				<li class="bigMenu"><a href="${basePath}/usermgr/z/selectUserList.do">어드민사용자 관리</a>
					<div class="subMenu">
						<ul>
							<li class="selectsubMenu"><a href="${basePath}/usermgr/z/selectUserList.do">어드민사용자 관리</a></li>
						</ul>
					</div>
				</li>
				</ul>
			</c:if>
		</c:if>
	</c:when>
	<c:when test="${alevel eq '3'}">
		<c:if test="${blevel eq '1'}">
			<c:if test="${clevel eq '1'}">
				<h3>랜딩페이지 관리</h3>
				<ul class="menuBox">
					<li class="bigMenu"><a href="#">설문조사 관리</a>
						<div class="subMenu">
							<ul>
								<li class="selectsubMenu"><a href="${basePath}/svymgr/w/updateSurveyQtn.do"> 질문 수정</a></li>
								<li class="smallMenu"><a href="${basePath}/svymgr/w/updateSurveyAnswer.do">답변 수정</a></li>
							</ul>
						</div>
					</li>
					<li class="bigMenu"><a href="#">링크 관리</a>
						<div class="subMenu">
							<ul>
								<li class="smallMenu"><a href="${basePath}/linkmgr/w/updateReviewLink.do"> 후기 링크</a></li>
								<li class="smallMenu"><a href="${basePath}/linkmgr/w/updateYouTubeLink.do">유튜브 링크</a></li>
							</ul>
						</div>
					</li>
				</ul>
			</c:if>
			<c:if test="${clevel eq '2'}">
				<h3>랜딩페이지 관리</h3>
				<ul class="menuBox">
					<li class="bigMenu"><a href="#">설문조사 관리</a>
						<div class="subMenu">
							<ul>
								<li class="smallMenu"><a href="${basePath}/svymgr/w/updateSurveyQtn.do"> 질문 수정</a></li>
								<li class="selectsubMenu"><a href="${basePath}/svymgr/w/updateSurveyAnswer.do">답변 수정</a></li>
							</ul>
						</div>
					</li>
					<li class="bigMenu"><a href="#">링크 관리</a>
						<div class="subMenu">
							<ul>
								<li class="smallMenu"><a href="${basePath}/linkmgr/w/updateReviewLink.do"> 후기 링크</a></li>
								<li class="smallMenu"><a href="${basePath}/linkmgr/w/updateYouTubeLink.do">유튜브 링크</a></li>
							</ul>
						</div>
					</li>
				</ul>
			</c:if>
		</c:if>
		<c:if test="${blevel eq '2'}">
			<c:if test="${clevel eq '1'}">
				<h3>랜딩페이지 관리</h3>
				<ul class="menuBox">
					<li class="bigMenu"><a href="#">설문조사 관리</a>
						<div class="subMenu">
							<ul>
								<li class="smallMenu"><a href="${basePath}/svymgr/w/updateSurveyQtn.do"> 질문 수정</a></li>
								<li class="smallMenu"><a href="${basePath}/svymgr/w/updateSurveyAnswer.do">답변 수정</a></li>
							</ul>
						</div>
					</li>
					<li class="bigMenu"><a href="#">링크 관리</a>
						<div class="subMenu">
							<ul>
								<li class="selectsubMenu"><a href="${basePath}/linkmgr/w/updateReviewLink.do"> 후기 링크</a></li>
								<li class="smallMenu"><a href="${basePath}/linkmgr/w/updateYouTubeLink.do">유튜브 링크</a></li>
							</ul>
						</div>
					</li>
				</ul>
			</c:if>
			<c:if test="${clevel eq '2'}">
				<h3>랜딩페이지 관리</h3>
				<ul class="menuBox">
					<li class="bigMenu"><a href="#">설문조사 관리</a>
						<div class="subMenu">
							<ul>
								<li class="smallMenu"><a href="${basePath}/svymgr/w/updateSurveyQtn.do"> 질문 수정</a></li>
								<li class="smallMenu"><a href="${basePath}/svymgr/w/updateSurveyAnswer.do">답변 수정</a></li>
							</ul>
						</div>
					</li>
					<li class="bigMenu"><a href="#">링크 관리</a>
						<div class="subMenu">
							<ul>
								<li class="smallMenu"><a href="${basePath}/linkmgr/w/updateReviewLink.do"> 후기 링크</a></li>
								<li class="selectsubMenu"><a href="${basePath}/linkmgr/w/updateYouTubeLink.do">유튜브 링크</a></li>
							</ul>
						</div>
					</li>
				</ul>
			</c:if>
		</c:if>
	</c:when>
</c:choose>

