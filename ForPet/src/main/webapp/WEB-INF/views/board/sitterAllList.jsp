<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:forEach items="${SitterListPage}" var="listDTO">
	<div>
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
				<!-- 메인페이지에서 검색 할 경우와, 검색없이 리스트페이지로 바로 이동시 같은 시터의 시터평점이 다르게 나오는 현상 있음. -->
				<span>${listDTO.totalServiceCnt}</span>
			</div>
		</div>
	</div>
</c:forEach>
