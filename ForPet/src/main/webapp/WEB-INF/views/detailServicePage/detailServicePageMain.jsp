<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>Portfolio Item - Start Bootstrap Template</title>

<!-- Bootstrap core CSS -->
<link href="/resources/main/vendor/bootstrap/css/bootstrap.css"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="/resources/main/css/portfolio-item.css" rel="stylesheet">

<!--  Calendar -->
<link href='/resources/calendar/css/fullcalendar.css' rel='stylesheet' />
<link href='/resources/calendar/css/fullcalendar.print.css'
	media='print' />
<script src='/resources/calendar/lib/moment.min.js'></script>
<script src='/resources/calendar/lib/jquery.min.js'></script>
<script src='/resources/calendar/js/fullcalendar.min.js'></script>
<script src="/resources/calendar/js/ko.js"></script>

<!-- timeline -->
<meta name="author" content="Darko Bunic" />
<meta name="description"
	content="Drag and drop table content with JavaScript" />
<link rel="stylesheet" href="/resources/timeline/css/style.css"
	type="text/css" media="screen" />
<script type="text/javascript"
	src="/resources/timeline/js/redips-drag-min.js"></script>
<script type="text/javascript" src="/resources/timeline/js/script.js"></script>

<style>
#topMenu, #bottomMenu {
	background-color: #04B4AE !important;
}

#carouselExampleIndicators {
	height: 350px;
}

.d-block {
	height: 350px !important;
	margin-left: auto;
	margin-right: auto;
}

#border-bottom {
	background-color: white;
	border-bottom: 1px solid black;
}

#border-top {
	background-color: white;
	border-top: 1px solid black;
}

#bookingBtn {
	widht: 30% !important;
	text-align: center;
	padding : auto;
	margin-bottom: 10px;
	
}

.btn-outline-success {
	margin-right: 20px;
}

.timeline {
	-ms-flex: 0 0 58.333333%;
	flex: 0 0 58.333333%;
	max-width: 100%;
	margin-left: auto;
	margin-right: auto;
}

.schedule input[type="button"] { 
	border: 0; 
	background-color: white;
}  
	
.schedule { 
	width: 5.556% !important;
	text-align: center;
}


#upload {
	margin-left : 20px;
  	width: 80px;
  	height: 40px;
  	border-radius: 3px;
  	font-weight: 500;
  	border-color: white;
  	font-size: 20px;
  	background: black;
  	color: white;
}

#ShowMovieMain {
	height: 350px;
}

#progressbar {
    width:100%;
    height:30px;
    position:relative;
}
     
.progresslabel {
    position:absolute;
    width:100%;
    text-align:center; 
    line-height:30px;
    color:white;
    text-shadow: 1px 1px 1px black;
}

.hour-mark {
	text-align:left !important;
}

#hiddenBorder {
	border-left:hidden !important; border-right:hidden !important; 
}

.servicePrice{
	margin-top: 20px;
	margin-bottom: 20px;
}

.profileIMG {
	max-height: 100px;

}

.showTimeline { 
	display: table-cell;
	width: 100px; 
	height: 100%;
	color: black; 
	font-size: inherit; 
	line-height: normal; 
	vertical-align: middle; 
	background-color: #fdfdfd; 
	margin-left : auto;
	margin-right : auto;
}

.card-img-top {
	max-height: 140px;
}

.schedule input[type="button"] { 
	border: 0; 
	background-color: white; 
	position: absolute; 
	overflow: hidden; 
	font-size: 0;
}  

</style>

</head>

