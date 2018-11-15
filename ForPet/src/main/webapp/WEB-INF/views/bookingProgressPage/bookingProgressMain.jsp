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
<link href='/resources/calendar/css/fullcalendar.print.css' media='print' />
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

<script src="//code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>

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
	cursor: pointer; 
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
	margin-left : 20px;
  	width: 80px;
  	height: 40px;
  	border-radius: 3px;
  	font-weight: 500;
  	border-color: black;
  	font-size: 20px;
  	background: black;
  	color: white;
 	cursor: pointer;
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
		<div id = "ShowMovieMain" class="row ajaxMovieMain">
	
		</div>
		<!-- /.row -->

		<!-- Related Projects Row -->
		<h3 class="my-bottom">스케쥴 진행 현황 <input type="submit" value="올리기" id="upload"></h3>
		
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
							
							<!--  진행바 -->
							<div id="pbar_outerdiv" style="width: 100%; height: 30px; border: 1px solid grey; z-index: 1; position: relative; border-radius: 5px; -moz-border-radius: 5px;">
							<div id="pbar_innerdiv" style="background-color: lightblue; z-index: 2; height: 100%; width: 0%;"></div>
							<div id="pbar_innertext" style="z-index: 3; position: absolute; top: 0; left: 0; width: 100%; height: 100%; color: black; font-weight: bold; text-align: center;">서비스 준비중</div>
							</div>
						</table>
						<table id="table1">
							<colgroup>
								<col width="250"/>
							</colgroup>
							<tbody>
									<tr>
										<c:forEach items="${list}" var="TimelineVO">
											<td class="schedule" id="hiddenBorderSix" style="border-right:hidden;">
												<label for="fileupLoadingSix" class="fileupLoadingSix"> ${TimelineVO.six} </label>
												<input type="file" name="file" id="fileupLoadingSix" disabled />
											</td>
											<td class="schedule" id="hiddenBorderSeven" >
												<label for="fileupLoadingSeven" class="fileupLoadingSeven" > ${TimelineVO.seven} </label>
												<input type="file" name="file" id="fileupLoadingSeven" disabled />
											</td>
											<td class="schedule" id="hiddenBorderEight" style="border-left:hidden; border-right:hidden;">
												<label for="fileupLoadingEight" class="fileupLoadingEight"> ${TimelineVO.eight} </label>
												<input type="file" name="file" id="fileupLoadingEight" disabled />
											</td>
											<td class="schedule" id="hiddenBorderNine" style="border-left:hidden; border-right:hidden;">
												<label for="fileupLoadingNine" class="fileupLoadingNine"> ${TimelineVO.nine} </label>
												<input type="file" name="file" id="fileupLoadingNine" disabled />
											</td>
											<td class="schedule" id="hiddenBorderTen" style="border-left:hidden; border-right:hidden;">
												<label for="fileupLoadingTen" class="fileupLoadingTen"> ${TimelineVO.ten} </label>
												<input type="file" name="file" id="fileupLoadingTen" disabled />
											</td>
											<td class="schedule" id="hiddenBorderOneOne" style="border-left:hidden; border-right:hidden;" >
												<label for="fileupLoadingOneOne" class="fileupLoadingOneOne"> ${TimelineVO.oneOne} </label>
												<input type="file" name="file" id="fileupLoadingOneOne" disabled />
											</td>
											<td class="schedule" id="hiddenBorderOneTwo" style="border-left:hidden; border-right:hidden;">
												<label for="fileupLoadingOneTwo" class="fileupLoadingOneTwo"> ${TimelineVO.oneTwo} </label>
												<input type="file" name="file" id="fileupLoadingOneTwo" disabled />
											</td>
											<td class="schedule" id="hiddenBorderOneThree" style="border-left:hidden; border-right:hidden;">
												<label for="fileupLoadingOneThree" class="fileupLoadingOneThree"> ${TimelineVO.oneThree} </label>
												<input type="file" name="file" id="fileupLoadingOneThree" disabled />
											</td>
											<td class="schedule" id="hiddenBorderOneFour" style="border-left:hidden; border-right:hidden;">
												<label for="fileupLoadingOneFour" class="fileupLoadingOneFour"> ${TimelineVO.oneFour} </label>
												<input type="file" name="file" id="fileupLoadingOneFour" disabled />
											</td>
											<td class="schedule" id="hiddenBorderOneFive" style="border-left:hidden; border-right:hidden;">
												<label for="fileupLoadingOneFive" class="fileupLoadingOneFive"> ${TimelineVO.oneFive} </label>
												<input type="file" name="file" id="fileupLoadingOneFive" disabled />
											</td>
											<td class="schedule" id="hiddenBorderOneSix" style="border-left:hidden; border-right:hidden;">
												<label for="fileupLoadingOneSix" class="fileupLoadingOneSix"> ${TimelineVO.oneSix} </label>
												<input type="file" name="file" id="fileupLoadingOneSix" disabled />
											</td>
											<td class="schedule" id="hiddenBorderOneSeven" style="border-left:hidden; border-right:hidden;">
												<label for="fileupLoadingOneSeven" class="fileupLoadingOneSeven"> ${TimelineVO.oneSeven} </label>
												<input type="file" name="file" id="fileupLoadingOneSeven" disabled />
											</td>
											<td class="schedule" id="hiddenBorderOneEight" style="border-left:hidden; border-right:hidden;">
												<label for="fileupLoadingOneEight" class="fileupLoadingOneEight" > ${TimelineVO.oneEight} </label>
												<input type="file" name="file" id="fileupLoadingOneEight" disabled />
											</td>
											<td class="schedule" id="hiddenBorderNine" style="border-left:hidden; border-right:hidden;">
												<label for="fileupLoadingOneNine" class="fileupLoadingOneNine"> ${TimelineVO.oneNine} </label>
												<input type="file" name="file" id="fileupLoadingOneNine" disabled />
											</td>
											<td class="schedule" id="hiddenBorderTwoZero" style="border-left:hidden; border-right:hidden;">
												<label for="fileupLoadingTwoZero" class="fileupLoadingTwoZero"> ${TimelineVO.twoZero} </label>
												<input type="file" name="file" id="fileupLoadingTwoZero" disabled />
											</td>
											<td class="schedule" id="hiddenBorderTwoOne" style="border-left:hidden; border-right:hidden;">
												<label for="fileupLoadingTwoOne" class="fileupLoadingTwoOne"> ${TimelineVO.twoOne} </label>
												<input type="file" name="file" id="fileupLoadingTwoOne" disabled />
											</td>
											<td class="schedule" id="hiddenBorderTwoTwo" style="border-left:hidden; border-right:hidden;">
												<label for="fileupLoadingTwoTwo" class="fileupLoadingTwoTwo"> ${TimelineVO.twoTwo} </label>
												<input type="file" name="file" id="fileupLoadingTwoTwo" disabled />
											</td>
											<td class="schedule" id="hiddenBorderTwoThree" style="border-left:hidden;">
												<label for="fileupLoadingTwoThree" class="fileupLoadingTwoThree"> ${TimelineVO.twoThree} </label>
												<input type="file" name="file" id="fileupLoadingTwoThree" disabled />
											</td>
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
						</table>
						<table id="table1">
							<colgroup>
								<col width="250"/>
							</colgroup>
							<tbody>
									<tr>
										<c:forEach items="${list}" var="TimelineVO">
											<td class="schedule">
												<input class="showMovie" type="button" id="six" name="button"  value="${TimelineVO.six}" />
											</td>
											<td class="schedule" id="hiddenBorder">
												<input class="showMovie" type="button" id="seven" name="button"  value="${TimelineVO.seven}"/>
											</td>
											<td class="schedule" id="hiddenBorder">
												<input class="showMovie" type="button" id="eight" name="button" value="${TimelineVO.eight}"/>
											</td>
											<td class="schedule" id="hiddenBorder">
												<input class="showMovie" type="button" id="nine" name="button" value="${TimelineVO.nine}"/>
											</td>
											<td class="schedule" id="hiddenBorder">
												<input class="showMovie" type="button" id="ten" name="button" value="${TimelineVO.ten}"/>
											</td>
											<td class="schedule" id="hiddenBorder">
												<input class="showMovie" type="button" id="oneOne" name="button" value="${TimelineVO.oneOne}"/>
											</td>
											<td class="schedule" id="hiddenBorder">
												<input class="showMovie" type="button" id="oneTwo" name="button" value="${TimelineVO.oneTwo}"/>
											</td>
											<td class="schedule" id="hiddenBorder">
												<input class="showMovie" type="button" id="oneThree" name="button" value="${TimelineVO.oneThree}"/>
											</td>
											<td class="schedule" id="hiddenBorder">
												<input class="showMovie" type="button" id="oneFour" name="button" value="${TimelineVO.oneFour}"/>
											</td>
											<td class="schedule" id="hiddenBorder">
												<input class="showMovie" type="button" id="oneFive" name="button" value="${TimelineVO.oneFive}"/>
											</td>
											<td class="schedule" id="hiddenBorder">
												<input class="showMovie" type="button" id="oneSix" name="button" value="${TimelineVO.oneSix}"/>
											</td>
											<td class="schedule" id="hiddenBorder">
												<input class="showMovie" type="button" id="oneSeven" name="button" value="${TimelineVO.oneSeven}"/>
											</td>
											<td class="schedule" id="hiddenBorder">
												<input class="showMovie" type="button" id="oneEight" name="button" value="${TimelineVO.oneEight}"/>
											</td>
											<td class="schedule" id="hiddenBorder">
												<input class="showMovie" type="button" id="oneNine" name="button" value="${TimelineVO.oneNine}"/>
											</td>
											<td class="schedule" id="hiddenBorder">
												<input class="showMovie" type="button" id="twoZero" name="button" value="${TimelineVO.twoZero}"/>
											</td>
											<td class="schedule" id="hiddenBorder">
												<input class="showMovie" type="button" id="twoOne" name="button" value="${TimelineVO.twoOne}"/>
											</td>
											<td class="schedule" id="hiddenBorder">
												<input class="showMovie" type="button" id="twoTwo" name="button" value="${TimelineVO.twoTwo}"/>
											</td>
											<td class="schedule">
												<input class="showMovie" type="button" id="twoThree" name="button" value="${TimelineVO.twoThree}"/>
											</td>
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
		var time = new Date();
		var currentHours = time.getHours();
		$("#six").click(function(){
			if(currentHours >= 6) {
				showSixHourMovie();
			}
		});
		$("#seven").click(function(){
			if(currentHours >= 7) {
				showSevenHourMovie();
			}
		});
		$("#eight").click(function(){
			if(currentHours >= 8) {
				showEightHourMovie();
			}
		});
		$("#nine").click(function(){
			if(currentHours >= 9) {
				showNineHourMovie();
			}
		});
		$("#ten").click(function(){
			if(currentHours >= 10) {
				showTenHourMovie();
			}
		});
		$("#oneOne").click(function(){
			if(currentHours >= 11) {
				showOneOneHourMovie();
			}
		});
		$("#oneTwo").click(function(){
			if(currentHours >= 12) {
				showOneTwoHourMovie();
			}
		});
		$("#oneThree").click(function(){
			if(currentHours >= 13) {
				showOneThreeHourMovie();
			}
		});
		$("#oneFour").click(function(){
			if(currentHours >= 14) {
				showOneFourHourMovie();
			}
		});
		$("#oneFive").click(function(){
			if(currentHours >= 15) {
				showOneFiveHourMovie();
			}
		});
		$("#oneSix").click(function(){
			if(currentHours >= 16) {
				showOneSixHourMovie();
			}
		});
		$("#oneSeven").click(function(){
			if(currentHours >= 17) {
				showOneSevenHourMovie();
			}
		});
		$("#oneEight").click(function(){
			if(currentHours >= 18) {
				showOneEightHourMovie();
			}
		});
		$("#oneNine").click(function(){
			if(currentHours >= 19) {
				showOneNineHourMovie();
			}
		});
		$("#twoZero").click(function(){
			if(currentHours >= 20) {
				showTwoZeroHourMovie();
			}
		});
		$("#twoOne").click(function(){
			if(currentHours >= 21) {
				showTwoOneHourMovie();
			}
		});
		$("#twoTwo").click(function(){
			if(currentHours >= 22) {
				showTwoTwoHourMovie();
			}
		});
		$("#twoThree").click(function(){
			if(currentHours >= 23) {
				showTwoThreeHourMovie();
			}
		});
	</script>
	

	
	<script>
	var bookingNumber = $("[name=bookingNumber]").val();
	
	function showSixHourMovie() {
	    $.ajax({
	    	url: "progressHour/showSixHourMovie",
	    	data: {
	    		"bookingNumber" : bookingNumber
	    	},
	    	type: 'GET',
	    	success: 
	    		resultShowMovie
	    	});
	    }
	
	function showSevenHourMovie() {
	    $.ajax({
	    	url: "progressHour/showSevenHourMovie",
	    	data: {
	    		"bookingNumber" : bookingNumber
	    	},
	    	type: 'GET',
	    	success: 
	    		resultShowMovie
	    	});
	    }
	
	function showEightHourMovie() {
	    $.ajax({
	    	url: "progressHour/showEightHourMovie",
	    	data: {
	    		"bookingNumber" : bookingNumber
	    	},
	    	type: 'GET',
	    	success: 
	    		resultShowMovie
	    	});
	    }
	
	function showNineHourMovie() {
	    $.ajax({
	    	url: "progressHour/showNineHourMovie",
	    	data: {
	    		"bookingNumber" : bookingNumber
	    	},
	    	type: 'GET',
	    	success: 
	    		resultShowMovie
	    	});
	    }
	
	function showTenHourMovie() {
	    $.ajax({
	    	url: "progressHour/showTenHourMovie",
	    	data: {
	    		"bookingNumber" : bookingNumber
	    	},
	    	type: 'GET',
	    	success: 
	    		resultShowMovie
	    	});
	    }
	
	function showOneOneHourMovie() {
	    $.ajax({
	    	url: "progressHour/showOneOneHourMovie",
	    	data: {
	    		"bookingNumber" : bookingNumber
	    	},
	    	type: 'GET',
	    	success: 
	    		resultShowMovie
	    	});
	    }
	
	function showOneTwoHourMovie() {
	    $.ajax({
	    	url: "progressHour/showOneTwoHourMovie",
	    	data: {
	    		"bookingNumber" : bookingNumber
	    	},
	    	type: 'GET',
	    	success: 
	    		resultShowMovie
	    	});
	    }
	
	function showOneThreeHourMovie() {
	    $.ajax({
	    	url: "progressHour/showOneThreeHourMovie",
	    	data: {
	    		"bookingNumber" : bookingNumber
	    	},
	    	type: 'GET',
	    	success: 
	    		resultShowMovie
	    	});
	    }
	
	function showOneFourHourMovie() {
	    $.ajax({
	    	url: "progressHour/showOneFourHourMovie",
	    	data: {
	    		"bookingNumber" : bookingNumber
	    	},
	    	type: 'GET',
	    	success: 
	    		resultShowMovie
	    	});
	    }
	
	function showOneFiveHourMovie() {
	    $.ajax({
	    	url: "progressHour/showOneFiveHourMovie",
	    	data: {
	    		"bookingNumber" : bookingNumber
	    	},
	    	type: 'GET',
	    	success: 
	    		resultShowMovie
	    	});
	    }
	
	function showOneSixHourMovie() {
	    $.ajax({
	    	url: "progressHour/showOneSixHourMovie",
	    	data: {
	    		"bookingNumber" : bookingNumber
	    	},
	    	type: 'GET',
	    	success: 
	    		resultShowMovie
	    	});
	    }
	
	function showOneSevenHourMovie() {
	    $.ajax({
	    	url: "progressHour/showOneSevenHourMovie",
	    	data: {
	    		"bookingNumber" : bookingNumber
	    	},
	    	type: 'GET',
	    	success: 
	    		resultShowMovie
	    	});
	    }
	
	function showOneEightHourMovie() {
	    $.ajax({
	    	url: "progressHour/showOneEightHourMovie",
	    	data: {
	    		"bookingNumber" : bookingNumber
	    	},
	    	type: 'GET',
	    	success: 
	    		resultShowMovie
	    	});
	    }
	
	function showOneNineHourMovie() {
	    $.ajax({
	    	url: "progressHour/showOneNineHourMovie",
	    	data: {
	    		"bookingNumber" : bookingNumber
	    	},
	    	type: 'GET',
	    	success: 
	    		resultShowMovie
	    	});
	    }
	
	function showTwoZeroHourMovie() {
	    $.ajax({
	    	url: "progressHour/showTwoZeroHourMovie",
	    	data: {
	    		"bookingNumber" : bookingNumber
	    	},
	    	type: 'GET',
	    	success: 
	    		resultShowMovie
	    	});
	    }
	
	function showTwoOneHourMovie() {
	    $.ajax({
	    	url: "progressHour/showTwoOneHourMovie",
	    	data: {
	    		"bookingNumber" : bookingNumber
	    	},
	    	type: 'GET',
	    	success: 
	    		resultShowMovie
	    	});
	    }
	
	function showTwoTwoHourMovie() {
	    $.ajax({
	    	url: "progressHour/showTwoTwoHourMovie",
	    	data: {
	    		"bookingNumber" : bookingNumber
	    	},
	    	type: 'GET',
	    	success: 
	    		resultShowMovie
	    	});
	    }
	
	function showTwoThreeHourMovie() {
	    $.ajax({
	    	url: "progressHour/showTwoTwoHourMovie",
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
	
	<script>
	
	var timer = 0,
    timeTotal = 18,
    timeCount = 1,
    cFlag;

	function animateUpdate() {
		var time = new Date();
		var currentHours = time.getHours()-6;
		var currentMinutes = time.getMinutes()/60;
    	var currentTime = currentHours+currentMinutes;
    	if(currentHours< timeTotal) {
    		var x = currentTime/timeTotal*100,
     	  	y = x.toFixed(3);
    		$('#pbar_innerdiv').css("width", x + "%");
    		$('#pbar_innertext').text(time.getHours() + "시" + time.getMinutes() + "분");
    	}
        setTimeout("animateUpdate()", 1000);
	}


    $(function() {
    	var time = new Date();
    	if(6 <= time.getHours() && time.getHours() < 24 ){
        	if (cFlag == undefined) {
            	clearTimeout(timer);
            	perc = 0;
            	cFlag = true;
            	animateUpdate();
	        } if (!cFlag) {
	            cFlag = true;
	            animateUpdate();
	        } {
	            clearTimeout(timer);
	            cFlag = false;
	        }
    	} {
    		clearTimeout(timer);
            cFlag = false;
    	}
    });

	</script>
	
	<script>
	var time = new Date();
	var currentHours = time.getHours();
	$(function() {
		if(currentHours>=6) {
			$fileupLoadingSix = $('#fileupLoadingSix').attr('disabled', false);
			$('.fileupLoadingSix').css({"background-color":"#CEF6F5"});
			$('#hiddenBorderSix').css({"background-color":"#CEF6F5"});
		}if(currentHours>=7) {
			$fileupLoadingSeven = $('#fileupLoadingSeven').attr('disabled', false);
			$('.fileupLoadingSeven').css({"background-color":"#CEF6F5"});
			$('#hiddenBorderSeven').css({"background-color":"#CEF6F5"});
		}if(currentHours>=8) {
			$fileupLoadingEight = $('#fileupLoadingEight').attr('disabled', false);
			$('.fileupLoadingEight').css({"background-color":"#CEF6F5"});
			$('#hiddenBorderEight').css({"background-color":"#CEF6F5"});
		}if(currentHours>=9) {
			$fileupLoadingNine = $('#fileupLoadingNine').attr('disabled', false);
			$('.fileupLoadingNine').css({"background-color":"#CEF6F5"});
			$('#hiddenBorderNine').css({"background-color":"#CEF6F5"});
		}if(currentHours>=10) {
			$fileupLoadingTen = $('#fileupLoadingTen').attr('disabled', false);
			$('.fileupLoadingTen').css({"background-color":"#CEF6F5"});
			$('#hiddenBorderTen').css({"background-color":"#CEF6F5"});
		}if(currentHours>=11) {
			$fileupLoadingOneOne = $('#fileupLoadingOneOne').attr('disabled', false);
			$('.fileupLoadingOneOne').css({"background-color":"#CEF6F5"});
			$('#hiddenBorderOneOne').css({"background-color":"#CEF6F5"});
		}if(currentHours>=12) {
			$fileupLoadingOneTwo = $('#fileupLoadingOneTwo').attr('disabled', false);
			$('.fileupLoadingOneTwo').css({"background-color":"#CEF6F5"});
			$('#hiddenBorderOneTwo').css({"background-color":"#CEF6F5"});
		}if(currentHours>=13) {
			$fileupLoadingOneThree = $('#fileupLoadingOneThree').attr('disabled', false);
			$('.fileupLoadingOneThree').css({"background-color":"#CEF6F5"});
			$('#hiddenBorderOneThree').css({"background-color":"#CEF6F5"});
		}if(currentHours>=14) {
			$fileupLoadingOneFour = $('#fileupLoadingOneFour').attr('disabled', false);
			$('.fileupLoadingOneFour').css({"background-color":"#CEF6F5"});
			$('#hiddenBorderOneFour').css({"background-color":"#CEF6F5"});
		}if(currentHours>=15) {
			$fileupLoadingOneFive = $('#fileupLoadingOneFive').attr('disabled', false);
			$('.fileupLoadingOneFive').css({"background-color":"#CEF6F5"});
			$('#hiddenBorderOneFive').css({"background-color":"#CEF6F5"});
		}if(currentHours>=16) {
			$fileupLoadingOneSix = $('#fileupLoadingOneSix').attr('disabled', false);
			$('.fileupLoadingOneSix').css({"background-color":"#CEF6F5"});
			$('#hiddenBorderOneSix').css({"background-color":"#CEF6F5"});
		}if(currentHours>=17) {
			$fileupLoadingOneSeven = $('#fileupLoadingOneSeven').attr('disabled', false);
			$('.fileupLoadingOneSeven').css({"background-color":"#CEF6F5"});
			$('#hiddenBorderOneSeven').css({"background-color":"#CEF6F5"});
		}if(currentHours>=18) {
			$fileupLoadingOneEight = $('#fileupLoadingOneEight').attr('disabled', false);
			$('.fileupLoadingOneEight').css({"background-color":"#CEF6F5"});
			$('#hiddenBorderOneEight').css({"background-color":"#CEF6F5"});
		}if(currentHours>=19) {
			$fileupLoadingOneNine = $('#fileupLoadingOneNine').attr('disabled', false);
			$('.fileupLoadingOneNine').css({"background-color":"#CEF6F5"});
			$('#hiddenBorderOneNine').css({"background-color":"#CEF6F5"});
		}if(currentHours>=20) {
			$fileupLoadingTwoZero = $('#fileupLoadingTwoZero').attr('disabled', false);
			$('.fileupLoadingTwoZero').css({"background-color":"#CEF6F5"});
			$('#hiddenBorderTwoZero').css({"background-color":"#CEF6F5"});
		}if(currentHours>=21) {
			$fileupLoadingTwoOne = $('#fileupLoadingTwoOne').attr('disabled', false);
			$('.fileupLoadingTwoOne').css({"background-color":"#CEF6F5"});
			$('#hiddenBorderTwoOne').css({"background-color":"#CEF6F5"});
		}if(currentHours>=22) {
			$fileupLoadingTwoTwo = $('#fileupLoadingTwoTwo').attr('disabled', false);
			$('.fileupLoadingTwoTwo').css({"background-color":"#CEF6F5"});
			$('#hiddenBorderTwoTwo').css({"background-color":"#CEF6F5"});
		}if(currentHours>=23) {
			$fileupLoadingTwoThree = $('#fileupLoadingTwoThree').attr('disabled', false);
			$('.fileupLoadingTwoThree').css({"background-color":"#CEF6F5"});
			$('#hiddenBorderTwoThree').css({"background-color":"#CEF6F5"});
		}
	});
	</script>

</body>
</html>
