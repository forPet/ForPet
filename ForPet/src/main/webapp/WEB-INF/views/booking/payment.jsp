<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="../resources/plugins/jQuery/jQuery-2.1.4.min.js"></script>
<script src="//apps.bdimg.com/libs/jquery/1.10.2/jquery.min.js"></script>
<script src="//apps.bdimg.com/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />  
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>  
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script> 

<style type="text/css">
#test {
	height: 100px;
	padding: 10px;
}

ul {
	all: unset;
	display: table;
	margin-left: auto;
}

#payment_button {
	display: table;
	margin-right: auto;
	margin-left: auto;
}
</style>
</head>
<body onload="init()">
	<div style="padding: 30px 0 30px 0">
		<header>헤더 부분 </header>
	</div>
	<hr>
	<h3>결제 정보</h3>
	<div style="margin: 0 auto; width: 70%; border-style: solid;">
		<div>
			부가서비스 창
		</div>
		<form role="form" method="post">
			<div style="float: right;">
				<div>
					시작일：<input type="text" class="datepicker">
				</div>
				<div>
					종료일：<input type="text" class="datepicker">
				</div>
			</div>
			<c:forEach items="${sitterExtra}" var="extra">
				<table>
					<tr>	
						<td>
							<input type=hidden class="sell_price${extra.extraServiceName}" value="${extra.extraSerivcePrice}">
							<input type=hidden class="extra_cnt${extra.extraServiceName}" value="1">
							${extra.extraServiceType} ${extra.extraServiceName} : ${extra.extraSerivcePrice}원 
							<input type="text" class="cnt${extra.extraServiceName}" value="0" size="5">
							<input class="price_add" type="button" value=" + " division="${extra.extraServiceName}"> <!-- 나중에 onclick으로 변경 해야 할 것 같음 division이 중복  -->
							<input class="price_del" type="button" value=" - " division="${extra.extraServiceName}"><br> <!-- 나중에 onclick으로 변경 해야 할 것 같음  -->
						</td>
					</tr>
				</table>
			</c:forEach>
			<span> 부가서비스 금액 : 
				<input type="text" id="extra_price" name="extraServicePrice" readonly style="border: none" value=0 size="1">원
			</span>
			
			<div style="text-align: right;">
				결제 수단 선택 :
				<label><input type="radio" name="payment" id="cash">현금 결제</label>
				<label><input type="radio" name="payment" id="card">체크/신용카드 결제</label>
			</div>
			
			<div id="test" style="margin: 10px auto">
				<div class="modal-title"></div>
				<div>
					결제정보
					<ul>
						<li>
							부가서비스 비용 : <span id="test123" style="width: 20px"></span>
						</li>
						<li>
							펫시터 비용 :  <span id="sitter_price">17000</span>
						</li>
						<li>
							최종 금액 :  <input id="total_price" name="toralPrice" value=0>
						</li>
					</ul>
					<div>
						<div id="payment_button">
							<button type="button" id="cancle">취소</button>
							<button type="submit" id="payment">결제</button>
						</div>
					</div>
				</div>
			</div>
		</form>
	</div>
	<script>
	console.log("${sitterNumber}");
	console.log("${sitterExtra}");
		$(function() {
			$(".datepicker").datepicker({
				minDate : -20,
				maxDate : "+1M +10D"
			});
		});
		$(document).ready(function() {
			/* $.ajax({ 
				url: "http://localhost:8080/test", 
				method: "post", 
				type: "json", 
				contentType: "application/json", 
				data: JSON.stringify(form), 
				success: function(data) { 
					console.log(data); 
					} 
			}); */
			var json = { 
					sitter_price: document.getElementById("sitter_price").textContent,
					extra_price: $("#extra_price").val(),
			};
			
			console.log(json);
			$("#payment").click(function() {
				$.ajax({
				    type : 'post', // 타입
				    url : 'http://localhost:8080/booking/payment?sitterNumber=1&userNumber=2', // URL
				    headers : { // Http header
				      "Content-Type" : "application/json",
				      "X-HTTP-Method-Override" : "POST"
				    },
				    dataType : 'json', // 데이터 타입
				    data : JSON.stringify({ // 보낼 데이터
			    		json : json
				    }),
				    success : function(result) { // 결과 성공
				        console.log(result);
				    },
				    error : function(request, status, error) { // 결과 에러
							console.log("실패");
				    }
				})
			});
			$(".price_add").on("click", function() {  /* 추후 시간 날때 add와 del의 겹치는 구문 제거*/
				var extra_price = parseInt($("#extra_price").val());
				var division = $(this).attr("division");
				var extra_cnt = parseInt($(".extra_cnt" + division).val());
				var cnt = parseInt($(".cnt" + division).val());
				var sell_price = parseInt($(".sell_price" + division).val());
				var total_price = parseInt($("#total_price").val());
				
				console.log(extra_price);
				cnt += extra_cnt
				extra_Service_Count(cnt, division);
				
				extra_price += sell_price;
				extraPrice(extra_price);
				
				total_price += sell_price;
				total_Price(total_price);
				
				$("span#test123").html(extra_price + "원");
				});
				
			$(".price_del").on("click", function() {
				var extra_price = parseInt($("#extra_price").val());
				var division = $(this).attr("division");
				var extra_cnt = parseInt($(".extra_cnt" + division).val());
				var cnt = parseInt($(".cnt" + division).val());
				var sell_price = parseInt($(".sell_price" + division).val());
				var total_price = parseInt(document.getElementById("total_price").textContent);
					
				cnt -= extra_cnt
				extra_price -= sell_price;
				total_price -= sell_price;
				
			  if(extra_price < 0 ||  cnt < 0)
					console.error("놉!");
				else {
					extraPrice(extra_price);
					extra_Service_Count(cnt, division);
			  	$("span#test123").html(extra_price + "원");
			  	total_Price(total_price);
				}
			})
			
			$("#cancle").click(function() {
				window.history.back();
			});
			
			$(".btn-warning").on("click", function() {
				self.location = "/booking/test";
			});
			
			$("#re").on("click", function() {
				
			});
		});
		
		function extraPrice(extra_price) {
			document.getElementById("extra_price").value = extra_price;
		}
		
		function extra_Service_Count(cnt, division) {
			$(".cnt" + division).val(cnt);
		}
		
		function total_Price(total_price) {
			$("#total_price").val(total_price + "원");
		}
		
		function init() {
			var sitter_price = document.getElementById("sitter_price").textContent;
			var extra_price = parseInt($("#extra_price").val());
			$("span#test123").html(extra_price + "원");
			$("span#total_price").html(sitter_price);
		}
	</script>
</body>
</html>
