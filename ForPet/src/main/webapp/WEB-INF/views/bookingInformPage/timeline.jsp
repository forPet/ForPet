<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<script>
	function makeTimeline() {
		var timeline = 18;
		for(var i=0; i<parseInt(timeline);i++) {
			var timelineBox = document.createElement("td");
			timelineBox.type = "text"
			
			document.body.appendChild(timelineBox);
		}
	}
</script>
</head>
<body onload="makeTimeline()">
</body>
</html>
