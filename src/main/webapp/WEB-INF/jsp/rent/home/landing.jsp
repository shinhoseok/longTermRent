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
		<article class="group1">
			<div class="wrap">
				<div class="logo_box">
					<h1 style="cursor: pointer;" onclick="location.href='${basePath}/home/a/main.do'">바른청년 렌트카</h1>
					<p>대한민국 렌터카 진짜 가격!</p>
				</div>
				<div class="text_box">
					<h2>
						장기렌트/리스견적<br> 영업기밀을 고객님께만<br> 알려드립니다.
					</h2>
					<p>
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
					<span> HONEST<br> CAR<br> RENTAL
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

	<!--4-->
	<section class="main_box4">
		<div class="wrap">
			<article>
				<div class="text_box4">
					<div class="divder"></div>
					<h2>바른청년 렌터카 소개영상</h2>
					<p>대한민국 렌터카 진짜 가격!</p>
				</div>
				<div class="youtube_box">
					<iframe width="100%" height="100%" src="<c:out value="${youtubeLinkVO.linkAddr}"/>" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
				</div>
			</article>
		</div>
	</section>

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
				<li><a href="#"> <img src="${imagePath}/img_rent_car.jpg"> <span class="case">CASE1</span>
						<p>
							<span class="month">월 렌트료</span>283,628원
						</p>
				</a></li>
				<li><a href="#"> <img src="${imagePath}/img_rent_car.jpg"> <span class="case">CASE2</span>
						<p>
							<span class="month">월 렌트료</span>414,100원
						</p>
				</a></li>
				<li><a href="#"> <img src="${imagePath}/img_rent_car.jpg"> <span class="case">CASE3</span>
						<p>
							<span class="month">월 렌트료</span>452,900원
						</p>
				</a></li>
				<li><a href="#"> <img src="${imagePath}/img_rent_car.jpg"> <span class="case">CASE4</span>
						<p>
							<span class="month">월 렌트료</span>500,190원
						</p>
				</a></li>

			</ul>
		</article>
	</section>

	<!--6-->
	<section class="main_box6">
		<article>
			<img src="${imagePath}/img_woman.png">
			<div class="text_box6">
				<span>답은?</span>
				<p>
					고객님이<br> 고르신 샘플견적은<br> 아무 의미가 없습니다!<br>
				</p>
				<p>
					렌트 비용이 결정되는 과정에는 정말 많은 요소가 있습니다.<br> 선수금, 초기비용, 보증금, 개월, 주행거리 등등등...<br> 이 모든 걸 예측한 사전 렌트료 제시는<br> 장기렌트 할아버지가 와도 불가능합니다.<br> 그래서 가장 싼 렌트료를 미리 정해 진짜인 것처럼<br> 제시하고 홍보를 하는 것입니다.
				</p>
			</div>
		</article>
	</section>

	<!--7-->
	<section class="main_box7">
		<article>
			<p>
				그렇다면<br> 무엇을 먼저 신경써야 할까요?
			</p>
			<ul>
				<li><img src="${imagePath}/icon_when.jpg">
					<div class="text_box7">
						<span>WHEN</span>
						<h2>장기렌트는 언제 계약하는게 가장 좋을까요?</h2>
						<p>
							지금 계약했을 때 이득인 부분이 있고, 계약일을 미뤘을<br> 때 기대되는 혜택이 있을 수 있습니다.빠른 출고, 렌탈<br> 료, 차종 등 고객님의 니즈에 따라 달라집니다.
						</p>
					</div></li>
				<li><img src="${imagePath}/icon_where.jpg">
					<div class="text_box7">
						<span>WHERE</span>
						<h2>장기렌트를 계약하려면 어디로 가야할까?</h2>
						<p>
							지금 있으신 그 공간에서 모든절차를 진행할 수 있습니<br> 다. 바른청년은 온라인을 기반으로 경영하여 고정지출<br> 을 크게 줄일 수 있었습니다. 그 혜택은 고스란히 고객<br> 님 렌탈료에 녹아 들 것입니다.
						</p>
					</div></li>
				<li><img src="${imagePath}/icon_who.jpg">
					<div class="text_box7">
						<span>WHO</span>
						<h2>장기렌트는 누구에게 계약을 해야 할까?</h2>
						<p>
							장기렌트는 수천만 원의 계약으로 단연코 신뢰 있는 사<br> 람과 계약해야 합니다. 신뢰여부는 글로 설명이 안됩니<br> 다. 고객님의 직감이 가장 확실하게 알려줄 거 라고 생<br> 각하며, 바른청년은 자신 있습니다.
						</p>
					</div></li>
				<li><img src="${imagePath}/icon_what.jpg">
					<div class="text_box7">
						<span>WHAT</span>
						<h2>장기렌트는 어떤 차, 어떤 조건으로 계약을 해야 할까?</h2>
						<p>
							지금 있으신 그 공간에서 모든절차를 진행할 수 있습니<br> 다. 바른청년 렌터카는 온라인을 기반으로 경영하여 고<br> 정지출을 크게 줄일 수 있었습니다. 그 혜택은 고스란히<br> 고객님 렌탈료에 녹아 들 것입니다.
						</p>
					</div></li>
				<li><img src="${imagePath}/icon_how.jpg">
					<div class="text_box7">
						<span>HOW</span>
						<h2>장기렌트는 어떻게 계약하는 걸까?</h2>
						<p>
							견적을 받아 보신 뒤에 진행을 희망하시면 심사 후 계약<br> 이 진행됩니다. 조건이 좋은 회사 일수록 심사가 까다롭<br> 기 마련인데요. 바른청년은 특히 심사를 잘 풀어냅니다.
						</p>
					</div></li>
				<li><img src="${imagePath}/icon_why.jpg">
					<div class="text_box7">
						<span>WHY</span>
						<h2>장기렌트, 왜 바른청년일까??</h2>
						<p>
							바른청년과 함께 장기렌트 하면! 원하는 시점에,<br> 앉은 자리에서, 신뢰가 가는 사람과, 내마음에 쏙드는 <br> 차량을 간편 한 절차로 진행할 수 있기 때문입니다.
						</p>
					</div></li>
			</ul>
		</article>
	</section>

	<!--8-->
	<section class="main_box8">
		<article>
			<div>
				<img src="${imagePath}/img_binder1.jpg"> <img src="${imagePath}/img_binder2.jpg">
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
	<section class="main_box10">
		<img src="${imagePath}/bg_man.jpg">
		<article>
			<p>영업기밀을 바탕으로 상담을 도와드리겠습니다.</p>
			<form>
				<input type="text" placeholder="이름">
				<input type="text" placeholder="휴대번호를 입력해주세요">
				<input type="text" placeholder="관심차종을 입력해주세요">
			</form>
			<div>
				<input type="checkbox">개인정보 처리방침 동의*필수 [보기]
			</div>
			<a href="#">영업기밀 열어보기</a>
		</article>
	</section>

	<!--하단 사이드바 표시-->
	<div class="contact_bar">
		<div class="kakao"></div>
		<div class="survey"></div>
	</div>
</body>
<footer>
	<div class="wrap">
		<p style="cursor: pointer;" onclick="location.href='${basePath}/login/a/login.do'">(주)바른청년 렌터카 장기렌트</p>
		<address>
			서울특별시 서초구 서초대로 8, 100호 (서초동, 서초빌딩)<br> TEL : 02-123-4567 사업자번호 : 123-45-12345
		</address>
		<p>Copyright 2020 by carholic. All rights reserved.</p>
	</div>
</footer>
</html>