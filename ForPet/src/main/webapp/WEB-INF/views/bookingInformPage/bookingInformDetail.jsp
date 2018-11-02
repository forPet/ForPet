<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<form role="form" action="/bookingInformPage/bookingInformDetail" method="get">
	<input type='hidden' name='bookingNumber' value="${BookingScheduleVO.bookingNumber}">
</form>

<script type="text/javascript">
	$(document).ready(function() {
		var formObj = $("form[role='form']");
		console.log(formObj);
		$(".btn-outline-success").on("click", function() {
			var sNum = $('#sNum').val();
			alert(sNum);
			formObj.attr("action", "/bookingInformPage/bookingConfirm?bookingNumber=${bookingNumber}");
			formObj.attr("method", "post");
			formObj.submit();
		});
		$(".btn-outline-danger").on("click", function() {
			var sNum = $('#sNum').val();
			alert(sNum);
			formObj.attr("action", "/bookingInformPage/bookingCancel?bookingNumber=${bookingNumber}");
			formObj.attr("method", "post");
			formObj.submit();
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
<div class="button">
	<button id="rightBtn" type="button" class="btn btn-outline-success btn-lg">수 락</button>
	<button type="button" class="btn btn-outline-danger btn-lg">거 절</button>
</div>
