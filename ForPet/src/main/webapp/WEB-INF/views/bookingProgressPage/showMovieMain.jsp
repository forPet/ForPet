<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- /bookingProgressPage/bookingProgressMain GET의  bookingNumber 값 불러오기 -->
	<form role="form" action="/bookingProgressPage/showMovieMain" method="get">
		<input type='hidden' name='movieName' value="${'movieName'}">
	</form>
	
	<div class="col-md-movie ">
		<video class="movie-fluid" src="/resources/movie/${movieName}.mp4" controls="controls"></video>
	</div>
