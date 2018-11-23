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
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/latest/css/bootstrap.min.css">
<!-- <script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=H3Mmx7aYz6AaNJ92XKAA&submodules=geocoder"></script> -->
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>

<title>펫을 위한 믿을 수 있는 펫시터</title>
<style type="text/css">
@charset "utf-8";

/* Star Rating */
.starRating, .starRating span {
		display: inline-block;
		height: 14px;
		height: 14px;
		background: url('../../../resources/images/icoFiveStar.gif');
		overflow: hidden;
}
.starRating {
		width: 79px;
		vertical-align: middle;
}
.starRating span {
		font-size: 0;
		line-height: 0;
		vertical-align: top;
		text-indent: -100px;
		*text-indent: 0;
		background-position: 0 -14px;
}
</style>
</head>

<!-- 네비게이션 바  -->
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

	<!-- 메인 목록 박스 -->
	<div class="container" >
		<div style="display: flex;">
			<div id="mainListBox" class="col-md-6"
				style="flex: auto; width: 60%;">
				<div>
					<input id="address" type="text" placeholder="주소 입력"
						value="${keyword}"> <input id="submit" type="button"
						value="검색">
				</div>
				<div class="row">
					<div class="petsitter_cardbox" style=" width: 900px;">
						<div id="Sitter_List" style="float: left; border: 1px solid gray;">
							<c:forEach items="${SitterListPage}" var="listDTO">
								<div style="height: 200px; width: 900px">
									<div class="petsitter_cardtop">
									</div>
									<div class="petsitter_cardbot">
										<div class="petsitter_cardtex">
										<span>${listDTO.userAddress}</span>
										<span>${listDTO.userName}</span> <span>${listDTO.introduce}</span>
										</div>
									</div>
									<div>
										<span class="starRating"> 
										<c:if test="${listDTO.totalServiceScore==1}">
												<span style="width: 10%">1</span></when>
										</c:if>
										<c:if test="${listDTO.totalServiceScore==2}">
												<span style="width: 20%">2</span></when>
										</c:if>
										<c:if test="${listDTO.totalServiceScore==3}">
												<span style="width: 30%">3</span></when>
										</c:if>
										<c:if test="${listDTO.totalServiceScore==4}">
												<span style="width: 40%">4</span></when>
										</c:if>
										<c:if test="${listDTO.totalServiceScore==5}">
												<span style="width: 50%">5</span></when>
										</c:if>
										<c:if test="${listDTO.totalServiceScore==6}">
												<span style="width: 60%">6</span></when>
										</c:if>
										<c:if test="${listDTO.totalServiceScore==7}">
												<span style="width: 70%">7</span></when>
										</c:if>
										<c:if test="${listDTO.totalServiceScore==8}">
												<span style="width: 80%">8</span></when>
										</c:if>
										<c:if test="${listDTO.totalServiceScore==9}">
												<span style="width: 90%">9</span></when>
										</c:if>
										<c:if test="${listDTO.totalServiceScore==10}">
												<span style="width: 100%">10</span></when>
										</c:if>
										</span> <span>${listDTO.totalServiceCnt}</span>
										<p>
										</p>
									</div>
								</div>
							</c:forEach>
						</div>
					</div>
				</div>
			</div>
			<!-- 네이버 맵  API -->
			<!-- <div id="mapbox" style="width: 40%; height: auto; flex: auto">
				<div id="map" style="width: 100%; height: 780px;"></div>
			</div> -->
		</div>
	</div>
	<!-- Script -->
	<script>
 		/* var map = new naver.maps.Map("map", {
			center : new naver.maps.LatLng(37.3595316, 127.1052133),
			zoom : 10,
			mapTypeControl : true
		});

		var infoWindow = new naver.maps.InfoWindow({
			anchorSkew : true
		});

		map.setCursor('pointer'); */
		
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
