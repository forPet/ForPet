<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<input type="hidden" id="checking" value="${userId}">
<c:if test="${userId eq null}">
   <strong style="color:blue"> * 사용이 가능합니다.(O)</strong>
</c:if>
<c:if test="${userId ne null}">
   <strong style="color:red"> * 이미 사용중 입니다.(X)</strong>
</c:if>