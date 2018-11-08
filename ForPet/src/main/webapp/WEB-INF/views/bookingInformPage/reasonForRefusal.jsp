<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>

<meta charset="utf-8">
<meta name="viewport"content="width=device-width, initial-scale=1, shrink-to-fit=no">
	
<!-- Bootstrap core JavaScript -->
<script src="/resources/main/vendor/jquery/jquery.min.js"></script>
<script src="/resources/main/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<title>Reason For Refusal</title>

<!-- Bootstrap core CSS -->
<link href="/resources/main/vendor/bootstrap/css/bootstrap.css"rel="stylesheet">

</head>

<body>
<form role="form" action="/bookingInformPage/bookingInformDetail" method="get">
	<input type='hidden' name='bookingNumber' value="${BookingVO.bookingNumber}">
	<div class="box-body">
		<div class="form-group">
			<label for="content">Content</label><br>
			<textarea class="form-control" name="content" row="5" placeholder="100자 이하로 입력해주세요."></textarea>
		</div>
		<div class="box-footer">
			<button type="submit" class="btn btn-primary">Submit</button>
		</div>
	</div>
</form>

	
</body>

</html>
