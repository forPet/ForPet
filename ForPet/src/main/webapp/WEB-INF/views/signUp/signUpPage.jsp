<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<title>회원가입</title>

<script src="../resources/plugins/jQuery/jQuery-2.1.4.min.js"></script>
<script src="../resources/js/signUpPage.js"></script>
</head>

<body>
	<!-- 본문 시작 -->
	<h1>회원가입</h1>
	<form id="signUpForm" method="post" onsubmit="return DoSignUp()">
		<table class="Sign_Up">
			<thead>
				<tr>
					<td colspan="3" class="Sign_Up_agree">포팻 이용 약관 동의</td>
				</tr>
				<tr>
					<td colspan="3" class="Sign_Up_agree_textarea"><textarea rows="20" cols="100" readonly="readonly">
제 1 조 목적
본 약관은 서비스 이용자가 포팻(이하 “회사”라 합니다)이 제공하는 온라인상의 인터넷 서비스(이하 “서비스”라고 하며, 접속 가능한 유∙무선 단말기의 종류와는 상관없이 이용 가능한 “회사”가 제공하는 모든 “서비스”를 의미합니다. 이하 같습니다)에 회원으로 가입하고 이를 이용함에 있어 회사와 회원(본 약관에 동의하고 회원등록을 완료한 서비스 이용자를 말합니다. 이하 “회원”이라고 합니다)의 권리•의무 및 책임사항을 규정함을 목적으로 합니다.

제 2 조 (약관의 명시, 효력 및 개정)

① 회사는 이 약관의 내용을 회원이 쉽게 알 수 있도록 서비스 초기 화면에 게시합니다.
② 회사는 온라인 디지털콘텐츠산업 발전법, 전자상거래 등에서의 소비자보호에 관한 법률, 약관의 규제에 관한 법률, 소비자기본법 등 관련법을 위배하지 않는 범위에서 이 약관을 개정할 수 있습니다.
③ 회사가 약관을 개정할 경우에는 기존약관과 개정약관 및 개정약관의 적용일자와 개정사유를 명시하여 현행약관과 함께 그 적용일자 일십오(15)일 전부터 적용일 이후 상당한 기간 동안, 개정 내용이 회원에게 불리한 경우에는 그 적용일자 삼십(30)일 전부터 적용일 이후 상당한 기간 동안 각각 이를 서비스 홈페이지에 공지하여 고지합니다.
④ 회사가 전항에 따라 회원에게 통지하면서 공지∙고지일로부터 개정약관 시행일 7일 후까지 거부의사를 표시하지 아니하면 승인한 것으로 본다는 뜻을 명확하게 고지하였음에도 의사표시가 없는 경우에는 변경된 약관을 승인한 것으로 봅니다. 회원이 개정약관에 동의하지 않을 경우 회원은 제15조 제1항의 규정에 따라 이용계약을 해지할 수 있습니다.

				</textarea></td>
				</tr>
				<tr>
					<td colspan="3" class="Sign_Up_agree_checkbox"><input type="checkbox" id="agree_checkbox">동의합니다.</td>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th scope="row">아이디</th>
					<td>
					<input type="text" id="user_Id" name="userId" class="wdp_90" placeholder="아이디">
					<span id="checkMsg"></span>
					</td>
					<td><button type="button" id="idCheck">중복확인</button></td>
				</tr>
				<tr>
					<th scope="row">비밀번호</th>
					<td><input type="password" id="user_Password" name="userPassword" class="wdp_90" placeholder="비밀번호"></td>
				</tr>
				<tr>
					<th scope="row">비밀번호확인</th>
					<td><input type="password" id="user_Password_Check" class="wdp_90" placeholder="비밀번호 확인"></td>
				</tr>
				<tr>
					<th scope="row">이름</th>
					<td><input type="text" id="user_Name" name="userName" class="wdp_90" placeholder="이름"></td>
				</tr>
				<tr>
					<th scope="row">성별</th>
					<td>
						<select id="user_Gender" name="userGender">
							<option value="남자">남자</option>
							<option value="여자">여자</option>
						</select>
					</td>
				</tr>
				<tr>
					<th scope="row">생년월일</th>
					<td><input type="date" id="user_DateOfBirth" name="userDateOfBirth" class="wdp_90">
					</td>
				</tr>
				<tr>
					<th scope="row">연락처</th>
					<td><input type="text" id="user_PhoneNumber" name="userPhoneNumber" class="wdp_90" placeholder="010-0000-0000"></td>
				</tr>
				<tr>
					<th scope="row">이메일</th>
					<td><input type="email" id="user_Email" name="userEmail" class="wdp_90" placeholder="이메일"></td>
				</tr>
				<tr>
					<th scope="row">주소</th>
					<td><input type="text" id="user_Address" name="userAddress" class="wdp_90" placeholder="서울시 OO구 OO동"></td>
				</tr>
			</tbody>
		</table>
			<div class="boc_footer">
				<button type="submit" name="Sign_Up_btn" class="signUpBtn">가입</button>			
				<button type="button" name="nSign_Up_btn" onclick="goBack()">취소</button>			
			</div>
	</form>
</body>
</html>
