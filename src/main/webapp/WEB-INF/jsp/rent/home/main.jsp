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
<link rel="stylesheet" type="text/css" href="${cssPath}/landing.css">
<!-- 스크립트 선언 -->
<script type="text/javascript" src="${scriptPath}/jquery/jquery-1.12.3.min.js"></script>
</head>
<body>
	<!-- 전체-->
	<div id="target">
		<section>
			<article>
				<div class="logo_box_start">
					<h1 style="cursor: pointer;" onclick="location.href='${basePath}/home/a/main.do'">바른청년</h1>
				</div>
				<div class="text_box_center">
					<h2>
						<span class="style_blue">리스, 장기렌트의</span> 영업기밀 알고 계십니까?
					</h2>
					<p>
						<span class="text_none">장기렌트 영업기밀!</span>설문에 참여하시고 1%를 위한 특별할인을 받아보세요
					</p>
					<a href="javascript:void(0);" onclick="javascript:fn_selectMainStep('1', '', '');"><p class="btn_start">시작하기</p></a>
				</div>
				<a href="javascript:void(0);" onclick="javascript:fn_selectLanding();" class="btn_close start_none"></a>
				<a href="javascript:void(0);" onclick="javascript:fn_selectLanding();" class="btn_close_mo">건너뛰기 > </a>
			</article>
		</section>
	</div>
	<form action="/home/a/selectStep6.do" name="visitorVO" id="visitorVO" method="post">
		<input type="hidden" name="qtnId" id="qtnId">
		<input type="hidden" name="asrId" id="asrId">
		<input type="hidden" name="itrstdCarTy" id="itrstdCarTy">
		<input type="hidden" name="visitorNm" id="visitorNm">
		<input type="hidden" name="telNo" id="telNo">
		<input type="hidden" name="accessPath" id="accessPath">
		<input type="hidden" name="overlapCnt" id="overlapCnt">
	</form>
	<script type="text/javascript" src="${scriptPath}/validation/validation.js"></script>
	<script type="text/javascript" src="${scriptPath}/common.js"></script>
	<script type="text/javascript">
	var params = {};
	var qtnIdArr = [];
	var asrIdArr = [];
	var fn_selectMainStep = function(stepNum, qtnId, asrId) {
		if(stepNum == "2" || stepNum == "3" || stepNum == "4") {
			qtnIdArr.push(qtnId);
			asrIdArr.push(asrId);
		}
		if(stepNum == "5") {
			if (!TypeChecker.required($("#param").val())) {
				alert("'차량명'은  "+ TypeChecker.requiredText);
				$("#param").focus();
				return;
			}
			params.itrstdCarTy = $("#param").val();
		}
		$.ajax({
			url: "${basePath}/home/a/selectMainStep"+stepNum+".do",
			type: 'post',
			dataType : "html",
			error: function(){
				 alert("현재 서비스가 원할하지 않습니다.\n잠시후 다시 이용해 주십시요.");
				 return;
			},
			success: function(r) { 
				$("#target").children().remove();
				$("#target").html(r);
			}
		});
	};
	
	var fn_selectMainStep6 = function() {
		if (!TypeChecker.required($("#param").val())) {
			alert("'성함'은  "+ TypeChecker.requiredText);
			$("#param").focus();
			return;
		}
		if (!TypeChecker.korEng($("#param").val())) {
			alert("'성함'은  "+ TypeChecker.korEngText);
			$("#param").focus();
			return;
		}
		params.visitorNm = $("#param").val();
		
		$("#visitorVO #qtnId").val(qtnIdArr);
		$("#visitorVO #asrId").val(asrIdArr);
		$("#visitorVO #itrstdCarTy").val(params.itrstdCarTy);
		$("#visitorVO #visitorNm").val(params.visitorNm);
		$("#visitorVO #overlapCnt").val(0);
		document.visitorVO.submit();
	};
	
	var fn_selectLanding = function() {
		var mobilecheck = function () {
			var check = false;
			(function(a,b){if(/(android|bb\d+|meego).+mobile|avantgo|bada\/|blackberry|blazer|compal|elaine|fennec|hiptop|iemobile|ip(hone|od)|iris|kindle|lge |maemo|midp|mmp|mobile.+firefox|netfront|opera m(ob|in)i|palm( os)?|phone|p(ixi|re)\/|plucker|pocket|psp|series(4|6)0|symbian|treo|up\.(browser|link)|vodafone|wap|windows ce|xda|xiino/i.test(a)||/1207|6310|6590|3gso|4thp|50[1-6]i|770s|802s|a wa|abac|ac(er|oo|s\-)|ai(ko|rn)|al(av|ca|co)|amoi|an(ex|ny|yw)|aptu|ar(ch|go)|as(te|us)|attw|au(di|\-m|r |s )|avan|be(ck|ll|nq)|bi(lb|rd)|bl(ac|az)|br(e|v)w|bumb|bw\-(n|u)|c55\/|capi|ccwa|cdm\-|cell|chtm|cldc|cmd\-|co(mp|nd)|craw|da(it|ll|ng)|dbte|dc\-s|devi|dica|dmob|do(c|p)o|ds(12|\-d)|el(49|ai)|em(l2|ul)|er(ic|k0)|esl8|ez([4-7]0|os|wa|ze)|fetc|fly(\-|_)|g1 u|g560|gene|gf\-5|g\-mo|go(\.w|od)|gr(ad|un)|haie|hcit|hd\-(m|p|t)|hei\-|hi(pt|ta)|hp( i|ip)|hs\-c|ht(c(\-| |_|a|g|p|s|t)|tp)|hu(aw|tc)|i\-(20|go|ma)|i230|iac( |\-|\/)|ibro|idea|ig01|ikom|im1k|inno|ipaq|iris|ja(t|v)a|jbro|jemu|jigs|kddi|keji|kgt( |\/)|klon|kpt |kwc\-|kyo(c|k)|le(no|xi)|lg( g|\/(k|l|u)|50|54|\-[a-w])|libw|lynx|m1\-w|m3ga|m50\/|ma(te|ui|xo)|mc(01|21|ca)|m\-cr|me(rc|ri)|mi(o8|oa|ts)|mmef|mo(01|02|bi|de|do|t(\-| |o|v)|zz)|mt(50|p1|v )|mwbp|mywa|n10[0-2]|n20[2-3]|n30(0|2)|n50(0|2|5)|n7(0(0|1)|10)|ne((c|m)\-|on|tf|wf|wg|wt)|nok(6|i)|nzph|o2im|op(ti|wv)|oran|owg1|p800|pan(a|d|t)|pdxg|pg(13|\-([1-8]|c))|phil|pire|pl(ay|uc)|pn\-2|po(ck|rt|se)|prox|psio|pt\-g|qa\-a|qc(07|12|21|32|60|\-[2-7]|i\-)|qtek|r380|r600|raks|rim9|ro(ve|zo)|s55\/|sa(ge|ma|mm|ms|ny|va)|sc(01|h\-|oo|p\-)|sdk\/|se(c(\-|0|1)|47|mc|nd|ri)|sgh\-|shar|sie(\-|m)|sk\-0|sl(45|id)|sm(al|ar|b3|it|t5)|so(ft|ny)|sp(01|h\-|v\-|v )|sy(01|mb)|t2(18|50)|t6(00|10|18)|ta(gt|lk)|tcl\-|tdg\-|tel(i|m)|tim\-|t\-mo|to(pl|sh)|ts(70|m\-|m3|m5)|tx\-9|up(\.b|g1|si)|utst|v400|v750|veri|vi(rg|te)|vk(40|5[0-3]|\-v)|vm40|voda|vulc|vx(52|53|60|61|70|80|81|83|85|98)|w3c(\-| )|webc|whit|wi(g |nc|nw)|wmlb|wonu|x700|yas\-|your|zeto|zte\-/i.test(a.substr(0,4)))check = true})(navigator.userAgent||navigator.vendor||window.opera);
			return check;
		}
		if(mobilecheck()){
			location.href = "${basePath}/home/a/selectMobileLanding.do";
		} else {
			location.href = "${basePath}/home/a/selectLanding.do";
		}
	};
	</script>
</body>
</html>