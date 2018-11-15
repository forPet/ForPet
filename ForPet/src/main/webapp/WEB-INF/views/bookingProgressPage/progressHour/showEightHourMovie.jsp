<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<style>
#selectMovie0, #selectMovie1 ,#selectMovie2 ,#selectMovie3 {
	cursor: pointer;
	width: 100%;
	height: 150px;
} 
</style>

<!-- /bookingProgressPage/bookingProgressMain GET의  bookingNumber 값 불러오기 -->
	<form role="form" action="/bookingProgressPage/bookingProgressMain" method="get">
		<input type='hidden' name='bookingNumber' value="${bookingNumber}">
	</form>
	
	<c:forEach items="${list}" var="BookingVO">
		<c:forEach items="${BookingVO.movieVO}" var="MovieVO" varStatus="theCount">
		      <div style = "border:2px;" class="col-md-3 col-sm-6 mb-4">
		      		<input type='hidden' id="mName${theCount.index}" name='movieName' value="${MovieVO.movieName}">
		      		<input type='hidden' id="mNumber${theCount.index}" name='movieNumber' value="${MovieVO.movieNumber}">
		        	<video class="movie-fluid" id="selectMovie${theCount.index}"  src="/resources/movie/${MovieVO.movieName}.mp4"></video>
		      </div>
       	</c:forEach>
    </c:forEach>

    <script>
		$("#selectMovie0").click(function(){
			var movieName = $('#mName0').val();
			showMovieMain(movieName);
	        var divLoc = $('#movieMain0').offset();
	        $('html, body').animate({scrollTop: divLoc.top-100}, "slow");
		});
		$("#selectMovie1").click(function(){
			var movieName = $('#mName1').val();
			showMovieMain(movieName);
			 var divLoc = $('#movieMain0').offset();
		        $('html, body').animate({scrollTop: divLoc.top-100}, "slow");
		});
		$("#selectMovie2").click(function(){
			var movieName = $('#mName2').val();
			showMovieMain(movieName);
			 var divLoc = $('#movieMain0').offset();
		        $('html, body').animate({scrollTop: divLoc.top-100}, "slow");
		});
		$("#selectMovie3").click(function(){
			var movieName = $('#mName3').val();
			showMovieMain(movieName);
			 var divLoc = $('#movieMain0').offset();
		        $('html, body').animate({scrollTop: divLoc.top-100}, "slow");
		});
	</script>
        
 	<script>
	function showMovieMain(movieName) {
		
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
	     	$(".ajaxMovieMain").html(msg);
	  	}
	</script>