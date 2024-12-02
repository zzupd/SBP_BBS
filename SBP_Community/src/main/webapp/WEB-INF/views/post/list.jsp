<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>    
    
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>글목록</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="/style/style.css?v">
</head>
<body>
	
	<%@ include file="../layout/header.jsp" %>
	
	<div id="mainWrap" class="container wrap">
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
			
				<c:forEach var="post" items="${postList.content }" >
				
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
			
			<!-- 페이지네이션 시작 -->
			<ul class="pagination justify-content-center">
			
				<!-- 이전페이지(Previous page) 시작 -->
				<c:choose>
					<c:when test="${postList.first}">
						<li class="page-item disabled">
							<a class="page-link" href="?page=0">이전</a>
						</li>
					</c:when>
					<c:otherwise>
						<li class="page-item">
							<a href="?page=${postList.number-1 }" class="page-link">이전</a>
						</li>
					</c:otherwise>
				</c:choose> 
				<!-- 이전페이지(Previous page) 끝 -->
				
				<!-- 페이지 번호 시작 -->
				<c:forEach var="i" begin="1" end="${postList.totalPages }">
					<li class="page-item">
						<a class="page-link" href="?page=${i-1}">${i}</a>
					</li>
				</c:forEach>
				<!-- 페이지 번호 끝 -->
				
				<!-- 다음 페이지(Next page) 시작 -->
				<c:choose>
					<c:when test="${postList.last }">
						<li class="page-item disabled">
							<a class="page-link" href="?page=${postList.totalPages-1 }">다음</a>
						</li>
					</c:when>
					<c:otherwise>
						<li class="page-item">
							<a class="page-link" href="?page=${postList.number+1}">다음</a>
						</li>
					</c:otherwise>
				</c:choose>
				<!-- 다음 페이지(Next page) 끝 -->
			</ul>
			<!-- 페이지네이션 끝 -->
		
		</div>
		<!-- div#listArea -->


	</div>
	<!-- div#mainWrap.wrap -->
	
	<%@ include file="../layout/footer.jsp" %>
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
	<script src="/script/script.js"></script>
</body>
</html>    


