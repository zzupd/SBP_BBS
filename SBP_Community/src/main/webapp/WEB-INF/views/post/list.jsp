<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>    
    
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>글목록</title>
	<link rel="stylesheet" href="/style/style.css?v">
</head>
<body>
	
	<%@ include file="../layout/header.jsp" %>
	
	<div id="mainWrap" class="wrap">
		<h1>글목록 페이지</h1>
		<hr>

		<div id="listArea">
		
			<div class="listColumn listHeader dFlex">
				<span class="num">번호</span>
				<span class="title">제목</span>
				<span class="userid">작성자</span>
				<span class="readcnt">조회수</span>
				<span class="regTM">등록시간</span>
			</div>
			
			<c:if test="${!empty postList }">
			
				<c:forEach var="post" items="${postList }" >
				
				<div class="listColumn listRow dFlex">
					
					<span class="num">${post.num }</span>
					<span class="title">${post.title }</span>
					<span class="userid">${post.userid }</span>
					<span class="readcnt">${post.readCnt }</span>
					<span class="regTM">
						<fmt:formatDate value="${post.regTM}" type="date"/>
					</span>
					
				</div>
				<!-- div.listRow -->
				
				</c:forEach>
			
			
			</c:if>
		
		</div>
		<!-- div#listArea -->


	</div>
	<!-- div#mainWrap.wrap -->
	
	<%@ include file="../layout/footer.jsp" %>
	
	<script src="/script/jquery-3.7.1.min.js"></script>
	<script src="/script/script.js"></script>
</body>
</html>    


