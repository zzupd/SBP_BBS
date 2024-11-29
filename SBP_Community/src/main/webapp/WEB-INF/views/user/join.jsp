<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>회원가입</title>
	<link rel="stylesheet" href="/style/style.css?v">
</head>
<body>

	<%@ include file="../layout/header.jsp" %>
	
	<div id="mainWrap" class="wrap">
		<h1>회원가입 페이지</h1>
		<hr>
		<form id="joinForm">
		
			<div class="joinFormInnerDiv">
				<label>
					<input type="text" id="userid" name="userid"
					placeholder="아이디 입력" autofocus>
				</label>
			</div>
			<div class="joinFormInnerDiv">
				<label>
					<input type="text" id="password" name="password"
					placeholder="비밀번호 입력">
				</label>
			</div>
			<div class="joinFormInnerDiv">
				<label>
					<input type="text" id="email" name="email"
					placeholder="이메일 입력">
				</label>
			</div>
			<button type="button" id="joinBtn">Join</button>
		
		</form>
	</div>
	<!-- div#mainWrap.wrap -->
	
	
	<%@ include file="../layout/footer.jsp" %>
	
	<script src="/script/jquery-3.7.1.min.js"></script>
	<script src="/script/script.js"></script>
</body>
</html>    