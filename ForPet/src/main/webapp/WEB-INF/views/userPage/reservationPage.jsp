<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
<style type="text/css">
	.boarder_box {
		margin: 30px auto;
		width: 70%;
		border: 2px solid #999;
	}
</style>
<title>Insert title here</title>
</head>
<body >
	<div style="padding: 30px 0px 30px 0">
		<header> 헤더 부분</header><hr>
	</div>
	<div style="text-align: center;">
		<h1> 예약내역 </h1>
	</div>
	
	<table class="table table-hover">
	  <thead>
	    <tr>
	      <th scope="col">삭제하기</th>
	      <th scope="col">예약날짜</th>
	      <th scope="col">제목</th>
	      <th scope="col">시작</th>
	      <th scope="col">끝</th>
	      <th scope="col">상태</th>
	    </tr>
	  </thead>
	<c:forEach items="${reservationSearch}" var="reservation">
	  <tbody>
	    <tr onClick = "location.href='/userPage/MyPage/detail'">
	      <td><input type="checkbox"></td>
	      <td>${reservation.bookingDate}</td>
	      <td>${reservation.title}</td>
	      <td>${reservation.start}</td>
	      <td>${reservation.end}</td>
	      <td>${reservation.progressState}</td>
	    </tr>
	  </tbody>
  </c:forEach>
</table>
</body>
</html>