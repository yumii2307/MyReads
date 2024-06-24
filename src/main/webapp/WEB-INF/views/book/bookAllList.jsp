<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MyReads - Everything about reading</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bookList.css" type="text/css">
</head>
<body>

	<%@ include file="../../../header.jsp" %>
	
	<img class="main-img" alt="메인 이미지" src="${pageContext.request.contextPath}/resources/img/book.jpg">
	<div class="bodywrap">
			<div class="book-wrap">
				<div class="book-list-form">
					<c:if test="${not empty list}">
    				<c:set var="vo" value="${list[0]}" />
						<h1 class="list">
							<c:choose>
								<c:when test="${vo.type == 0}">
									<i class="fa-solid fa-crown"></i> Best Seller
								</c:when>
								<c:when test="${vo.type == 1}">
									<i class="fa-solid fa-book"></i> New Book
								</c:when>
								<c:otherwise>
									<i class="fa-solid fa-book-bookmark"></i> Notable New Book
								</c:otherwise>
							</c:choose>
						</h1>
					</c:if>
					<div class="book-list">
						<ul>
							<c:forEach items="${list}" var="vo">
								<li>
									<c:if test="${vo.type == 0}">
										<h1 class="rank">${vo.bestRank}</h1>
									</c:if>
									<a href="bookDetail?itemId=${vo.itemId}" target="_blank" rel="noopener">
										<c:set var="newCover" value="${fn:replace(vo.cover, 'coversum', 'cover500')}"/>
										<img src="${newCover}" alt="이미지">
									</a>
									<div class="book-info">
										<div class="title font">
											<a href="bookDetail?itemId=${vo.itemId}" target="_blank" rel="noopener">
												${vo.title}
											</a>
										</div>
										<span class="author font">
											<a href="#" target="_blank" rel="noopener">
												${fn:split(vo.author, '(')[0]}
											</a>
										</span>
										<span class="publisher font">
											<a href="#" target="_blank" rel="noopener">
												| ${vo.publisher}
											</a>
										</span>
									</div>
								</li>
							</c:forEach>
						</ul>
					</div>
				</div>
			</div>
		</div>
	<div class="current-date">Data as of<c:out value=" ${list[0].getApiDate}" /></div>
	
	<%@ include file="../../../footer.jsp" %>

</body>
</html>