<body>
	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top"
		id="topMenu">
		<div class="container">
			<a class="navbar-brand" href="#">ForPet</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item active"><a class="nav-link" href="#">메인
							<span class="sr-only">(current)</span>
					</a></li>
					<li class="nav-item" id="top-bar"><a class="nav-link">|</a></li>
					<li class="nav-item"><a class="nav-link" href="#">서비스 소개</a></li>
					<li class="nav-item" id="top-bar"><a class="nav-link">|</a></li>
					<li class="nav-item"><a class="nav-link" href="#">펫시터 찾기</a></li>
					<li class="nav-item" id="top-bar"><a class="nav-link">|</a></li>
					<li class="nav-item"><a class="nav-link" href="#">자주 하는 질문</a></li>
					<li class="nav-item"  id="top-bar"><a class="nav-link">|</a></li>
					<li class="nav-item"><a class="nav-link" href="#">마이 페이지</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<!-- Page Content -->
	<div class="container" style="padding-bottom: 40px;">
		<!-- Portfolio Item Row -->
		<div class="row" style="padding-top: 40px;">
			<div class="col-lg-8">
				<div id="carouselExampleIndicators" class="carousel slide my-4"
					data-ride="carousel">
					<ol class="carousel-indicators">
						<li data-target="#carouselExampleIndicators" data-slide-to="0"
							class="active"></li>
						<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
						<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
					</ol>
					<div class="carousel-inner" role="listbox">
						<div class="carousel-item active">
							<img class="d-block img-fluid" src="/resources/img/강아지1.jpg"
								alt="First slide">
						</div>
						<div class="carousel-item">
							<img class="d-block img-fluid" src="/resources/img/강아지2.jpg"
								alt="Second slide">
						</div>
						<div class="carousel-item">
							<img class="d-block img-fluid" src="/resources/img/강아지3.jpg"
								alt="Third slide">
						</div>
					</div>
					<a class="carousel-control-prev" href="#carouselExampleIndicators"
						role="button" data-slide="prev"> <span
						class="carousel-control-prev-icon" aria-hidden="true"></span> <span
						class="sr-only">Previous</span>
					</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
						role="button" data-slide="next"> <span
						class="carousel-control-next-icon" aria-hidden="true"></span> <span
						class="sr-only">Next</span>
					</a>
				</div>
				<div class="row" id="bottomPic">
					<div class="col-lg-c1">
						<a href="#"><img class="card-img-top" src="/resources/img/강아지1.jpg" alt=""></a>
					</div>

					<div class="col-lg-c1">
						<a href="#"><img class="card-img-top" src="/resources/img/강아지2.jpg" alt=""></a>
					</div>

					<div class="col-lg-c1">
						<a href="#"><img class="card-img-top" src="/resources/img/강아지3.jpg" alt=""></a>
					</div>
				</div>
			</div>	
				<div class="col-lg-4" id = "border-max;" style="padding-top: 40px; margin-top:2.5rem !important; border:1px solid black">
					<div class="row" style="max-height: 100px;">
						<div class="col-lg-5" style="margin-top: auto; margin-bottom: auto; text-align: center;">
							<a href="#"><img class="profileIMG" src="/resources/img/프로필.jpg" alt=""></a>
						</div>
						<div class="col-lg-7" style="hight: 40px">
							<c:forEach items="${list}" var="SitterDTO">
								<h4><strong>${SitterDTO.userName} 펫시터 </strong></h4>
								<li>${SitterDTO.userAddress}</li>
								<li>${SitterDTO.totalServiceCnt}회 완료</li>
							</c:forEach>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-12" style="margin-top:30px;">
							<h5><strong>펫시팅 요금</strong></h5>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-12">
							<div>
								<ul>
									<c:forEach items="${list}" var="SitterDTO">
										<li class="servicePrice">5kg 미만 : ${SitterDTO.small}/일</li>
										<li class="servicePrice">5kg ~ 15kg : ${SitterDTO.medium}/일</li>
										<li class="servicePrice">15kg 이상 : ${SitterDTO.large}/일</li>
									</c:forEach>
								</ul>
							</div>
								<div class="button" id="bookingBtn">
									<button id="bookingBtn" type="button" class="btn-outline-success btn-lg">간편 예약 하기</button>
									<button id="bookingBtn" type="button" class="btn-outline-danger btn-lg">맞춤 예약 하기</button>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="timeline">
					<div id="main_container" style="margin-top: 20px">
						<!-- tables inside this DIV could have draggable content -->
						<div id="redips-drag-second">		
							<!-- sitterTimeline -->
							<div id="left">
								<table id="table1">
									<tr id="sitterTimeline">
										<c:forEach items="${list}" var="SitterDTO">
											<td class="schedule">
												<label for="six" class="showTimeline"> ${SitterDTO.six} </label>
												<input class="showMovie" type="button" id="six" name="button"  value="${SitterDTO.six}" />
											</td>
											<td class="schedule" id="hiddenBorder">
												<label for="seven" class="showTimeline"> ${SitterDTO.seven} </label>
												<input class="showMovie" type="button" id="seven" name="button"  value="${SitterDTO.seven}"/>
											</td>
											<td class="schedule" id="hiddenBorder">
												<label for="eight" class="showTimeline"> ${SitterDTO.eight} </label>
												<input class="showMovie" type="button" id="eight" name="button" value="${SitterDTO.eight}"/>
											</td>
											<td class="schedule" id="hiddenBorder">
												<label for="nine" class="showTimeline"> ${SitterDTO.nine} </label>
												<input class="showMovie" type="button" id="nine" name="button" value="${SitterDTO.nine}"/>
											</td>
											<td class="schedule" id="hiddenBorder">
												<label for="ten" class="showTimeline"> ${SitterDTO.ten} </label>
												<input class="showMovie" type="button" id="ten" name="button" value="${SitterDTO.ten}"/>
											</td>
											<td class="schedule" id="hiddenBorder">
												<label for="oneOne" class="showTimeline"> ${SitterDTO.oneOne} </label>
												<input class="showMovie" type="button" id="oneOne" name="button" value="${SitterDTO.oneOne}"/>
											</td>
											<td class="schedule" id="hiddenBorder">
												<label for="oneTwo" class="showTimeline"> ${SitterDTO.oneTwo} </label>
												<input class="showMovie" type="button" id="oneTwo" name="button" value="${SitterDTO.oneTwo}"/>
											</td>
											<td class="schedule" id="hiddenBorder">
												<label for="oneThree" class="showTimeline"> ${SitterDTO.oneThree} </label>
												<input class="showMovie" type="button" id="oneThree" name="button" value="${SitterDTO.oneThree}"/>
											</td>
											<td class="schedule" id="hiddenBorder">
												<label for="oneFour" class="showTimeline"> ${SitterDTO.oneFour} </label>
												<input class="showMovie" type="button" id="oneFour" name="button" value="${SitterDTO.oneFour}"/>
											</td>
											<td class="schedule" id="hiddenBorder">
												<label for="oneFive" class="showTimeline"> ${SitterDTO.oneFive} </label>
												<input class="showMovie" type="button" id="oneFive" name="button" value="${SitterDTO.oneFive}"/>
											</td>
											<td class="schedule" id="hiddenBorder">
												<label for="oneSix" class="showTimeline"> ${SitterDTO.oneSix} </label>
												<input class="showMovie" type="button" id="oneSix" name="button" value="${SitterDTO.oneSix}"/>
											</td>
											<td class="schedule" id="hiddenBorder">
												<label for="oneSeven" class="showTimeline"> ${SitterDTO.oneSeven} </label>
												<input class="showMovie" type="button" id="oneSeven" name="button" value="${SitterDTO.oneSeven}"/>
											</td>
											<td class="schedule" id="hiddenBorder">
												<label for="oneEight" class="showTimeline"> ${SitterDTO.oneEight} </label>
												<input class="showMovie" type="button" id="oneEight" name="button" value="${SitterDTO.oneEight}"/>
											</td>
											<td class="schedule" id="hiddenBorder">
												<label for="oneNine" class="showTimeline"> ${SitterDTO.oneNine} </label>
												<input class="showMovie" type="button" id="oneNine" name="button" value="${SitterDTO.oneNine}"/>
											</td>
											<td class="schedule" id="hiddenBorder">
												<label for="twoZero" class="showTimeline"> ${SitterDTO.twoZero} </label>
												<input class="showMovie" type="button" id="twoZero" name="button" value="${SitterDTO.twoZero}"/>
											</td>
											<td class="schedule" id="hiddenBorder">
												<label for="twoOne" class="showTimeline"> ${SitterDTO.twoOne} </label>
												<input class="showMovie" type="button" id="twoOne" name="button" value="${SitterDTO.twoOne}"/>
											</td>
											<td class="schedule" id="hiddenBorder">
												<label for="twoTwo" class="showTimeline"> ${SitterDTO.twoTwo} </label>
												<input class="showMovie" type="button" id="twoTwo" name="button" value="${SitterDTO.twoTwo}"/>
											</td>
											<td class="schedule">
												<label for="twoThree" class="showTimeline"> ${SitterDTO.twoThree} </label>
												<input class="showMovie" type="button" id="twoThree" name="button" value="${SitterDTO.twoThree}"/>
											</td>
										</c:forEach>
									</tr>
								</table>
							</div>
						</div>
					</div>
				</div>
			<div class="col-lg-12">
				<div class="row" id="border-top" style="margin-top:40px; padding-top:10px">
					<div class="col-lg-12 col-md-6" >
					<h2 style="color:red;">
					<strong>펫시팅 돌봄 환경</strong>
					</h2>
					</div>
				</div>
				<div class="row" id="border-bottom" style="margin-top:20px;">
					<div class="col-lg-12 col-md-6">
						<div>
							<p>"반려동물 돌봄 공간: " 
							<b>빌라</b>
							<span>에서 펫시팅이 진행됩니다.</span>
							</p>
							<p>"반려동물을 위한 시설: " 
							<b>전용화장실</b>
							</p>
							<p>"반려동물을 위한 장비: " 
							<b>2++ 한우</b>
							</p>
							<p>"반려동물 여부: " 
							<b>없다이놈아</b>
							</p>
						</div>
					</div>
				</div>
				<div class="row" id="border-top" style="margin-top:40px; padding-top:10px">
					<div class="col-lg-12" >
					<h2 style="color:red;">
					<strong>펫시팅 소개</strong>
					</h2>
					</div>
				</div>
				<div class="row" id="border-bottom" style="margin-top:20px;">
					<div class="col-lg-12">
						<div>
							<h5>
							<strong>펫시팅 관련 경험을 알려주세요!</strong>
							</h5>
							<p> 
							14년 동안 함께한 녀석을 떠나보내고 1년이 되었습니다. 영원히 한 녀석의 가족으로 남고 싶어서, 입양하기보다는 다른 가족분들께 도움이 되고 싶습니다. 직장인이기 때문에 주중에는 아이들을 맡기셔도 종일 혼자 있어야 하는 단점이 있지만 퇴근이 늦지는 않기 때문에 평소에도 집에 혼자 있는 아이들이라면 퇴근 후에 꼭꼭 산책시켜 드릴 수 있고, 주말에 맡기실 분들께도 도움이 될 수 있을 것 같습니다.
							</p>
							<h5>
							<strong>펫함께한 동물과의 이야기를 들려주세요!</strong>
							</h5>
							<p> 
							함께한 장군이는 열다섯 살까지 아픈 데 없이 잘 있다가 꼭 하루, 감기를 앓고 떠났어요. 너무 맘 아프지 말라고 마지막까지 배려해 준 것 같아요. 지난해 6월, 유기견 단체에서 입양한 유기견 코돌이가 지금 본가에서 잘 자라고 있어요. 부모님이 장기여행을 가셔서 제가 두 달 데리고 있다가 본가에 내려보냈지요. 귀여운 말썽쟁이예요.
							</p>
							<h5>
							<strong>자신만의 노하우를 알려주세요!</strong>
							</h5>
							<p> 
							14년 동안 함께한 녀석을 떠나보내고 1년이 되었습니다. 영원히 한 녀석의 가족으로 남고 싶어서, 입양하기보다는 다른 가족분들께 도움이 되고 싶습니다. 직장인이기 때문에 주중에는 아이들을 맡기셔도 종일 혼자 있어야 하는 단점이 있지만 퇴근이 늦지는 않기 때문에 평소에도 집에 혼자 있는 아이들이라면 퇴근 후에 꼭꼭 산책시켜 드릴 수 있고, 주말에 맡기실 분들께도 도움이 될 수 있을 것 같습니다.장군이도 코돌이도 사람이 많이 만지거나 안는 것을 귀찮아하는 친구들이에요. 저는 강아지가 하고 싶은 때에 하고 싶은 걸 하게 해 주는 평화로운 사이를 좋아해요. 간식은 주로 황태포를 사다가 얇게 찢어서 주고, 만지는 대신 목소리를 많이 들려줘요.
							</p>
						</div>
					</div>
				</div>
				<div class="row" id="border-top" style="margin-top:40px; padding-top:10px">
					<div class="col-lg-12 col-md-6" >
					<h2 style="color:red;">
					<strong>펫시터 제공 서비스</strong>
					</h2>
					</div>
				</div>
				<div class="row" id="border-bottom" style="margin-top:20px;">
					<div class="col-lg-12 col-md-6">
						<div>
							<h5>
							<strong>무료 서비스</strong>
							</h5>
							<p> 
							#산책
							</p>
							<h5>
							<strong>유료 서비스</strong>
							</h5>
							<p> 
							없습니다.
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>



<!-- Footer -->
<footer class="py-5 bg-dark" id="bottomMenu">
	<div class="container">
		<p class="m-0 text-center text-white">@Project forPet</p>
	</div>
</footer>

<!-- Bootstrap core JavaScript -->
<script src="/resources/main/vendor/jquery/jquery.min.js"></script>
<script src="/resources/main/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>
