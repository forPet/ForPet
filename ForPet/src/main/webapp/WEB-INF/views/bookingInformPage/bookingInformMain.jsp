<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Portfolio Item - Start Bootstrap Template</title>

    <!-- Bootstrap core CSS -->
    <link href="/resources/main/vendor/bootstrap/css/bootstrap.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="/resources/main/css/portfolio-item.css" rel="stylesheet">
    
    <!--  Calendar -->
    <link href='http://fullcalendar.io/js/fullcalendar-2.1.1/fullcalendar.css' rel='stylesheet' />
	<link href='http://fullcalendar.io/js/fullcalendar-2.1.1/fullcalendar.print.css' media='print' />
	<script src='http://fullcalendar.io/js/fullcalendar-2.1.1/lib/moment.min.js'></script>
	<script src='http://fullcalendar.io/js/fullcalendar-2.1.1/lib/jquery.min.js'></script>
	<script src='http://fullcalendar.io/js/fullcalendar-2.1.1/fullcalendar.min.js'></script>
	<script src="/resources/calendar/js/ko.js"></script>
	
	<!-- timeline -->
	<meta name="author" content="Darko Bunic"/>
	<meta name="description" content="Drag and drop table content with JavaScript"/>
	<link rel="stylesheet" href="/resources/timeline/css/style.css" type="text/css" media="screen"/>
	<script type="text/javascript" src="/resources/timeline/js/redips-drag-min.js"></script>
	<script type="text/javascript" src="/resources/timeline/js/script.js"></script>
	
	<style>
	.button {
	width: 100%;
 	text-align: center;
}

.btn {
	width: 38%;
	text-align: center;
	padding : auto;
}
	
#rightBtn {
	margin-right: 10px;
}
	</style>

  </head>

  <body>
    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
        <a class="navbar-brand" href="#">ForPet</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item active">
              <a class="nav-link" href="#">메인
                <span class="sr-only">(current)</span>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link">|</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">서비스 소개</a>
            </li>
            <li class="nav-item">
              <a class="nav-link">|</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">펫시터 찾기</a>
            </li>
            <li class="nav-item">
              <a class="nav-link">|</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">자주 하는 질문</a>
            </li>
            <li class="nav-item">
              <a class="nav-link">|</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">마이 페이지</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>

    <!-- Page Content -->
    <div class="container"  style = "padding-bottom : 40px">
      <!-- Portfolio Item Row -->
      <div class="row" style="padding-top : 40px">
		<!-- calendar call  --> 
        <div class="col-md-8">
			<div id='calendar'></div>
			<div id="main_container" style="margin-top: 20px">
			<!-- tables inside this DIV could have draggable content -->
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
								<td class="redips-mark">삭제</td>
							</tr>
							<tr class="selectColor">
								<!-- clone 2 elements + last element -->
								<td class="redips-mark"><div class="redips-drag redips-clone green"></div></td>
								<td class="redips-mark"><div class="redips-drag redips-clone orange"></div></td>
								<td class="redips-mark"><div class="redips-drag redips-clone blue"></div></td>
								<td class="redips-mark"><div class="redips-drag redips-clone yellow"></div></td>
								<td class="redips-mark"><div class="redips-drag redips-clone red"></div></td>
								<td class="redips-mark"><div class="redips-drag redips-clone purple"></div></td>
								<td class="redips-trash" title="Trash">휴지통</td>
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
								<td class="schedule"></td>
							</tr>
						</tbody>
					</table>
				</div><!-- left container -->
				
				<!-- right container -->
		
				</div><!-- drag container -->
			</div>
		</div><!-- main container -->

        
        <!--  calerdar action  -->
        <script>
		$('#calendar').fullCalendar({
			lang: "ko",
			header : {
				left : 'prev,next today',
				center : 'title',
				right : 'month,basicWeek,basicDay'
			},
			defaultDate : '2018-10-18',
			editable : true,
			eventLimit : true, // allow "more" link when too many events
			events : [ {
				id : 'All Day Event',
				title : 'All Day Event',
				start : '2018-10-01'
			}, {
				id : 'popo',
				title : 'popo',
				start : '2018-10-12T10:30:00',
				end : '2018-10-13T12:30:00',
				description : 'This is a cool event',
				color : 'rgb(142, 67, 163)',
				textColor : 'white'
			}, {
				id : 'popo2',
				title : 'popo2',
				//url: 'http://google.com/',
				start : '2018-10-19'
			} ]
		});

		$('#calendar').on('click', '.fc-day', function() {
			var myPrompt = prompt('uno', 'due');
			if (myPrompt != null && myPrompt != '') {
				$('#calendar').fullCalendar('addEventSource', [ {
					id : myPrompt,
					title : myPrompt,
					start : $(this).attr('data-date')
				} ]);
			}
		});

		$('#calendar').on('click', '.fc-content', function() {
			var gugu = $(this).children('.fc-title').html();
			$('#calendar').fullCalendar('removeEvents', gugu);
		});
	</script>

        <div class="col-md-4">
          <h3 class="my-3">예약 상세 정보</h3>
          	<div class =sideBar>
         	 	<a href="#">
          	  	<img class="img-fluid" src="/resources/images/zizi.JPG" alt="">
          		</a>
      	  	</div>
			<ul>
            	<li class="b-inform">예약자</li>
            	<li class="b-inform">반려동물 이름</li>
            	<li class="b-inform">예약날짜</li>
            	<li class="b-inform">부가사항</li>
        	</ul>
        	<div class="button">
        		<button id="rightBtn" type="button" class="btn btn-outline-success btn-lg">  수  락  </button>
        		<button type="button" class="btn btn-outline-danger btn-lg">  거  절  </button>
        	</div>
        </div>

      </div>
      <!-- /.row -->

    </div>
    <!-- /.container -->

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
