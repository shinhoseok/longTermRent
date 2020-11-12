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
			<img src="${imagePath}/q4.png" class="img_q1">
			<p class="text_q text_q1_mo ">
				바른청년 렌터카 고객님이 <br> 구매하시려는 차량이 있나요?
			</p>
			<div class="answer_box">
				<input type="text" id="param" placeholder="차량명을 입력해주세요" onfocus="checker(this, 50 , 'nbytes_param');" onblur="stopchecker();"></input>
				<a href="javascript:void(0);" onclick="fn_selectMainStep('5', '', '');"><p class="btn_ok">확인</p> </a>
			</div>
		</div>
		<a href="javascript:void(0);" onclick="javascript:fn_selectLanding();" class="btn_close"></a>
		<a href="javascript:void(0);" onclick="javascript:fn_selectLanding();" class="btn_close_mo">건너뛰기 > </a>
	</article>
</section>
<!--step 표시-->
<div class="step_bar">
	<div class="step step4">
		<p>STEP 4</p>
	</div>
</div>