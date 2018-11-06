<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- timeline -->
<meta name="author" content="Darko Bunic" />
<meta name="description"
	content="Drag and drop table content with JavaScript" />
<link rel="stylesheet" href="/resources/timeline/css/style.css"
	type="text/css" media="screen" />
<script type="text/javascript"
	src="/resources/timeline/js/redips-drag-min.js"></script>
<script type="text/javascript" src="/resources/timeline/js/script.js"></script>
	
<div id="redips-drag">
	<div id="right">
		<table id="table2">
			<colgroup>
				<col width="120" />
			</colgroup>
			<tbody>
				<tr class="contents">
					<td class="redips-mark">식사</td>
					<td class="redips-mark">산책</td>
					<td class="redips-mark">자유시간</td>
					<td class="redips-mark">병원</td>
					<td class="redips-mark">미용</td>
					<td class="redips-mark">취침</td>
					<td class="redips-mark">삭제</td>
				</tr>
				<tr class="selectColor">
					<!-- clone 2 elements + last element -->
					<td class="redips-mark"><div
							class="redips-drag redips-clone green"></div></td>
					<td class="redips-mark"><div
							class="redips-drag redips-clone orange"></div></td>
					<td class="redips-mark"><div
							class="redips-drag redips-clone blue"></div></td>
					<td class="redips-mark"><div
							class="redips-drag redips-clone yellow"></div></td>
					<td class="redips-mark"><div
							class="redips-drag redips-clone red"></div></td>
					<td class="redips-mark"><div
							class="redips-drag redips-clone purple"></div></td>
					<td class="redips-trash" title="Trash">휴지통</td>
				</tr>
			</tbody>
		</table>
	</div>
	<!-- right container -->

	<!-- left container -->
	<div id="left">
		<table id="table3">
			<colgroup>
				<col width="250" />
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
				<col width="250" />
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
	</div>
</div>