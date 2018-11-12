<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<form role="form" action="/bookingInformPage/bookingInformDetail" method="get">
	<input type='hidden' name='bookingNumber' value="${BookingVO.bookingNumber}">
</form>

<style>
.main-fluid {
	width: 100%;
	height: 250px;
}
</style>

<script type="text/javascript">
	$(document).ready(function() {
		var formObj = $("form[role='form']");
		console.log(formObj);
		$(".btn-outline-success").on("click", function() {
			var sNum = $('#sNum').val();
			clickConfirm('${bookingNumber}', sNum);
			alert("수락이 완료되었습니다.");
		});
		$(".btn-outline-danger").on("click", function() {
			var sNum = $('#sNum').val();
			clickCancel('${bookingNumber}', sNum);
			var popUrl = "/bookingInformPage/reasonForRefusal?bookingNumber=" + ${bookingNumber};
			var popOption = "width=370, height=360, resizable=no, scrollbars=no, status=no;";    //팝업창 옵션(optoin)
			window.open(popUrl,"",popOption);
			clickCancelReturnResult('${bookingNumber}', sNum);
			alert("거절이 완료되었습니다.");
		});
	});
</script>

<h3 class="my-3" id="infrmDetailMain">예약 상세 정보</h3>
<div class=sideBar>
	<a href="#"> <img class="main-fluid" src="/resources/images/zizi.JPG" alt="">
	</a>
</div>
<ul>
	<c:forEach items="${list}" var="BookingVO">
		<c:forEach items="${BookingVO.userPetVO}" var="UserPetVO">
			<c:forEach items="${BookingVO.userVO}" var="UserVO">
				<c:forEach items="${BookingVO.sitterVO}" var="SitterVO">
				<input type='hidden' id='sNum' name='sitterNumber' value="${SitterVO.sitterNumber}">
				<li class="b-inform">예약자 : ${UserVO.userName}</li>
            	<li class="b-inform">반려동물 이름 : ${UserPetVO.petName}</li>
            	<li class="b-inform">예약날짜 : ${BookingVO.bookingDate}</li>
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

<!-- 예약 수락 시 예약 상태 응답 ajax -->
<script>
  function clickConfirm(bookingNumber, sitterNumber) {
	     $.ajax({
	         url: "bookingConfirm",
	         async: false,
	         data: {
	            "bookingNumber" : bookingNumber,
	            "sitterNumber" : sitterNumber
	         },
	         type: 'POST',
	         success:
	        	 location.href = "/bookingInformPage/bookingInformMain?sitterNumber=" + sitterNumber
	      });
	     return false;
  }
</script>

<!-- 예약 거절 시 스케쥴 삭제 ajax -->
<script>
  function clickCancel(bookingNumber, sitterNumber) {
	     $.ajax({
	         url: "bookingCancel",
	         async: false,
	         data: {
	        	 "bookingNumber" : bookingNumber,
		         "sitterNumber" : sitterNumber
	         },
	         type: 'POST',
	       	 success: 
		        	 location.href = "/bookingInformPage/bookingInformMain?sitterNumber=" + sitterNumber
	      });
  }
</script>

<!-- 예약 거절 시 예약상테 수정 ajax -->
<script>
  function clickCancelReturnResult(bookingNumber, sitterNumber) {
	     $.ajax({
	         url: "bookingCancelReturnResult",
	         async: false,
	         data: {
	        	 "bookingNumber" : bookingNumber,
		         "sitterNumber" : sitterNumber
	         },
	         type: 'POST',
	         success: 
	        	 location.href = "/bookingInformPage/bookingInformMain?sitterNumber=" + sitterNumber
	      });
  }
</script>
