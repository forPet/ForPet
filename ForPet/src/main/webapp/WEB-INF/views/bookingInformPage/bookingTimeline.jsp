<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<style>
.schedule input[type="button"] { 
	border: 0; 
	background-color: white;
	cursor: pointer; 
	position: absolute; 
	overflow: hidden; 
	font-size: 0;
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

.showTimeline { 
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

#hiddenBorder {
	border-left:hidden !important; border-right:hidden !important; 
}
</style>
	
<div id="redips-drag">
	<div id="left">
	<table id="table1">
		<colgroup>
			<col width="250"/>
		</colgroup>
		<tbody>
			<tr>
				<c:forEach items="${list}" var="TimelineVO">
					<input type='hidden' id='bookingNumber' name='bookingNumber' value="${TimelineVO.bookingNumber}">
					<td class="schedule">
						<label for="six" class="showTimeline"> ${TimelineVO.six} </label>
						<input class="showMovie" type="button" id="six" name="button"  value="${TimelineVO.six}" />
					</td>
					<td class="schedule" id="hiddenBorder">
						<label for="seven" class="showTimeline"> ${TimelineVO.seven} </label>
						<input class="showMovie" type="button" id="seven" name="button"  value="${TimelineVO.seven}"/>
					</td>
					<td class="schedule" id="hiddenBorder">
						<label for="eight" class="showTimeline"> ${TimelineVO.eight} </label>
						<input class="showMovie" type="button" id="eight" name="button" value="${TimelineVO.eight}"/>
					</td>
					<td class="schedule" id="hiddenBorder">
						<label for="nine" class="showTimeline"> ${TimelineVO.nine} </label>
						<input class="showMovie" type="button" id="nine" name="button" value="${TimelineVO.nine}"/>
					</td>
					<td class="schedule" id="hiddenBorder">
						<label for="ten" class="showTimeline"> ${TimelineVO.ten} </label>
						<input class="showMovie" type="button" id="ten" name="button" value="${TimelineVO.ten}"/>
					</td>
					<td class="schedule" id="hiddenBorder">
						<label for="oneOne" class="showTimeline"> ${TimelineVO.oneOne} </label>
						<input class="showMovie" type="button" id="oneOne" name="button" value="${TimelineVO.oneOne}"/>
					</td>
					<td class="schedule" id="hiddenBorder">
						<label for="oneTwo" class="showTimeline"> ${TimelineVO.oneTwo} </label>
						<input class="showMovie" type="button" id="oneTwo" name="button" value="${TimelineVO.oneTwo}"/>
					</td>
					<td class="schedule" id="hiddenBorder">
						<label for="oneThree" class="showTimeline"> ${TimelineVO.oneThree} </label>
						<input class="showMovie" type="button" id="oneThree" name="button" value="${TimelineVO.oneThree}"/>
					</td>
					<td class="schedule" id="hiddenBorder">
						<label for="oneFour" class="showTimeline"> ${TimelineVO.oneFour} </label>
						<input class="showMovie" type="button" id="oneFour" name="button" value="${TimelineVO.oneFour}"/>
					</td>
					<td class="schedule" id="hiddenBorder">
						<label for="oneFive" class="showTimeline"> ${TimelineVO.oneFive} </label>
						<input class="showMovie" type="button" id="oneFive" name="button" value="${TimelineVO.oneFive}"/>
					</td>
					<td class="schedule" id="hiddenBorder">
						<label for="oneSix" class="showTimeline"> ${TimelineVO.oneSix} </label>
						<input class="showMovie" type="button" id="oneSix" name="button" value="${TimelineVO.oneSix}"/>
					</td>
					<td class="schedule" id="hiddenBorder">
						<label for="oneSeven" class="showTimeline"> ${TimelineVO.oneSeven} </label>
						<input class="showMovie" type="button" id="oneSeven" name="button" value="${TimelineVO.oneSeven}"/>
					</td>
					<td class="schedule" id="hiddenBorder">
						<label for="oneEight" class="showTimeline"> ${TimelineVO.oneEight} </label>
						<input class="showMovie" type="button" id="oneEight" name="button" value="${TimelineVO.oneEight}"/>
					</td>
					<td class="schedule" id="hiddenBorder">
						<label for="oneNine" class="showTimeline"> ${TimelineVO.oneNine} </label>
						<input class="showMovie" type="button" id="oneNine" name="button" value="${TimelineVO.oneNine}"/>
					</td>
					<td class="schedule" id="hiddenBorder">
						<label for="twoZero" class="showTimeline"> ${TimelineVO.twoZero} </label>
						<input class="showMovie" type="button" id="twoZero" name="button" value="${TimelineVO.twoZero}"/>
					</td>
					<td class="schedule" id="hiddenBorder">
						<label for="twoOne" class="showTimeline"> ${TimelineVO.twoOne} </label>
						<input class="showMovie" type="button" id="twoOne" name="button" value="${TimelineVO.twoOne}"/>
					</td>
					<td class="schedule" id="hiddenBorder">
						<label for="twoTwo" class="showTimeline"> ${TimelineVO.twoTwo} </label>
						<input class="showMovie" type="button" id="twoTwo" name="button" value="${TimelineVO.twoTwo}"/>
					</td>
					<td class="schedule">
						<label for="twoThree" class="showTimeline"> ${TimelineVO.twoThree} </label>
						<input class="showMovie" type="button" id="twoThree" name="button" value="${TimelineVO.twoThree}"/>
					</td>
				</c:forEach>
			</tbody>
		</table>
	</div><!-- left container -->
</div><!-- timeline end -->
