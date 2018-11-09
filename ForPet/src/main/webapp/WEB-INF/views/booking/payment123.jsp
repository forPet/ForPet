<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="../resources/plugins/jQuery/jQuery-2.1.4.min.js"></script>
<script src="//apps.bdimg.com/libs/jquery/1.10.2/jquery.min.js"></script>
<script src="//apps.bdimg.com/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />  
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>  
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script> 

<style type="text/css">
#test {
	height: 100px;
	padding: 10px;
}

ul {
	all: unset;
	display: table;
	margin-left: auto;
}

#payment_button {
	display: table;
	margin-right: auto;
	margin-left: auto;
}

.boarder_box {
	margin: 30px auto;
	width: 70%;
	border: 2px solid #999;
}
</style>
</head>
<body>
	<div style="padding: 30px 0 30px 0">
		<header>헤더 부분 </header><hr>
	</div>
	<div style="text-align: center;">
	<h1>펫시팅 예약 신청</h1>
	<p> 원하시는 부가서비스 및 날짜만 알려주시면 예약을 도와드리겠습니다.</p>
	</div>
	<div class="boarder_box">
		<div style="margin: 50px">
			<h3><span> 동물을 픽업할 지역을 알려주세요. </span></h3>
			<form role="form" method="post">
				<input type="text" name="pickupAddress" size= "70" placeholder="원하시는 지역을 적어주세요 공백이면 유저집으로 들어갑니다">
			</form>
		</div>
	</div>
	<div class="boarder_box">
		<div style="margin: 50px">
			<h3><span> 펫시팅 날짜를 알려주세요. </span></h3>
			<form role="form" method="post">
				<div style="margin: 0px 20px 0px 0px">
					<input type="text" class="datepicker" name="startHour" placeholder="펫시팅 시작일" size="50" style="margin: 0px 50px 0px 0px">
					<input type="text" class="datepicker" name="endHour" placeholder="펫시팅 종료일" size="50" style="margin: 0px 50px 0px 0px">
				</div>
			</form>
		</div>
	</div>
	<div class="boarder_box">
		<div style="margin: 50px">
			<h3><span> 펫시터에게 전할 말을 남겨주세요(약먹이기 등등..) </span></h3>
			<form role="form" method="post">
				<div style="margin: 0px 20px 0px 0px">
					<input type="text" name="asd" placeholder="요청사항" size="50" style="margin: 0px 50px 0px 0px" size="70"><br>
				</div>
			</form>
		</div>
	</div>
	<div class="boarder_box">
		<div style="margin: 50px">
			<h3><span>추가 부가서비스를 선택해주세요</span></h3>
			<form role="form" method="post">
				<c:forEach items="${sitterExtra}" var="extra">
					<table>
						<tr>	
							<td>
								<input type=hidden class="sell_price${extra.extraServiceName}" value="${extra.extraSerivcePrice}">
								<input type=hidden class="extra_cnt${extra.extraServiceName}" value="1">
								${extra.extraServiceType} ${extra.extraServiceName} : ${extra.extraSerivcePrice}원 
								<input type="text" class="cnt${extra.extraServiceName}" value="0" size="5">
								<input class="price_add" type="button" value=" + " division="${extra.extraServiceName}"> <!-- 나중에 onclick으로 변경 해야 할 것 같음 division이 중복  -->
								<input class="price_del" type="button" value=" - " division="${extra.extraServiceName}"><br> <!-- 나중에 onclick으로 변경 해야 할 것 같음  -->
							</td>
						</tr>
					</table>
				</c:forEach>
			</form>
		</div>
	</div>
	<div class="boarder_box">
		<h3><span>결제 정보</span></h3>
		<form role="form" method="post">
			<input id="extra_price" name="extraServicePrice" value=0 style="border-style: none;">
			<input id="sitter_price" name="ServicePrice" value=17000 style="border-style: none;">
			<input id="total_price" name="totalPrice" value=17000 style="border-style: none;">
			<div>
				<div id="payment_button">
					<button type="button" id="cancle">취소</button>
					<button type="submit" id="payment">결제</button>
				</div>
			</div>
		</form>
	</div>
</body>
<script>
$(document).ready(function() {
	$(".price_add").on("click", function() {  /* 추후 시간 날때 add와 del의 겹치는 구문 제거*/
		var extra_price = parseInt($("#extra_price").val());
		var division = $(this).attr("division");
		var total_price = parseInt($("#total_price").val());
		
		var extra_cnt = parseInt($(".extra_cnt" + division).val());
		var cnt = parseInt($(".cnt" + division).val());
		var sell_price = parseInt($(".sell_price" + division).val());
		
		console.log(sell_price);
		
		extra_price += sell_price;
		extraPrice(extra_price);
		
		total_price += sell_price;
		total_Price(total_price);
		
		$("span#test123").val(extra_price + "원");
	});
});
$(function() {
	$(".datepicker").datepicker({
		minDate : -20,
		maxDate : "+1M +10D"
	});
});

function total_Price(total_price) {
	$("#total_price").val(total_price);
}

function extraPrice(extra_price) {
	document.getElementById("extra_price").value = extra_price;
}
	
</script>
</html>
