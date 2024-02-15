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
<script src="${pageContext.request.contextPath}/resources/js/bookList.js" defer type="text/javascript"></script>
</head>
<body>

	<%@ include file="../../../header.jsp" %>
	
	<img class="main-img" alt="메인 이미지" src="${pageContext.request.contextPath}/resources/img/book.jpg">
	<div class="bodywrap">
		<c:forEach begin="0" end="2" var="type">
			<div class="book-wrap">
				<div class="book-list-form">
					<h1 class="list">
						<c:choose>
							<c:when test="${type == 0}">
								<i class="fa-solid fa-crown"></i> Best Seller
							</c:when>
							<c:when test="${type == 1}">
								<i class="fa-solid fa-book"></i> New Book
							</c:when>
							<c:otherwise>
								<i class="fa-solid fa-book-bookmark"></i> Notable New Book
							</c:otherwise>
						</c:choose>
					</h1>
					<div class="book-list">
						<ul>
							<c:set var="count" value="0"/>
							<c:forEach items="${list}" var="vo">
								<c:if test="${vo.type == type}">
									<c:if test="${count < 10}">
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
										<c:set var="count" value="${count + 1}"/>
									</c:if>
								</c:if>
							</c:forEach>
						</ul>
					</div>
					<div class="more">
						<a href="bookAllList?type=${type}">more ›</a>
					</div>
				</div>
				<button class="prev-btn" disabled><i class="fa-solid fa-chevron-left"></i></button>
				<button class="next-btn"><i class="fa-solid fa-chevron-right"></i></button>
			</div>
		</c:forEach>
	</div>
	<div class="current-date">Data as of<c:out value=" ${list[0].getApiDate}" /></div>
	
	<%@ include file="../../../footer.jsp" %>

</body>
</html>