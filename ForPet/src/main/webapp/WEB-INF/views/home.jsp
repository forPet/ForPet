<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- 부트스트랩 -->


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
	<nav class="navbar navbar-default" id="col">
		

	<div class="container-fluid">
		<button type="button" class="navbar-toggle collapsed"
			data-toggle="collapsed" data-target="#bs-example-navbar-collapse-1"
			aria-expanded="false">
			<span class="sr-only"></span> <span class="icon-bar"></span> <span
				class="icon-bar"></span> <span class="icon-bar"></span>
		</button>
		<a class="navbar-brand" href="home.jsp"><Strong>ForPet</Strong></a>
	</div>


	<ul class="nav navbar-nav navbar-right">
		<li><a href="/board/listAll">펫시터 찾기</a></li>
		<li><a href="#">소개</a></li>
		<li><a href="#">FAQ</a></li>

		<li class="dropdown"><a href="#" class="dropdown-toggle"
			data-toggle="dropdown" role="button" aria-haspopup="true"
			aria-expanded="false">로그인<span class="caret"></span></a>
			<ul class="dropdown-menu">
				<li><a href="#">로그인</a></li>
				<li><a href="#">회원 가입</a></li>
			</ul></li>
	</ul>
	</nav>

	<div class="container">
		<div class="jumbotron">

			<div class="center-column">
				<h1>
					<strong>펫을 위한</strong>
				</h1>
				<h1>믿을 수 있는 펫시터</h1>
				<div id="index-search-box">
					<div
						class="col-xl-12 offset-xl-0 col-lg-10 offset-lg-1 col-md-10 offset-md-1">
						<div class="index-search">
							<input type="text" placeholder="원하는 지역을 검색해 보세요"
								autocomplete="off">
							<div class="index-search-result" style="display: none;">
								<ul>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>

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
	</footer>


</body>
</html>