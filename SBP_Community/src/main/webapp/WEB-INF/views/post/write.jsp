<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>글쓰기</title>
	<link rel="stylesheet" href="/style/style.css?v">
</head>
<body>

	<%@ include file="../layout/header.jsp" %>
	
	<div id="mainWrap" class="wrap">
		<h1>글쓰기 페이지</h1>
		<hr>
		<form id="writeForm">
		
			<div class="writeFormInnerDiv">
				<label>
					<span>제목</span>
					<input type="text" id="title" name="title"
					placeholder="제목 입력" autofocus>
				</label>
			</div>
			<div class="writeFormInnerDiv">
				<label>
					<span>내용</span>
					<textarea name="content" id="content"
					placeholder="내용 입력"></textarea>
				</label>
			</div>
			<button type="button" id="writeBtn">등록</button>
		
		</form>
	</div>
	<!-- div#mainWrap.wrap -->
	
	
	<%@ include file="../layout/footer.jsp" %>
	
	<script src="/script/jquery-3.7.1.min.js"></script>
	<script src="/script/script.js"></script>
</body>
</html>    