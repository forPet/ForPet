<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
<script type="text/javascript"
	src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=H3Mmx7aYz6AaNJ92XKAA&submodules=geocoder"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>

<title>펫을 위한 믿을 수 있는 펫시터</title>

</head>

<!-- 네비게이션 바  -->
<body>
	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapsed" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="sr-only"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span> <span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="../home"><Strong>ForPet</Strong></a>
		</div>


		<ul class="nav navbar-nav navbar-right">
			<li><a href="#">소개</a></li>
			<li><a href="#">FAQ</a></li>
			<li><a href="../userPage/myPage">개인 정보</a></li>

			<li class="dropdown"><a href="#" class="dropdown-toggle"
				data-toggle="dropdown" role="button" aria-haspopup="true"
				aria-expanded="false">로그인<span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="../userPage/login">로그인</a></li>
					<li><a href="../signUp/signUpPage">회원가입</a></li>
				</ul></li>
		</ul>
	</nav>

	<!-- 메인 목록 박스 -->
	<div>
		<div style="display: flex;">
			<div id="mainListBox" class="col-md-6"
				style="flex: auto; width: 60%;">
				<div>
					<input id="address" type="text" placeholder="주소 입력"
						value="${keyword}"> <input id="submit" type="button"
						value="검색">
				</div>

				<div id="Sitter_List" style="float: left;">
					<c:forEach items="${SitterListPage}" var="listDTO">
						<div>
							<div>
								<span>${listDTO.userAddress}</span>
							</div>
							<div>
								<span>${listDTO.userName}</span> 
								<span>${listDTO.introduce}</span>
							</div>
							<div>
								<span>${listDTO.totalServiceScore}</span>  
								<span>${listDTO.totalServiceCnt}</span>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
			<!-- 네이버 맵  API -->
			<div id="mapbox" style="width: 40%; height: auto; flex: auto">
				<div id="map" style="width: 100%; height: 780px;"></div>
			</div>
		</div>
	</div>
	<!-- Script -->
	<script>
 		var map = new naver.maps.Map("map", {
			center : new naver.maps.LatLng(37.3595316, 127.1052133),
			zoom : 10,
			mapTypeControl : true
		});

		var infoWindow = new naver.maps.InfoWindow({
			anchorSkew : true
		});

		map.setCursor('pointer');
		
		$(document).ready(function() {
			$('#submit').click(function() {
				var keyword = $("#address").val();
				$.ajax({
					type: "GET",
					url: "/board/sitterAllList",
					data: {"keyword" : keyword},
					success : sitterAllList
					
					});
				});
						
			$('#address').keypress(function (e){
				if (e.which == 13) {
					var keyword = $("#address").val();
					$.ajax({
						type: "GET",
						url: "/board/sitterAllList",
						data: {"keyword" : keyword},
						success : sitterAllList
						});
				}
			});
		});
			 function sitterAllList(msg) {
      $("#Sitter_List").html(msg);
   }
	</script>
</body>
</html>
