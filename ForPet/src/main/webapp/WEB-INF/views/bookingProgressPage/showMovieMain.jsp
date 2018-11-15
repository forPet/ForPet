<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<style>
.movie-fluid {
	widht: 100%;
	height: 300px;
}
</style>

<!-- /bookingProgressPage/bookingProgressMain GET의  bookingNumber 값 불러오기 -->
	<form role="form" action="/bookingProgressPage/showSixHourMovie" method="get">
		<input type='hidden' id="movieName "name='movieName' value="${movieName}">
	</form>
		
	<c:forEach items="${list}" var="BookingVO">
		<c:forEach items="${BookingVO.movieVO}" var="MovieVO" varStatus="theCount">
			<div class="col-md-movie" id="movieMain${theCount.index}">
				<video class="movie-fluid" src="/resources/movie/${MovieVO.movieName}.mp4" controls="controls"></video>
			</div>
		</c:forEach>
	</c:forEach>
