<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<form role="form" action="/bookingInformPage/bookingConfirm" method="get">
	<input type='hidden' name='bookingNumber' value="${BookingVO.bookingNumber}">
</form>

<script type="text/javascript">
	$(document).ready(function() {
		var formObj = $("form[role='form']");
		console.log(formObj);
		$("#confirmBtn").on("click", function() {
			alert("예약 진행 페이지로 이동합니다.");
			location.href = "/bookingProgressPage/bookingProgressMain";
		});
	});
</script>

<h3 class="my-3">예약 상세 정보</h3>
<div class=sideBar>
	<a href="#"> <img class="img-fluid"
		src="/resources/images/zizi.JPG" alt="">
	</a>
</div>
<ul>
	<c:forEach items="${list}" var="BookingVO">
		<c:forEach items="${BookingVO.userPetVO}" var="UserPetVO">
			<c:forEach items="${BookingVO.userVO}" var="UserVO">
				<c:forEach items="${BookingVO.sitterVO}" var="SitterVO">
				<input type='hidden' id='sNum' name='sitterNumber' value="${SitterVO.sitterNumber}">
				<li class="b-inform">예약자</li>${UserVO.userName}
            	<li class="b-inform">반려동물 이름</li>${UserPetVO.petName}
            	<li class="b-inform">예약날짜</li>${BookingVO.bookingDate}
	            <li class="b-inform">부가사항</li>
	           	 			종류 : ${UserPetVO.petType}<br>
	            			성별 : ${UserPetVO.petGender} 
	            </c:forEach>
	        </c:forEach>
		</c:forEach>
	</c:forEach>
</ul>
<div class="my-3">
	<button id="confirmBtn" type="button" class="btn btn-outline-success btn-lg">예약 진행 확인</button>
</div>

