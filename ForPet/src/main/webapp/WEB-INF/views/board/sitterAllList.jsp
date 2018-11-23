<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:forEach items="${SitterListPage}" var="listDTO">
	<div>
							<div>
								<span>${listDTO.userAddress}</span>
							</div>
							<div>
								<span>${listDTO.userName}</span> <span>${listDTO.introduce}</span>
							</div>
							<div>
								<span class="starRating"> 
								<c:if test="${listDTO.totalServiceScore==1}">
										<span style="width: 10%">1</span> </when>
								</c:if>
								<c:if test="${listDTO.totalServiceScore==2}">
										<span style="width: 20%">2</span> </when>
								</c:if>
								<c:if test="${listDTO.totalServiceScore==3}">
										<span style="width: 30%">3</span> </when>
								</c:if>
								<c:if test="${listDTO.totalServiceScore==4}">
										<span style="width: 40%">4</span> </when>
								</c:if>
								<c:if test="${listDTO.totalServiceScore==5}">
										<span style="width: 50%">5</span> </when>
								</c:if>
								<c:if test="${listDTO.totalServiceScore==6}">
										<span style="width: 60%">6</span> </when>
								</c:if>
								<c:if test="${listDTO.totalServiceScore==7}">
										<span style="width: 70%">7</span> </when>
								</c:if>
								<c:if test="${listDTO.totalServiceScore==8}">
										<span style="width: 80%">8</span> </when>
								</c:if>
								<c:if test="${listDTO.totalServiceScore==9}">
										<span style="width: 90%">9</span> </when>
								</c:if>
								<c:if test="${listDTO.totalServiceScore==10}">
										<span style="width: 100%">10</span> </when>
								</c:if>
								</span> <span>${listDTO.totalServiceCnt}</span>
								<p>
								</p>
							</div>
						</div>
</c:forEach>
