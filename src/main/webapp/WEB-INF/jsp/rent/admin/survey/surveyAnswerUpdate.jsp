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
				<p class="contentTitle f_blue">설문조사 관리</p>
				<p class="sub_path">
					<img src="${imagePath }/ico_home.png" width="10" height="9" />&nbsp;〉&nbsp;설문조사 관리&nbsp;〉&nbsp;답변 수정
				</p>

				<h4 class="contentTitle_h4">질문1 답변</h4>
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
								<td colspan="4" class="f_more_b">장기렌트, 영업기밀을 알면 특별한 할인이 있다는 것을 아시나요?</td>
							</tr>
							<tr>
								<th class="bullet_orange">답변 1_1</th>
								<td>그렇다</td>
								<th class="bullet_orange">답변 1_1 변경</th>
								<td>
									<div class="commonSearch_wrap">
										<label class="blind" for=" ">d</label> <input id=" " style="width: 200px;" type="text" placeholder="새로운 답변을 입력하세요.">
										<button type="button" class="blueBtn M">수정</button>
									</div>
								</td>
							</tr>
							<tr>
								<th class="bullet_orange">답변 1_2</th>
								<td>아니다</td>
								<th class="bullet_orange">답변 1_2변경</th>
								<td>
									<div class="commonSearch_wrap">
										<label class="blind" for=" ">d</label> <input id=" " style="width: 200px;" type="text" placeholder="새로운 답변을 입력하세요.">
										<button type="button" class="blueBtn M">수정</button>
									</div>
								</td>
							</tr>
							<tr>
								<th class="bullet_orange">답변 1_3</th>
								<td>모르겠다.</td>
								<th class="bullet_orange">답변 1_3 변경</th>
								<td>
									<div class="commonSearch_wrap">
										<label class="blind" for=" ">d</label> <input id=" " style="width: 200px;" type="text" placeholder="새로운 답변을 입력하세요.">
										<button type="button" class="blueBtn M">수정</button>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
				</div>

				<h4 class="contentTitle_h4">질문2</h4>
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
								<td colspan="4" class="f_more_b">에이전시, 대리점, 홈쇼핑의 차이점을 알고 계신가요?</td>
							</tr>
							<tr>
								<th class="bullet_orange">답변 2_1</th>
								<td>모른다</td>
								<th class="bullet_orange">답변 2_1 변경</th>
								<td>
									<div class="commonSearch_wrap">
										<label class="blind" for=" ">d</label> <input id=" " style="width: 200px;" type="text" placeholder="새로운 답변을 입력하세요.">
										<button type="button" class="blueBtn M">수정</button>
									</div>
								</td>
							</tr>
							<tr>
								<th class="bullet_orange">답변 2_2</th>
								<td>알고있다</td>
								<th class="bullet_orange">답변 2_2변경</th>
								<td>
									<div class="commonSearch_wrap">
										<label class="blind" for=" ">d</label> <input id=" " style="width: 200px;" type="text" placeholder="새로운 답변을 입력하세요.">
										<button type="button" class="blueBtn M">수정</button>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
				</div>

				<h4 class="contentTitle_h4">질문3</h4>
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
								<td colspan="4" class="f_more_b">생각하시는 월 비용은 얼마인가요?</td>
							</tr>
							<tr>
								<th class="bullet_orange">답변 3_1</th>
								<td>40만원 미만</td>
								<th class="bullet_orange">답변 3_1 변경</th>
								<td>
									<div class="commonSearch_wrap">
										<label class="blind" for=" ">d</label> <input id=" " style="width: 200px;" type="text" placeholder="새로운 답변을 입력하세요.">
										<button type="button" class="blueBtn M">수정</button>
									</div>
								</td>
							</tr>
							<tr>
								<th class="bullet_orange">답변 3_2</th>
								<td>41~60만원</td>
								<th class="bullet_orange">답변 3_2변경</th>
								<td>
									<div class="commonSearch_wrap">
										<label class="blind" for=" ">d</label> <input id=" " style="width: 200px;" type="text" placeholder="새로운 답변을 입력하세요.">
										<button type="button" class="blueBtn M">수정</button>
									</div>
								</td>
							</tr>
							<tr>
								<th class="bullet_orange">답변 3_3</th>
								<td>61~70만원</td>
								<th class="bullet_orange">답변 3_3변경</th>
								<td>
									<div class="commonSearch_wrap">
										<label class="blind" for=" ">d</label> <input id=" " style="width: 200px;" type="text" placeholder="새로운 답변을 입력하세요.">
										<button type="button" class="blueBtn M">수정</button>
									</div>
								</td>
							</tr>
							<tr>
								<th class="bullet_orange">답변 3_4</th>
								<td>70만원 이상</td>
								<th class="bullet_orange">답변 3_4변경</th>
								<td>
									<div class="commonSearch_wrap">
										<label class="blind" for=" ">d</label> <input id=" " style="width: 200px;" type="text" placeholder="새로운 답변을 입력하세요.">
										<button type="button" class="blueBtn M">수정</button>
									</div>
								</td>
							</tr>

						</tbody>
					</table>
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
