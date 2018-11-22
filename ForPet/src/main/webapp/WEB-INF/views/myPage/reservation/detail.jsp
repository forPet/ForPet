<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="//apps.bdimg.com/libs/jquery/1.10.2/jquery.min.js"></script>
<script src="//apps.bdimg.com/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />  
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>  
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script> 
<title>Insert title here</title>


</head>
<body>
	<div style="padding: 30px 0px 30px 0">
		<header> 헤더 부분</header><hr>
	</div>
	<div>
		${OneReservation.progressState}
	</div>
	
	<div style="text-align: center;">
		<h1> 예약 상세 내역 </h1>
	</div>
	
	<div>
		${OneReservation.title}
	</div>
	
	예약일시 : ${OneReservation.bookingDate} <br>
	
	예약번호${OneReservation.bookingNumber}<hr>
	
	<c:forEach items="${ReservationDetail}" var="detail">
		<table>
			<tr>	
				<td>
					${detail.extraServiceName} ${detail.extraPrice}원 : ${detail.count}개
				</td>
			</tr>
		</table>
	</c:forEach><hr>
	
	부가서비스 금액 : ${OneReservation.extraServicePrice}원<br>
	총 금액 : ${OneReservation.totalPrice}원

<input type="button" id="paymentButtonOpen" style="display:none;" value="결제하기">

<form id="paymentWindow" method="post" style="display:none;">
	<input type="text" id="moneyBox" name="paymentPrice" placeholder="결제 하실 금액을 입력해주세요" size="30">
	<input type="submit" id="payment" value="결제완료" disabled="">
</form>
	
</body>
<script>
if("${PaymentVO.paymentState}" === "결제 완료") {
	console.log("결제 완료");
} else {
	if("${OneReservation.progressState}" === "수락완료") {
		$("#paymentButtonOpen").toggle();
	}

	$("#paymentButtonOpen").on("click", function() {
		$("#paymentButtonOpen").toggle();
		$("#paymentWindow").toggle();
	});

	$("#moneyBox").change(function() {
		if($("#moneyBox").val() === "${OneReservation.totalPrice}") {
			console.log("맞")
			$('#payment').attr('disabled', false);
		} else {
			console.log("아님")
			$('#payment').attr('disabled', true);
		}
	});
	$("#payment").on("click", function() {
		var money = $("#moneyBox").val();
		$.ajax({
		    type : 'post',
		    url : 'http://localhost:8080/myPage/reservation/detail',
		    dataType : 'text',
		    data : money,	
		    success : function(result) {
		    	window.close();
		    },
		});
	});
}
</script>
</html>
