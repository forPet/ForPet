<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="../resources/plugins/jQuery/jQuery-2.1.4.min.js"></script>


<title>Insert title here</title>
</head>
<body>
	<form action="/userPage/loginPost" method="post" onsubmit="return fn_login()">
		<div class="form=group has-feedback">
			<input type="text" id="user_id" name="userId" class="form-control" placeholder="USER ID" /> 
			<span class="glyphicon glyphicon-envelope form-control-feedback"></span>
		</div>
		<div class="form-group has-feedback">
			<input type="password" id="user_pwd" name="userPassword" class="form-control" placeholder="Password"> 
			<span class="glyphicon glyphicon-look form-control-feedback"></span>
		</div>
		<div class="row">
			<div class="col-xs-8">
				<div class="checkbox icheck">
					<label>
						<input type="checkbox" name="useCookie">RememberMe
					</label>
				</div>
			</div>
			<div>
			  <button type="submit" class="btn-primary" id="login_btn">Login</button>
			  <button type="button" id="signup" onclick="location.href='../signUp/signUpPage'">SignUp</button>
			</div>
		</div>
	</form>

	<script>
		function fn_login() {
			if ($("#user_id").val().length < 1 || $("#user_pwd").val().length < 1) {
				alert("아이디를 또는 비밀번호를 확인해주세요.");
				return false;
			}
			return true;
		}
	</script>

</body>
</html>