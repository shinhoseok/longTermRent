<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/rent/ucommon/include.jsp"%>
<section>
	<article>
		<div class="logo_box">
			<h1 style="cursor: pointer;" onclick="location.href='${basePath}/home/a/main.do'">바른청년</h1>
			<h2>장기렌트 영업기밀!</h2>
			<p>
				설문에 참여하시고 1%를 위한<br> 특별할인을 받아보세요.
			</p>
		</div>
		<div class="text_box">
			<img src="${imagePath}/q1.png" class="img_q1">
			<p class="text_q text_q1_mo">
				<c:out value="${rslt.questionVO.qtnContents }" escapeXml="false" />
			</p>
			<ul class="answer_list">
				<c:forEach items="${rslt.answerList}" var="list" varStatus="i">
					<li><a href="javascript:void(0);" onclick="fn_selectMainStep('2', '<c:out value="${list.qtnId }"/>', '<c:out value="${list.asrId }"/>');"><span class="answer_check"></span> <c:out value="${list.asrContents }" /></a></li>
				</c:forEach>
			</ul>
		</div>
		<a href="javascript:void(0);" onclick="javascript:fn_selectLanding();" class="btn_close"></a>
		<a href="javascript:void(0);" onclick="javascript:fn_selectLanding();" class="btn_close_mo">건너뛰기 > </a>
	</article>
</section>
<!--step 표시-->
<div class="step_bar">
	<div class="step">
		<p>STEP 1</p>
	</div>
</div>