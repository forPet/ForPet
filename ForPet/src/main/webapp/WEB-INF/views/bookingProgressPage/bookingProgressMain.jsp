<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>Portfolio Item - Start Bootstrap Template</title>

<!-- Bootstrap core CSS -->
<link href="/resources/main/vendor/bootstrap/css/bootstrap.css" rel="stylesheet">

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
.row {
	margin-top: 50px;
}

.col-md-movie {
	-ms-flex: 0 0 58.333333%;
	flex: 0 0 58.333333%;
	max-width: 100%;
	max-height: 360px;
	margin-left: auto;
	margin-right: auto;
	text-align: center;
}

.my-bottom {
	margin-top: 50px;
}

.timeline {
	-ms-flex: 0 0 58.333333%;
	flex: 0 0 58.333333%;
	max-width: 100%;
	margin-left: auto;
	margin-right: auto;
}

.movie-fluid {
	max-height: 360px;
	max-width: 100%;
}


</style>
</head>
<body>
	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
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
					<li class="nav-item"><a class="nav-link">|</a></li>
					<li class="nav-item"><a class="nav-link" href="#">서비스 소개</a></li>
					<li class="nav-item"><a class="nav-link">|</a></li>
					<li class="nav-item"><a class="nav-link" href="#">펫시터 찾기</a></li>
					<li class="nav-item"><a class="nav-link">|</a></li>
					<li class="nav-item"><a class="nav-link" href="#">자주 하는 질문</a>
					</li>
					<li class="nav-item"><a class="nav-link">|</a></li>
					<li class="nav-item"><a class="nav-link" href="#">마이 페이지</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<!-- Page Content -->
	<div class="container">

		<!-- Portfolio Item Row -->
		<div class="row">

			<div class="col-md-movie">
				<video class="movie-fluid" src="/resources/movies/강아지산책.mp4" controls="controls"></video>
			</div>

		</div>
		<!-- /.row -->

		<!-- Related Projects Row -->
		<h3 class="my-bottom">스케쥴 진행 현황</h3>

		<!-- calendar call  --> 
        <div class="timeline">
			<div id='calendar'></div>
			<div id="main_container" style="margin-top: 20px">
			<!-- tables inside this DIV could have draggable content -->
			<form id="frm" name="frm" enctype="multipart/form-data" method="post" action="bookingProgressMain">
				<div id="redips-drag">
					<div id="right">
						<table id="table2">
							<colgroup>
								<col width="120"/>
							</colgroup>
							<tbody>
								<tr class="contents">
									<td class="redips-mark">아침식사</td>
									<td class="redips-mark">점심식사</td>
									<td class="redips-mark">저녁식사</td>
									<td class="redips-mark">산책</td>
									<td class="redips-mark">자유시간</td>
									<td class="redips-mark">기타</td>
								</tr>
								<tr class="selectColor">
									<!-- clone 2 elements + last element -->
									<td class="redips-mark"><div class="redips-drag redips-clone green"></div></td>
									<td class="redips-mark"><div class="redips-drag redips-clone orange"></div></td>
									<td class="redips-mark"><div class="redips-drag redips-clone blue"></div></td>
									<td class="redips-mark"><div class="redips-drag redips-clone yellow"></div></td>
									<td class="redips-mark"><div class="redips-drag redips-clone red"></div></td>
									<td class="redips-mark"><div class="redips-drag redips-clone purple"></div></td>
									<td style="border-right: hidden;border-top: hidden;border-bottom: hidden;"><input type="submit" value="Submit" id="upload"></td>
								</tr>
							</tbody>
						</table>
					</div><!-- right container -->
		
					<!-- left container -->
					<div id="left">
					<table id="table3">
							<colgroup>
								<col width="250"/>
							</colgroup>
							<tbody>
								<tr>
									<td class="redips-mark">6</td>
									<td class="redips-mark">7</td>
									<td class="redips-mark">8</td>
									<td class="redips-mark">9</td>
									<td class="redips-mark">10</td>
									<td class="redips-mark">11</td>
									<td class="redips-mark">12</td>
									<td class="redips-mark">13</td>
									<td class="redips-mark">14</td>
									<td class="redips-mark">15</td>
									<td class="redips-mark">16</td>
									<td class="redips-mark">17</td>
									<td class="redips-mark">18</td>
									<td class="redips-mark">19</td>
									<td class="redips-mark">20</td>
									<td class="redips-mark">21</td>
									<td class="redips-mark">22</td>
									<td class="redips-mark">23</td>
								</tr>
							</tbody>
						</table>
						<table id="table1">
							<colgroup>
								<col width="250"/>
							</colgroup>
							<tbody>
									<tr>
										<td class="schedule">
											<input type="file" name="file" />
										</td>
										<td class="schedule"></td>
										<td class="schedule"></td>
										<td class="schedule"></td>
										<td class="schedule"></td>
										<td class="schedule"></td>
										<td class="schedule"></td>
										<td class="schedule"></td>
										<td class="schedule"></td>
										<td class="schedule"></td>
										<td class="schedule"></td>
										<td class="schedule"></td>
										<td class="schedule"></td>
										<td class="schedule"></td>
										<td class="schedule"></td>
										<td class="schedule"></td>
										<td class="schedule"></td>
										<td class="schedule"></td>
										
									</tr>
							</tbody>
						</table>
					</div><!-- left container -->
				</div><!-- drag container -->
			</form>
			</div>
		</div><!-- main container -->

		<div class="row">

			<div class="col-md-3 col-sm-6 mb-4">
				<a href="#"> <img class="img-fluid-movie" src="http://placehold.it/500x300" alt="">
				</a>
			</div>

			<div class="col-md-3 col-sm-6 mb-4">
				<a href="#"> <img class="img-fluid-movie" src="http://placehold.it/500x300" alt="">
				</a>
			</div>

			<div class="col-md-3 col-sm-6 mb-4">
				<a href="#"> <img class="img-fluid-movie" src="http://placehold.it/500x300" alt="">
				</a>
			</div>

			<div class="col-md-3 col-sm-6 mb-4">
				<a href="#"> <img class="img-fluid-movie" src="http://placehold.it/500x300" alt="">
				</a>
			</div>

		</div>
		<!-- /.row -->

	</div>


	<!-- Footer -->
	<footer class="py-5 bg-dark">
		<div class="container">
			<p class="m-0 text-center text-white">@Project forPet</p>
		</div>
		<!-- /.container -->
	</footer>

	<!-- Bootstrap core JavaScript -->
	<script src="/resources/main/vendor/jquery/jquery.min.js"></script>
	<script src="/resources/main/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	

</body>
</html>
