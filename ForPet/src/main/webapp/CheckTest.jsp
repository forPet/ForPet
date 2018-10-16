<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<input type="checkbox" name="checkBox"> a<br>
	<input type="checkbox" name="checkBox"> b<br>
	<input type="checkbox" name="checkBox"> c<br>
	<input type="checkbox" name="checkBox"> d<br>
	<input type="checkbox" name="checkBox"> e<br>
	
	<span id="result_Box"> </span>
	<input type="button" id="checkBox_Out" value="checkBox_checked"><br>
	<input type="button" id="not_checkBox_Out" value="not_checkBox_checked"><br>
	
	<script type="text/javascript">
		("#checkBox_Out").click(
			function()	{
				$("#result_Box").text($("input[type='checkbox']:checked").length);					
			});
	</script>
</body>
</html>