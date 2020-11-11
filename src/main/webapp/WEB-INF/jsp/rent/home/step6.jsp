<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/rent/ucommon/include.jsp"%>
<section>
	<article>
		<div class="logo_box">
			<h1>바른청년</h1>
			<h2>장기렌트 영업기밀!</h2>
			<p>
				설문에 참여하시고 1%를 위한<br> 특별할인을 받아보세요.
			</p>
		</div>
		<div class="text_box">
			<img src="${imagePath}/q6.png" class="img_q1">
			<p class="text_q text_q1_mo">
				바른청년 렌터카 고객님의<br> 전화번호가 어떻게 되세요?
			</p>
			<div class="answer_box">
				<input type="text" id="param" placeholder="-빼고 휴대전화를 입력해주세요" onfocus="checker(this, 11 , 'nbytes_param');" onblur="stopchecker();"></input>
				<a href="javascript:void(0);" onclick="fn_insertVisitorProc();"><p class="btn_ok">확인</p> </a>
			</div>
			<div class="check_info check_info_mo">
				<a href="javascript:void(0);" onclick="javascript:fn_step7Check();" class="btn_check_info" id="step7Check"> </a>
				<p style="cursor: pointer;" onclick="javascript:fn_step7Check();">개인정보 수집 및 이용동의 (필수)</p>
			</div>
		</div>
		<a href="#" class="btn_close"></a> <a href="#" class="btn_close_mo">건너뛰기 > </a>
	</article>
</section>
<!--step 표시-->
<div class="step_bar">
	<div class="step step6">
		<p>STEP 6</p>
	</div>
</div>