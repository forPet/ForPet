<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="text/javascript"
	src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=H3Mmx7aYz6AaNJ92XKAA&submodules=geocoder"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>

<style type="text/css">
.jumbotron {
		background-image: url('../../resources/img/OrangeCat.png');
		background-size: cover;
		width: 1500px;
		height: 500px;
}
</style>

<title>펫을 위한 믿을 수 있는 펫시터</title>
</head>

<body>
	<div class="container">
		<h3>회원가입</h3>
		<a href="signUp/signUpPage">회원가입</a> <a href="userPage/login">로그인</a>
		<a href="userPage/myPage">개인 정보</a>
		<a href="board/listPage">펫시터 목록</a>
	</div>

	<div class="container">
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
								type="button" value="검색">
						</div>
					</div>
				</div>
			</div>
			<a href="http://localhost:8080/booking/payment123?sitterNumber=1&userNumber=2"> patment 이동</a>

		</div>
	</div>
	<footer style="background-color: #b2ddef; color: #000000">
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
		$('#submit').on("click", function (e) {
				var keyword = $("#address").val();
				self.location = "/board/listPage"
					+ "?keyword="+ keyword;
		});
				
		$('#address').on('keydown', function(e) {
			var keyCode = e.which;

			if (keyCode === 13) { // Enter Key
				var keyword = $("#address").val();
				self.location = "/board/listPage"
					+ "?keyword="+ keyword;
				}
		});
	</script> 
	</footer>
</body>
</html>
