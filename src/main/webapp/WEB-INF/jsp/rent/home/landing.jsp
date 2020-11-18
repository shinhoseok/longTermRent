<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/rent/ucommon/include.jsp"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko" lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1, minimum-scale=1">
<meta content="yes" name="apple-mobile-web-app-capable" />
<meta content="minimum-scale=1.0, width=device-width, maximum-scale=1, user-scalable=no" name="viewport" />
<title>바른청년 장기렌트</title>
<!--공통css-->
<link rel="stylesheet" type="text/css" href="${cssPath}/main.css">
<!-- 스크립트 선언 -->
<script type="text/javascript" src="${scriptPath}/jquery/jquery-1.12.3.min.js"></script>
</head>
<body>
	<!--1-->
	<section class="main_box1">
		<article>
			<div class="wrap">
				<div class="logo_box" style="cursor: pointer;" onclick="javascript:location.href='${basePath}/home/a/main.do'">
					<h1>바른청년 렌트카</h1>
					<p>대한민국 렌터카 진짜 가격!</p>
				</div>
				<div class="text_box">
					<h2 id="move">
						장기렌트/리스견적<br> 영업기밀을 고객님께만<br> 알려드립니다.
					</h2>
					<p id="move2">
						복잡한 렌터카 시장,<br> 1%의 고객님들만 받아볼 수 있는 진짜 가격을<br> 바른청년 렌터카가 견적서로 알려드립니다.
					</p>
				</div>
			</div>
		</article>
	</section>

	<!--2_1-->
	<section class="main_box2_1">
		<article>
			<div>
				<p>장기렌트 영업기밀이란?</p>
				<h2>
					바른청년 렌터카만 알 수 있는 <br> 고객님께 최적화 된 가격입니다.
				</h2>
				<p class="text_box2_1">
					장기렌트 영업기밀은 고객님께서 알맞은 차량을 합리적으로 장기렌트 및 리스할 수 있도록 하는 가격이며,<br> 바른청년 렌터카 고객님 외에 일반적으로 공개되지 않습니다.
				</p>
			</div>
		</article>
	</section>
	<!--2_2-->
	<section class="main_box2_2">
		<div class="wrap">
			<article>
				<div class="text_box2_2">
					<span> HONEST<br> CAR<br> RENTAL
					</span>
					<div class="divder"></div>
					<p>
						최적화 된 가격으로<br> 정직하게, 합리적으로<br> 설계해드립니다.
					</p>
				</div>
			</article>
		</div>
	</section>
	<!--2_3-->
	<section class="main_box2_3">
		<div class="wrap">
			<article>
				<div class="text_box2_3">
					<span> CAR<br> RENTAL<br> REVEIW
					</span>
					<div class="divder"></div>
					<p>
						바른청년 렌터카<br> 1% 상담후기
					</p>
				</div>
			</article>
		</div>
	</section>

	<!--3-->
	<section class="main_box3">
		<article>
			<div class="wrap">
				<img src="${imagePath}/img_left_car.jpg">
				<div class="text_box3">
					<h2>
						누구나 구매한 뒤<br> 후회하지 않는<br> 견적서를 받고 싶어<br> 합니다.
					</h2>
					<p>
						하지만, 수많은 허위 견적서가 판치고 저렴함만을<br> 내세워 결함 있는 차량을 팔기도 합니다.<br> 바른청년 렌터카는 내가족에게 팔 수 있는 물건만<br> 고객님들께 소개해 드리고 있습니다.<br>
					</p>
				</div>
			</div>
		</article>
	</section>

    <!-- 4 -->

	<!--5-->
	<section class="main_box5">
		<article>
			<div class="text_box5">
				<h2>
					고객님이 알아보신<br> 그 가격은 진짜가 아닙니다.
				</h2>
				<p>같은차! 그러나 전혀 다른 렌트료! 어디에 먼저 문의를 하는 것이 좋을까요?</p>
				<img src="${imagePath}/img_stamp_answer.jpg">
			</div>
			<ul>
				<li class="li_left">
					<a href="#answer"> 
						<img src="${imagePath}/img_rent_car.jpg">
						<span class="case">CASE1</span>
						<p><span class="month">월 렌트료</span>283,628원</p>
					</a>
				</li>
				<li class="li_right">
					<a href="#answer"> 
						<img src="${imagePath}/img_rent_car.jpg">
						<span class="case">CASE2</span>
						<p><span class="month">월 렌트료</span>414,100원</p>
					</a>
				</li>
				<li class="li_right">
					<a href="#answer"> 
						<img src="${imagePath}/img_rent_car.jpg"> 
						<span class="case">CASE3</span>
						<p><span class="month">월 렌트료</span>452,900원</p>
					</a>
				</li>
				<li class="li_left">
					<a href="#answer"> 
					<img src="${imagePath}/img_rent_car.jpg">
					<span class="case">CASE4</span>
					<p><span class="month">월 렌트료</span>500,190원</p>
					</a>
				</li>
			</ul>
		</article>
	</section>

	<!--6-->
	<section class="main_box6">
		<article id="answer">
			<img src="${imagePath}/img_woman.png">
			<div class="text_box6">
				<span>답은?</span>
				<p class="p6_1">
					고객님이<br> 고르신 샘플견적은<br> 아무 의미가 없습니다!<br>
				</p>
				<p class="p6_2">
					렌트 비용이 결정되는 과정에는 정말 많은 요소가 있습니다.<br> 선수금, 초기비용, 보증금, 개월, 주행거리 등등등...<br> 이 모든 걸 예측한 사전 렌트료 제시는<br> 장기렌트 할아버지가 와도 불가능합니다.<br> 그래서 가장 싼 렌트료를 미리 정해 진짜인 것처럼<br> 제시하고 홍보를 하는 것입니다.
				</p>
			</div>
		</article>
	</section>

	<!--7-->
	<section class="main_box7">
		<article>
			<p class="p7_1">
				그렇다면<br> 무엇을 먼저 신경써야 할까요?
			</p>
			<ul>
				<li>
					<img src="${imagePath}/icon_when.jpg">
					<div class="text_box7">
						<span>WHEN</span>
						<h2>장기렌트는 언제 계약하는 게 가장 좋을까요?</h2>
						<p>지금 계약했을 때 이득인 부분이 있고, 계약일을 미뤘을 때 기대되는 혜택이 있을 수 있습니다. 빠른 출고, 렌탈료, 차종 등 고객님의 니즈에 따라 달라집니다.</p>
					</div>
				</li>
				<li>
					<img src="${imagePath}/icon_where.jpg">
					<div class="text_box7">
						<span>WHERE</span>
						<h2>장기렌트를 계약하려면 어디로 가야할까?</h2>
						<p>지금 있으신 그 공간에서 모든 절차를 진행할 수 있습니다. 바른청년은 온라인을 기반으로 경영하여 고정지출을 크게 줄일 수 있었습니다. 그 혜택은 고스란히 고객님 렌탈료에 녹아들 것입니다.</p>
					</div>
				</li>
				<li>
					<img src="${imagePath}/icon_who.jpg">
					<div class="text_box7">
						<span>WHO</span>
						<h2>장기렌트는 누구에게 계약을 해야 할까?</h2>
						<p>장기렌트는 수천만 원의 계약으로 단연코 신뢰 있는 사람과 계약해야 합니다. 신뢰 여부는 글로 설명이 안 됩니다. 고객님의 직감이 가장 확실하게 알려줄 거라고 생각하며, 바른청년은 자신 있습니다.</p>
					</div>
				</li>
				<li>
					<img src="${imagePath}/icon_what.jpg">
					<div class="text_box7">
						<span>WHAT</span>
						<h2>장기렌트는 어떤 차, 어떤 조건으로 계약을 해야 할까?</h2>
						<p>자동차 구매는 가치관이 크게 반영됩니다. 개인의 가치관에 있어 정답이 있을 리 없습니다. 가성비, 디자인, 편의옵션 등 고객님이 원하시는 것을 먼저 묻고 그에 맞는 차량을 가져다드리겠습니다.</p>
					</div>
				</li>
				<li>
					<img src="${imagePath}/icon_how.jpg">
					<div class="text_box7">
						<span>HOW</span>
						<h2>장기렌트는 어떻게 계약하는 걸까?</h2>
						<p>견적을 받아 보신 뒤에 진행을 희망하시면 심사 후 계약이 진행됩니다. 조건이 좋은 회사 일수록 심사가 까다롭기 마련인데요. 바른청년은 특히 심사를 잘 풀어냅니다.</p>
					</div>
				</li>
				<li>
					<img src="${imagePath}/icon_why.jpg">
					<div class="text_box7">
						<span>WHY</span>
						<h2>장기렌트, 왜 바른청년일까??</h2>
						<p>바른청년과 함께 장기렌트 하면! 원하는 시점에, 앉은 자리에서, 신뢰가 가는 사람과, 내마음에 쏙드는 차량을 간편 한 절차로 진행할 수 있기 때문입니다.</p>
					</div>
				</li>
			</ul>
		</article>
	</section>

	<!--8-->
	<section class="main_box8">
		<article>
			<div>
				<img src="${imagePath}/img_binder1.png" class="img8_1"> <img src="${imagePath}/img_binder2.png" class="img8_2">
			</div>
		</article>
	</section>

	<!--9-->
	<section class="main_box9">
		<article>
			<div class="divder"></div>
			<h2>
				바른청년 렌터카<br> 고객님만 알고 계세요.
			</h2>
			<p>
				1%만 알고 계약하는 영업기밀을 공개합니다.<br> 이제 진짜 가격을 보여드리겠습니다.
			</p>
		</article>
	</section>

	<!--10-->
	<section class="main_box10" id="main_form">
		<img src="${imagePath}/bg_man.jpg">
		<article>
			<p>영업기밀을 바탕으로 상담을 도와드리겠습니다.</p>
			<form action="${basePath}/home/a/insertSkipVisitorProc.do" name="visitorVO" id="visitorVO" method="post">
				<input type="hidden" name="accessPath" id="accessPath" value="">
				<input type="hidden" name="overlapCnt" id="overlapCnt" value="">
				<input type="text" name="visitorNm" id="visitorNm" onfocus="checker(this, 50 , 'nbytes_visitorNm');" onblur="stopchecker();" placeholder="이름">
				<input type="text" name="telNo" id="telNo" onfocus="checker(this, 11 , 'nbytes_telNo');" onblur="stopchecker();" placeholder="휴대번호를 입력해주세요">
				<input type="text" name="itrstdCarTy" id="itrstdCarTy" onfocus="checker(this, 50 , 'nbytes_itrstdCarTy');" onblur="stopchecker();" placeholder="관심차종을 입력해주세요">
			</form>
			<div>
				<input type="checkbox" id="privacyChk">개인정보 처리방침 동의*필수 
				<span style="cursor: pointer;" onclick="location.href='${basePath}/home/a/privacy.do'">[보기]</span>
			</div>
			<a href="javascript:void(0);" id="secretEstimateTarget" onclick="javascript:fn_insertSkipVisitorProc();">영업기밀 열어보기</a>
		</article>
	</section>

	<!--footer-->
	<footer>
		<div class="wrap">
			<p>(주)바른청년 렌터카 장기렌트</p>
			<address>
				서울특별시 서초구 서초대로 8, 100호 (서초동, 서초빌딩)<br> TEL : 02-123-4567 사업자번호 : 123-45-12345
			</address>
			<p>Copyright 2020 by carholic. All rights reserved.</p>
		</div>
	</footer>

	<!--하단 사이드바 표시-->
	<div class="contact_bar">
		<div class="kakao" style="cursor: pointer;" onclick="javascript:fn_kakaoConsulting();">
			카카오톡 상담 <img src="${imagePath}/icon_kakao.png">
		</div>
		<div class="survey" style="cursor: pointer;" onclick="javascript:fn_secretEstimate();">비밀견적받기</div>
	</div>

	<!-- 페이지 움직임 -->
	<script type="text/javascript" src="${scriptPath}/validation/validation.js"></script>
	<script type="text/javascript" src="${scriptPath}/common.js"></script>
	<script type="text/javascript">
	$(function() {
		$(".main_box1 .text_box h2").addClass("move_text1");
		$(".main_box1 .text_box p").addClass("move_text_up");
		$(window).scroll(function(event) {
		
			var scroll = $(window).scrollTop();
			<!--섹션1-->
			if(scroll >= "0" && scroll <="350") {
				$(".main_box1 .text_box h2").addClass("move_text1");
				$(".main_box1 .text_box p").addClass("move_text_up");
			}else if(scroll > "350"){
				$(".main_box1 .text_box h2").removeClass("move_text1");
				$(".main_box1 .text_box p").removeClass("move_text_up");
			}
			
			<!--섹션2_1-->
			if(scroll >= "700" && scroll <="1000") {
				$(".main_box2_1 h2").addClass("move_bottom");
			}else if(scroll < "700"){
				$(".main_box2_1 h2").removeClass("move_bottom");
			}else if(scroll > "1000"){
				$(".main_box2_1 h2").removeClass("move_bottom");
			}	
			
			<!--섹션3-->
			if(scroll >= "2500" && scroll <="3000") {
				$(".main_box3 .text_box3 h2").addClass("move_text1");
				$(".main_box3 .text_box3 p").addClass("move_text_up");
			}else if(scroll < "2500"){
				$(".main_box3 .text_box3 h2").removeClass("move_text1");
				$(".main_box3 .text_box3 p").removeClass("move_text_up");
			}else if(scroll > "3000"){
				$(".main_box3 .text_box3 h2").removeClass("move_text1");
				$(".main_box3 .text_box3 p").removeClass("move_text_up");
			}
			
			<!--섹션5-->
			if(scroll >= "3500" && scroll <="4000") {
				$(".main_box5 .text_box5 img").addClass("move_shake");
			
			}else if(scroll < "3500"){
				$(".main_box5 .text_box5 img").removeClass("move_shake");
			
			}else if(scroll > "4000"){
				$(".main_box5 .text_box5 img").removeClass("move_shake");
		
			}
			
			<!--섹션6-->
			if(scroll >= "4600" && scroll <="5000") {
				$(".main_box6 .text_box6 .p6_1").addClass("move_text1");
				$(".main_box6 .text_box6 .p6_2").addClass("move_bottom");
			}else if(scroll < "4600"){
				$(".main_box6 .text_box6 .p6_1").removeClass("move_text1");
				$(".main_box6 .text_box6 .p6_2").removeClass("move_bottom");
			}else if(scroll > "5000"){
				$(".main_box6 .text_box6 .p6_1").removeClass("move_text1");
				$(".main_box6 .text_box6 .p6_2").removeClass("move_bottom");
			}
		
			<!--섹션7-->
			if(scroll >= "5500" && scroll <="6000") {
				$(".main_box7 .p7_1").addClass("move_bottom");
			}else if(scroll < "5500"){
				$(".main_box7 .p7_1").removeClass("move_bottom");
			}else if(scroll > "6000"){
				$(".main_box7 .p7_1").removeClass("move_bottom");
			}
			
			<!--섹션8-->
			if(scroll >= "6900" && scroll <="7600") {
				$(".main_box8 .img8_1").addClass("move_left");
				$(".main_box8 .img8_2").addClass("move_right");
			}else if(scroll < "6900"){
				$(".main_box8 .img8_1").removeClass("move_left");
				$(".main_box8 .img8_2").removeClass("move_right");
			}else if(scroll > "7600"){
				$(".main_box8 .img8_1").removeClass("move_left");
				$(".main_box8 .img8_2").removeClass("move_right");
			}
			
			<!--섹션9-->
			if(scroll >= "7900" && scroll <="8400") {
				$(".main_box9 h2").addClass("move_text1");
			}else if(scroll < "7900"){
				$(".main_box9 h2").removeClass("move_text1");
			}else if(scroll > "8400"){
				$(".main_box9 h2").removeClass("move_text1");
			}
			
		});
	});
	
	var fn_secretEstimate = function() {
		var offset = $("#secretEstimateTarget").offset();
		$('html, body').animate({scrollTop : offset.top}, 400);
	};
	
	var fn_kakaoConsulting = function(){
		alert("주소오면 링크연결 준비중");
	};
	
	var fn_insertSkipVisitorProc = function() {
		if (!TypeChecker.required($("#visitorNm").val())) {
			alert("'이름'은  "+ TypeChecker.requiredText);
			$("#visitorNm").focus();
			return;
		}
		if (!TypeChecker.korEng($("#visitorNm").val())) {
			alert("'이름'은  "+ TypeChecker.korEngText);
			$("#visitorNm").focus();
			return;
		}
		if (!TypeChecker.required($("#telNo").val())) {
			alert("'휴대폰번호'는  "+ TypeChecker.requiredText);
			$("#telNo").focus();
			return;
		}
		if (!TypeChecker.number($("#telNo").val())) {
			alert("'휴대폰번호'는  "+ TypeChecker.numberText);
			$("#telNo").focus();
			return;
		}
		var telNo = $("#telNo").val();
		var telNoFront = telNo.substring(0, 3);
		if(telNoFront != "010") {
			alert("휴대폰번호 형식이 올바르지 않습니다.");
			return;
		}
		telNoFront = telNo.substring(0, 4);
		if(telNoFront == "0101") {
			alert("휴대폰번호 형식이 올바르지 않습니다.");
			return;
		}
		if (!TypeChecker.required($("#itrstdCarTy").val())) {
			alert("'차량명'은  "+ TypeChecker.requiredText);
			$("#itrstdCarTy").focus();
			return;
		}
		
		if(!$("#privacyChk").is(":checked")) {
			alert("개인정보 수집 및 이용동의에 동의해 주세요.");
			return;
		}
		
		var mobilecheck = function () {
			var check = false;
			(function(a,b){if(/(android|bb\d+|meego).+mobile|avantgo|bada\/|blackberry|blazer|compal|elaine|fennec|hiptop|iemobile|ip(hone|od)|iris|kindle|lge |maemo|midp|mmp|mobile.+firefox|netfront|opera m(ob|in)i|palm( os)?|phone|p(ixi|re)\/|plucker|pocket|psp|series(4|6)0|symbian|treo|up\.(browser|link)|vodafone|wap|windows ce|xda|xiino/i.test(a)||/1207|6310|6590|3gso|4thp|50[1-6]i|770s|802s|a wa|abac|ac(er|oo|s\-)|ai(ko|rn)|al(av|ca|co)|amoi|an(ex|ny|yw)|aptu|ar(ch|go)|as(te|us)|attw|au(di|\-m|r |s )|avan|be(ck|ll|nq)|bi(lb|rd)|bl(ac|az)|br(e|v)w|bumb|bw\-(n|u)|c55\/|capi|ccwa|cdm\-|cell|chtm|cldc|cmd\-|co(mp|nd)|craw|da(it|ll|ng)|dbte|dc\-s|devi|dica|dmob|do(c|p)o|ds(12|\-d)|el(49|ai)|em(l2|ul)|er(ic|k0)|esl8|ez([4-7]0|os|wa|ze)|fetc|fly(\-|_)|g1 u|g560|gene|gf\-5|g\-mo|go(\.w|od)|gr(ad|un)|haie|hcit|hd\-(m|p|t)|hei\-|hi(pt|ta)|hp( i|ip)|hs\-c|ht(c(\-| |_|a|g|p|s|t)|tp)|hu(aw|tc)|i\-(20|go|ma)|i230|iac( |\-|\/)|ibro|idea|ig01|ikom|im1k|inno|ipaq|iris|ja(t|v)a|jbro|jemu|jigs|kddi|keji|kgt( |\/)|klon|kpt |kwc\-|kyo(c|k)|le(no|xi)|lg( g|\/(k|l|u)|50|54|\-[a-w])|libw|lynx|m1\-w|m3ga|m50\/|ma(te|ui|xo)|mc(01|21|ca)|m\-cr|me(rc|ri)|mi(o8|oa|ts)|mmef|mo(01|02|bi|de|do|t(\-| |o|v)|zz)|mt(50|p1|v )|mwbp|mywa|n10[0-2]|n20[2-3]|n30(0|2)|n50(0|2|5)|n7(0(0|1)|10)|ne((c|m)\-|on|tf|wf|wg|wt)|nok(6|i)|nzph|o2im|op(ti|wv)|oran|owg1|p800|pan(a|d|t)|pdxg|pg(13|\-([1-8]|c))|phil|pire|pl(ay|uc)|pn\-2|po(ck|rt|se)|prox|psio|pt\-g|qa\-a|qc(07|12|21|32|60|\-[2-7]|i\-)|qtek|r380|r600|raks|rim9|ro(ve|zo)|s55\/|sa(ge|ma|mm|ms|ny|va)|sc(01|h\-|oo|p\-)|sdk\/|se(c(\-|0|1)|47|mc|nd|ri)|sgh\-|shar|sie(\-|m)|sk\-0|sl(45|id)|sm(al|ar|b3|it|t5)|so(ft|ny)|sp(01|h\-|v\-|v )|sy(01|mb)|t2(18|50)|t6(00|10|18)|ta(gt|lk)|tcl\-|tdg\-|tel(i|m)|tim\-|t\-mo|to(pl|sh)|ts(70|m\-|m3|m5)|tx\-9|up(\.b|g1|si)|utst|v400|v750|veri|vi(rg|te)|vk(40|5[0-3]|\-v)|vm40|voda|vulc|vx(52|53|60|61|70|80|81|83|85|98)|w3c(\-| )|webc|whit|wi(g |nc|nw)|wmlb|wonu|x700|yas\-|your|zeto|zte\-/i.test(a.substr(0,4)))check = true})(navigator.userAgent||navigator.vendor||window.opera);
			return check;
		}
		if(mobilecheck()){
			$("#visitorVO #accessPath").val("M");
		} else {
			$("#visitorVO #accessPath").val("P");
		}
		$("#overlapCnt").val(0);
		//중복체크
		$.ajax({ 	
			url: "${basePath}/home/a/selectMainStep7.do",
			type: 'POST',
			dataType : "json",
			data : $("#visitorVO").serialize(),
			error: function(){
				 alert("현재 조회 서비스가 원할하지 않습니다.\n잠시후 다시 이용해 주십시요.");
				 return;
			},
			success: function(r) { 
				$("#visitorVO #overlapCnt").val(r.overlapCnt);
				document.visitorVO.submit();
			}
		}); 
	};
	</script>
</body>
</html>