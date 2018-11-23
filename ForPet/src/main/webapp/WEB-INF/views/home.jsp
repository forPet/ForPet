<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="//maxcdn.bootstrapcdn.com/bootstrap/latest/css/bootstrap.min.css">
<script type="text/javascript"
	src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=H3Mmx7aYz6AaNJ92XKAA&submodules=geocoder"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<style type="text/css">
.jumbotron {
		background-image: url('../../resources/img/OrangeCat.png');
		background-size: cover;
		width: 1120px;
		height: 500px;
}
</style>

<title>펫을 위한 믿을 수 있는 펫시터</title>
</head>
<body>
	<nav class="navbar navbar-default"
		style="border: 1px solid gray; margin:2px">
	<div id="menu" class="btn-group">
		<a href="board/listPage">펫시터 목록</a> <a href="signUp/sitterSignUpPage">펫시터신청</a>
	</div>
	<div class="container-fluid" id="bs-example-navbar-collapse-1">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapsed" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="sr-only"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span> <span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">포펫</a>
		</div>
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li class="active"><a href="#">소개<span class="sr-only"></span></a></li>

				<c:if test="${login ne null}">
					<li><a href="userPage/myPage">개인 정보</a></li>
					<li><a href="userPage/logOut">로그아웃</a></li>
				</c:if>
				<c:if test="${login eq null}">
					<li><a href="signUp/signUpPage">회원가입</a></li>
					<li><a href="userPage/login">로그인</a></li>
				</c:if>
				<li><a href="board/listPage">펫시터 찾기</a></li>
			</ul>
		</div>
	</div>
	</nav>

	<div class="container" style="border: 1px solid gray">
		<div class="jumbotron">
			<div class="center-column">
				<h1>
					<strong>펫을 위한</strong>
				</h1>
				<h2>믿을 수 있는 펫시터</h2>
				<div id="index-search-box">
					<div
						class="col-xl-12 offset-xl-0 col-lg-10 offset-lg-1 col-md-10 offset-md-1">
						<div class="index-search">
							<input id="address" type="text" name='keyword'
								placeholder="원하는 지역을 검색해 보세요"> <input id="submit"
								type="button" value="검색"> <a href="userPage/logOut">로그아웃</a>
						</div>
					</div>
				</div>
			</div>
<<<<<<< Updated upstream
			<a href="http://localhost:8080/booking/customBooking?sitterNumber=1&userNumber=2"> patment 이동</a>
			<a href="http://localhost:8080/myPage/reservationPage?userNumber=2"> MyPage 이동</a>
=======
			<a
				href="http://localhost:8080/booking/customBooking?sitterNumber=1&userNumber=2">
				patment 이동</a> <a
				href="http://localhost:8080/userPage/reservationPage?userNumber=2">
				MyPage 이동</a>
>>>>>>> Stashed changes
		</div>
	</div>
	<footer style="color: #000000; border: 1px solid gray; margin:2px;">
	<div class="container">
		<br>
		<div class="row">
			<div class="col-sm-2" style="text-align: center;">
				<h5>Copyright &copy; 2018</h5>
				<h5>최윤영</h5>
			</div>
			<div class="col-sm-4">
				<h5>주식회사 윈터멜론</h5>
				<p>주소: 관악구 보라매로 나로호</p>
				<h6>cogilion@gmail.com</h6>
			</div>
			<div class="col-sm-4"></div>
			<div class="col-sm-2">
				<h4 style="text-align: center;">
					<span class="glyphincon glyphincon-ok"></span>&nbsp;by ForPet
				</h4>
			</div>
		</div>
	</div>

	<script>
		$('#submit').on("click", function(e) {
			var keyword = $("#address").val();
			self.location = "/board/listPage" + "?keyword=" + keyword;
		});

		$('#address').on('keydown', function(e) {
			var keyCode = e.which;

			if (keyCode === 13) { // Enter Key
				var keyword = $("#address").val();
				self.location = "/board/listPage" + "?keyword=" + keyword;
			}
		});

		$('#example .dropdown-menu li > a').bind(
				'click',
				function(e) {
					var html = $(this).html();
					$('#example button.dropdown-toggle').html(
							html + ' <span class="caret"></span>');
				});
	</script> </footer>
</body>
</html>
