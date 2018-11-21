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
	<div style="text-align: center;">
		<h1> 예약 상세 내역 </h1>
	</div>
	
	<div>
		${OneReservation.progressState}
	</div>
	
	<div>
		${OneReservation.title}
	</div>
	
	주문일시 : ${OneReservation.bookingDate} <br>
	
	주문번호${OneReservation.bookingNumber}<hr>
	
	<c:forEach items="${ReservationDetail}" var="detail">
		<table>
			<tr>	
				<td>
					${detail.extraServiceName} ${detail.extraPrice} : ${detail.count}개
				</td>
			</tr>
		</table>
	</c:forEach>
	시터 금액 : ${OneReservation.ServicePrice}
	총 금액 : ${OneReservation.totalPrice}원
	
	<table class="table table-hover">
	  <thead>
	    <tr>
	      <th scope="col">번호</th>
	      <th scope="col">예약날짜</th>
	      <th scope="col">제목</th>
	      <th scope="col">시작</th>
	      <th scope="col">끝</th>
	      <th scope="col">상태</th>
	    </tr>
	  </thead>
	<c:forEach items="${reservationSearch}" var="reservation" varStatus="status">
	  <tbody>
	    <tr onclick="popupCenter('/myPage/reservation/detail?bookingNumber=${reservation.bookingNumber}',800,600);">
	      <td>${status.count}</td>
	      <td>${reservation.bookingDate}</td>
	      <td>${reservation.title}</td>
	      <td>${reservation.start}</td>
	      <td>${reservation.end}</td>
	      <td>${reservation.progressState}</td>
	    </tr>
	  </tbody>
  </c:forEach>

</body>
<script>
</script>
</html>
