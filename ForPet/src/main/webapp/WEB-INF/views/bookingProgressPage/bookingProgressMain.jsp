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
<meta name="description" content="Drag and drop table content with JavaScript" />
<link rel="stylesheet" href="/resources/timeline/css/style.css" type="text/css" media="screen" />
<script type="text/javascript" src="/resources/timeline/js/redips-drag-min.js"></script>
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

.schedule input[type="file"] { 
	position: absolute; 
	padding: 0; 
	margin: -1px; 
	overflow: hidden; 
	clip:rect(0,0,0,0); 
	border: 0; 
}

.schedule input[type="button"] { 
	border: 0; 
	background-color: white; 
}  
	
.schedule label { 
	display: table-cell;
	width: 100px; 
	height: 100%;
	color: black; 
	font-size: inherit; 
	line-height: normal; 
	vertical-align: middle; 
	background-color: #fdfdfd; 
	cursor: pointer; 
	margin-left : auto;
	margin-right : auto;
}


#upload {
	margin-left : 30px;
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
		<form id="frm" name="frm" enctype="multipart/form-data" method="post" >

		<!-- Portfolio Item Row -->
		<!-- ajaxMainMovie -->
		<div class="row ajaxMovieMain">
	
		</div>
		<!-- /.row -->

		<!-- Related Projects Row -->
		<h3 class="my-bottom">스케쥴 진행 현황 <input type="submit" value="Submit" id="upload"></h3>
		
		<!-- calendar call  --> 
        <div class="timeline">
			<div id="main_container" style="margin-top: 20px">
			<!-- tables inside this DIV could have draggable content -->
				<div id="redips-drag">		
					<!-- sitterTimeline -->
					<div id="left">
					<table id="table3">
							<colgroup>
								<col width="250"/>
							</colgroup>
							<h3>sitterTimeline</h3>
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
										<c:forEach items="${list}" var="BookingVO">
											<c:forEach items="${BookingVO.timelineVO}" var="TimelineVO">
												<td class="schedule">
													<label for="fileupLoading"> ${TimelineVO.six} </label>
													<input type="file" id="fileupLoading" name="file" />
												</td>
												<td class="schedule">
													<label for="fileupLoading"> ${TimelineVO.seven} </label>
													<input type="file" id="fileupLoading" name="file" />
												</td>
												<td class="schedule">
													<label for="fileupLoading"> ${TimelineVO.eight} </label>
													<input type="file" id="fileupLoading" name="file" />
												</td>
												<td class="schedule">
													<label for="fileupLoading"> ${TimelineVO.nine} </label>
													<input type="file" id="fileupLoading" name="file" />
												</td>
												<td class="schedule">
													<label for="fileupLoading">${TimelineVO.ten} </label>
													<input type="file" id="fileupLoading" name="file" />
												</td>
												<td class="schedule">
													<label for="fileupLoading">${TimelineVO.oneOne} </label>
													<input type="file" id="fileupLoading" name="file" />
												</td>
												<td class="schedule">
													<label for="fileupLoading"> ${TimelineVO.oneTwo} </label>
													<input type="file" id="fileupLoading" name="file" />
												</td>
												<td class="schedule">
													<label for="fileupLoading"> ${TimelineVO.oneThree} </label>
													<input type="file" id="fileupLoading" name="file" />
												</td>
												<td class="schedule">
													<label for="fileupLoading"> ${TimelineVO.oneFour} </label>
													<input type="file" id="fileupLoading" name="file" />
												</td>
												<td class="schedule">
													<label for="fileupLoading"> ${TimelineVO.oneFive} </label>
													<input type="file" id="fileupLoading" name="file" />
												</td>
												<td class="schedule">
													<label for="fileupLoading"> ${TimelineVO.oneSix} </label>
													<input type="file" id="fileupLoading" name="file" />
												</td>
												<td class="schedule">
													<label for="fileupLoading"> ${TimelineVO.oneSeven} </label>
													<input type="file" id="fileupLoading" name="file" />
												</td>
												<td class="schedule">
													<label for="fileupLoading"> ${TimelineVO.oneEight} </label>
													<input type="file" id="fileupLoading" name="file" />
												</td>
												<td class="schedule">
													<label for="fileupLoading"> ${TimelineVO.oneNine} </label>
													<input type="file" id="fileupLoading" name="file" />
												</td>
												<td class="schedule">
													<label for="fileupLoading"> ${TimelineVO.twoZero} </label>
													<input type="file" id="fileupLoading" name="file" />
												</td>
												<td class="schedule">
													<label for="fileupLoading"> ${TimelineVO.twoOne} </label>
													<input type="file" id="fileupLoading" name="file" />
												</td>
												<td class="schedule">
													<label for="fileupLoading"> ${TimelineVO.twoTwo} </label>
													<input type="file" id="fileupLoading" name="file" />
												</td>
												<td class="schedule">
													<label for="fileupLoading"> ${TimelineVO.twoThree} </label>
													<input type="file" id="fileupLoading" name="file" />
												</td>
											</c:forEach>
										</c:forEach>
									</tr>
							</tbody>
						</table>
					</div><!-- left container -->
				</div><!-- sitterTimeline -->
				
				<!--  user timeline -->
				<div id="redips-drag">
		
					<!-- left container -->
					<div id="left">
					<table id="table3">
							<h3>userTimeline</h3>
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
										<c:forEach items="${list}" var="BookingVO">
											<c:forEach items="${BookingVO.timelineVO}" var="TimelineVO">
												<td class="schedule">
													<input class="showMovie" type="button" id="six" name="button" value="${TimelineVO.six}"/>
												</td>
												<td class="schedule">
													<input class="showMovie" type="button" id="seven" name="button" value="${TimelineVO.seven}"/>
												</td>
												<td class="schedule">
													<input class="showMovie" type="button" id="eight" name="button" value="${TimelineVO.eight}"/>
												</td>
												<td class="schedule">
													<input class="showMovie" type="button" id="nine" name="button" value="${TimelineVO.nine}"/>
												</td>
												<td class="schedule">
													<input class="showMovie" type="button" id="ten" name="button" value="${TimelineVO.ten}"/>
												</td>
												<td class="schedule">
													<input idclass"showMovie" type="button" id="oneOne" name="button" value="${TimelineVO.oneOne}"/>
												</td>
												<td class="schedule">
													<input class="showMovie" type="button" id="oneTwo" name="button" value="${TimelineVO.oneTwo}"/>
												</td>
												<td class="schedule">
													<input class="showMovie" type="button" id="oneThree" name="button" value="${TimelineVO.oneThree}"/>
												</td>
												<td class="schedule">
													<input class="showMovie" type="button" id="oneFour" name="button" value="${TimelineVO.oneFour}"/>
												</td>
												<td class="schedule">
													<input class="showMovie" type="button" id="oneFive" name="button" value="${TimelineVO.oneFive}"/>
												</td>
												<td class="schedule">
													<input class="showMovie" type="button" id="oneSix" name="button" value="${TimelineVO.oneSix}"/>
												</td>
												<td class="schedule">
													<input class="showMovie" type="button" id="oneSeven" name="button" value="${TimelineVO.oneSeven}"/>
												</td>
												<td class="schedule">
													<input class="showMovie" type="button" id="oneEight" name="button" value="${TimelineVO.oneEight}"/>
												</td>
												<td class="schedule">
													<input class="showMovie" type="button" id="oneNine" name="button" value="${TimelineVO.oneNine}"/>
												</td>
												<td class="schedule">
													<input class="showMovie" type="button" id="twoZero" name="button" value="${TimelineVO.twoZero}"/>
												</td>
												<td class="schedule">
													<input class="showMovie" type="button" id="twoOne" name="button" value="${TimelineVO.twoOne}"/>
												</td>
												<td class="schedule">
													<input class="showMovie" type="button" id="twoTwo" name="button" value="${TimelineVO.twoTwo}"/>
												</td>
												<td class="schedule">
													<input class="showMovie" type="button" id="twoThree" name="button" value="${TimelineVO.twoThree}"/>
												</td>
											</c:forEach>
										</c:forEach>
									</tr>
								</tbody>
							</table>
						</div><!-- left container -->
					</div><!-- user timeline -->
				</div>
			</div>
		</form>
	<div class="row ajaxShowMovie"></div>
	</div><!-- main container -->
	

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
	
	<script>
		$("#upload").click(function(){
			alert("동영상 업로드를 완료했습니다");
		});
	</script>
	
	<form role="form" action="/bookingProgressPage/bookingProgressMain" method="get">
		<input type='hidden' name='bookingNumber' value="${bookingNumber}">
	</form>
	
	<form role="form" action="/bookingProgressPage/showMovieMain" method="get">
		<input type='hidden' name='movieNumber' value="${'movieNumber'}">
	</form>
	
	<script>
		$("#six").click(function(){
			showSixHourMovie();
			});
	</script>
	

	
	<script>
	var bookingNumber = $("[name=bookingNumber]").val();
	function showSixHourMovie() {
	    $.ajax({
	    	url: "showSixHourMovie",
	    	data: {
	    		"bookingNumber" : bookingNumber
	    	},
	    	type: 'GET',
	    	success: 
	    		resultShowMovie
	    	});
	    }
	
	function resultShowMovie(msg) {
	     	$(".ajaxShowMovie").html(msg);
	  	}
	</script>

</body>
</html>
