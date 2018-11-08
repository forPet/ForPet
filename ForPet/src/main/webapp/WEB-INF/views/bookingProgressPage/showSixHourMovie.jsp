<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- /bookingProgressPage/bookingProgressMain GET의  bookingNumber 값 불러오기 -->
	<form role="form" action="/bookingProgressPage/bookingProgressMain" method="get">
		<input type='hidden' name='bookingNumber' value="${bookingNumber}">
	</form>
	
	<form role="form" action="/bookingProgressPage/showMovieMain" method="get">
		<input type='hidden' name='movieName' value="${'movieName'}">
	</form>
	
	<c:forEach items="${list}" var="BookingVO">
		<c:forEach items="${BookingVO.movieVO}" var="MovieVO">
		      <div style = "border:2px;" class="col-md-3 col-sm-6 mb-4">
		      		<input type='hidden' id='mName' name='movieName' value="${MovieVO.movieName}">
		        	<video class="movie-fluid" src="/resources/movie/${MovieVO.movieName}.mp4"></video>
		      </div>
       	</c:forEach>
    </c:forEach>
        
    <script>
		$(".movie-fluid").click(function(){
			alert("안뇽");
			showMovieMain();
			});
	</script>
        
 	<script>
	var movieName = $('#mName').val();
	function showMovieMain() {
	    $.ajax({
	    	url: "showMovieMain",
	    	data: {
	    		"movieName" : movieName
	    	},
	    	type: 'GET',
	    	success: 
	    		resultShowMain
	    	});
	    }
	
	function resultShowMain(msg) {
			alert(movieName);
	     	$(".ajaxMovieMain").html(msg);
	  	}
	</script>