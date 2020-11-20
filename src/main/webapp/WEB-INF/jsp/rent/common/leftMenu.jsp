<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/rent/common/include.jsp"%>
<c:choose>
	<c:when test="${alevel eq '1'}">
		<c:if test="${blevel eq '1'}">
			<c:if test="${clevel eq '1'}">
				<h3>견적 관리</h3>
				<ul class="menuBox">
					<li class="bigMenu">견적관리
						<div class="subMenu">
							<ul>
								<li class="selectsubMenu" style="cursor: pointer;" onclick="location.href='${basePath}/vtmgr/w/selectVisitorList.do';"><a href="javascript:void(0);"> 견적 관리</a></li>
							</ul>
						</div>
					</li>
				</ul>
			</c:if>
			<c:if test="${clevel eq '2'}">
				<h3>견적 관리</h3>
				<ul class="menuBox">
					<li class="bigMenu">견적관리
						<div class="subMenu">
							<ul>
								<li class="smallMenu" style="cursor: pointer;" onclick="location.href='${basePath}/vtmgr/w/selectVisitorList.do';"><a href="javascript:void(0);"> 견적 관리</a></li>
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
				<li class="bigMenu">어드민사용자 관리
					<div class="subMenu">
						<ul>
							<li class="selectsubMenu" onclick="location.href='${basePath}/usermgr/z/selectUserList.do';" style="cursor: pointer;"><a href="javascript:void(0);">어드민사용자 관리</a>
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
					<li class="bigMenu">설문조사 관리
						<div class="subMenu">
							<ul>
								<li class="selectsubMenu" onclick="location.href='${basePath}/svymgr/w/updateSurveyQtn.do';" style="cursor: pointer;"><a href="javascript:void(0);"> 질문 수정</a></li>
								<li class="smallMenu" onclick="location.href='${basePath}/svymgr/w/updateSurveyAnswer.do';" style="cursor: pointer;"><a href="javascript:void(0);">답변 수정</a></li>
							</ul>
						</div>
					</li>
					<li class="bigMenu">링크 관리
						<div class="subMenu">
							<ul>
								<li class="smallMenu" onclick="location.href='${basePath}/linkmgr/w/updateReviewLink.do';" style="cursor: pointer;"><a href="javascript:void(0);"> 후기 링크</a></li>
								<li class="smallMenu" onclick="location.href='${basePath}/linkmgr/w/updateKakaoLink.do';" style="cursor: pointer;"><a href="javascript:void(0);">카카오채널 링크</a></li>
								<li class="smallMenu" onclick="location.href='${basePath}/linkmgr/w/updatePhoneMng.do';" style="cursor: pointer;"><a href="javascript:void(0);">전화번호관리</a></li>
							</ul>
						</div>
					</li>
				</ul>
			</c:if>
			<c:if test="${clevel eq '2'}">
				<h3>랜딩페이지 관리</h3>
				<ul class="menuBox">
					<li class="bigMenu">설문조사 관리
						<div class="subMenu">
							<ul>
								<li class="smallMenu" onclick="location.href='${basePath}/svymgr/w/updateSurveyQtn.do';" style="cursor: pointer;"><a href="javascript:void(0);"> 질문 수정</a></li>
								<li class="selectsubMenu" onclick="location.href='${basePath}/svymgr/w/updateSurveyAnswer.do';" style="cursor: pointer;"><a href="javascript:void(0);">답변 수정</a></li>
							</ul>
						</div>
					</li>
					<li class="bigMenu">링크 관리
						<div class="subMenu">
							<ul>
								<li class="smallMenu" onclick="location.href='${basePath}/linkmgr/w/updateReviewLink.do';" style="cursor: pointer;"><a href="javascript:void(0);"> 후기 링크</a></li>
								<li class="smallMenu" onclick="location.href='${basePath}/linkmgr/w/updateKakaoLink.do';" style="cursor: pointer;"><a href="javascript:void(0);">카카오채널 링크</a></li>
								<li class="smallMenu" onclick="location.href='${basePath}/linkmgr/w/updatePhoneMng.do';" style="cursor: pointer;"><a href="javascript:void(0);">전화번호관리</a></li>
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
					<li class="bigMenu">설문조사 관리
						<div class="subMenu">
							<ul>
								<li class="smallMenu" onclick="location.href='${basePath}/svymgr/w/updateSurveyQtn.do';" style="cursor: pointer;"><a href="javascript:void(0);"> 질문 수정</a></li>
								<li class="smallMenu" onclick="location.href='${basePath}/svymgr/w/updateSurveyAnswer.do';" style="cursor: pointer;"><a href="javascript:void(0);">답변 수정</a></li>
							</ul>
						</div>
					</li>
					<li class="bigMenu">링크 관리
						<div class="subMenu">
							<ul>
								<li class="selectsubMenu" onclick="location.href='${basePath}/linkmgr/w/updateReviewLink.do';" style="cursor: pointer;"><a href="javascript:void(0);"> 후기 링크</a></li>
								<li class="smallMenu" onclick="location.href='${basePath}/linkmgr/w/updateKakaoLink.do';" style="cursor: pointer;"><a href="javascript:void(0);">카카오채널 링크</a></li>
								<li class="smallMenu" onclick="location.href='${basePath}/linkmgr/w/updatePhoneMng.do';" style="cursor: pointer;"><a href="javascript:void(0);">전화번호관리</a></li>
							</ul>
						</div>
					</li>
				</ul>
			</c:if>
			<c:if test="${clevel eq '2'}">
				<h3>랜딩페이지 관리</h3>
				<ul class="menuBox">
					<li class="bigMenu">설문조사 관리
						<div class="subMenu">
							<ul>
								<li class="smallMenu" onclick="location.href='${basePath}/svymgr/w/updateSurveyQtn.do';" style="cursor: pointer;"><a href="javascript:void(0);"> 질문 수정</a></li>
								<li class="smallMenu" onclick="location.href='${basePath}/svymgr/w/updateSurveyAnswer.do';" style="cursor: pointer;"><a href="javascript:void(0);">답변 수정</a></li>
							</ul>
						</div>
					</li>
					<li class="bigMenu">링크 관리
						<div class="subMenu">
							<ul>
								<li class="smallMenu" onclick="location.href='${basePath}/linkmgr/w/updateReviewLink.do';" style="cursor: pointer;"><a href="javascript:void(0);"> 후기 링크</a></li>
								<li class="selectsubMenu" onclick="location.href='${basePath}/linkmgr/w/updateKakaoLink.do';" style="cursor: pointer;"><a href="javascript:void(0);">카카오채널 링크</a></li>
								<li class="smallMenu" onclick="location.href='${basePath}/linkmgr/w/updatePhoneMng.do';" style="cursor: pointer;"><a href="javascript:void(0);">전화번호관리</a></li>
							</ul>
						</div>
					</li>
				</ul>
			</c:if>
			<c:if test="${clevel eq '3'}">
				<h3>랜딩페이지 관리</h3>
				<ul class="menuBox">
					<li class="bigMenu">설문조사 관리
						<div class="subMenu">
							<ul>
								<li class="smallMenu" onclick="location.href='${basePath}/svymgr/w/updateSurveyQtn.do';" style="cursor: pointer;"><a href="javascript:void(0);"> 질문 수정</a></li>
								<li class="smallMenu" onclick="location.href='${basePath}/svymgr/w/updateSurveyAnswer.do';" style="cursor: pointer;"><a href="javascript:void(0);">답변 수정</a></li>
							</ul>
						</div>
					</li>
					<li class="bigMenu">링크 관리
						<div class="subMenu">
							<ul>
								<li class="smallMenu" onclick="location.href='${basePath}/linkmgr/w/updateReviewLink.do';" style="cursor: pointer;"><a href="javascript:void(0);"> 후기 링크</a></li>
								<li class="smallMenu" onclick="location.href='${basePath}/linkmgr/w/updateKakaoLink.do';" style="cursor: pointer;"><a href="javascript:void(0);">카카오채널 링크</a></li>
								<li class="selectsubMenu" onclick="location.href='${basePath}/linkmgr/w/updatePhoneMng.do';" style="cursor: pointer;"><a href="javascript:void(0);">전화번호관리</a></li>
							</ul>
						</div>
					</li>
				</ul>
			</c:if>
		</c:if>
	</c:when>
</c:choose>

