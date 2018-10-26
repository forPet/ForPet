<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="../resources/plugins/jQuery/jQuery-2.1.4.min.js"></script>
<script src="//apps.bdimg.com/libs/jquery/1.10.2/jquery.min.js"></script>
<script src="//apps.bdimg.com/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>
<style type="text/css">
#test {
	height: 100px;
	border-style: solid;
	border-width: 2px;
	padding: 10px;
}
</style>
</head>
<body>
	<div style="padding: 30px 0 30px 0 ">
		<header>헤더 부분 </header>
	</div>
	<hr>
	<div>결제 정보</div>
	<div style="margin: 0 auto; width: 70%; border-style: solid;">
		<div>
			<strong>부가서비스 창</strong>
		</div>
		
		<div style="float: right;">
			<div>시작일：<input type="text" id="datepicker"></div>
			<div>종료일：<input type="text" id="datepicker"></div>
		</div>
			<c:forEach items="${sitterExtra}" var="extra">
				<div class="price">
					${extra.extraServiceType} ${extra.extraServiceName} : ${extra.extraSerivcePrice}원
						<input type=hidden class="sell_price${extra.extraServiceName }" value="${extra.extraSerivcePrice}" id="price">
						<input type="text" name="amount" value="0" size="3" >
						<input class="asd" type="button" value = " + " asd division="${extra.extraServiceName}">
						<input type="button" value=" - " onclick="del();"><br>
				</div>
			</c:forEach>
		<span>
			부가서비스 금액 <input type="text" id="price" value="123" readonly style="border:none">
		</span>
		
		<div style="border-style: solid; border-color: yellow;">
			결제 수단 선택
		</div>
		
		<div id="test" style="margin: 10px auto">
			<div class="modal-title"></div>
			<div>
				결제정보
				<div>
				<span>
					부가서비스 비용 : $("#mon").val() 펫시터 비용 : 
				</span>
				금액 : <input type="text" name="sum" size="11" readonly name="sum"><br>
				합계 보기 <input type="button" id="re" value="+"> "이건 곧 고칠것"
				</div>
			<button type="button" id="cancle">취소</button>
			<button type="button" id="payment">결제</button>
			</div>
		</div>
	</div>
</body>
</html>
<script>
$(".price .asd").on("click", function () {
	  var div = $(this).attr("division");
		var asd = $("div[division]"+div)  
	  var number = $(".sell_price"+div).val();
		var ggggg = $(".asd"+div).parents("div");
		
	  console.log(number);
	  console.log(this);
	  console.log(asd);
	  console.log(div);
	  console.log(ggggg);
	  
	  
})

	$(function() {
		$("#datepicker").datepicker({
			minDate : -20,
			maxDate : "+1M +10D"
		});
	});

	$(document).ready(function() {
		$("#payment").click(function() {
			alert("결제 페이지 이동")
		});
		$("#cancle").click(function() {
			window.history.back();
		});

		$(".btn-warning").on("click", function() {
			console.log("adas");
			self.location = "/booking/test";
		});

		$("#re").on("click", function() {

		});
	});
</script>
</html>
