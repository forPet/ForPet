<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<c:forEach items="${SitterListPage}" var="UserVO">
		<div>
			<div>
				<span>${UserVO.userAddress}</span>
			</div>
			<div>
				<span>${UserVO.userName}</span> <span>${UserVO.sitterVO.introduce}</span>
			</div>
			<div>
				<span>${UserVO.sitterVO.totalServiceScore}</span> 
				<span>${UserVO.sitterVO.totalServiceCnt}</span>
			</div>
		</div>
	</c:forEach>
