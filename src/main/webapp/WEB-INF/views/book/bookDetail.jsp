<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MyReads - Everything about reading</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bookDetail.css" type="text/css">
<script src="${pageContext.request.contextPath}/resources/js/bookList.js" defer type="text/javascript"></script>
</head>
<body>

	<%@ include file="../../../header.jsp" %>
	
	<img class="main-img" alt="메인 이미지" src="${pageContext.request.contextPath}/resources/img/book.jpg">
	<div class="bodywrap">
		<div class="book-content">
			<div class="book-img">
				<c:set var="newCover" value="${fn:replace(vo.cover, 'coversum', 'cover500')}"/>
				<img src="${newCover}" alt="이미지">
			</div>
			<div class="book-info">
				<div class="category font">${vo.categoryName}</div>
				<h1 class="title font">${fn:split(vo.title, '-')[0]}</h1>
				<c:if test="${not empty fn:substringAfter(vo.title, '-')}">
					<div class="subtitle font">- ${fn:substringAfter(vo.title, '-')}</div>
				</c:if>
				<div class="author font"><a href="#">${vo.author}</a></div>
				<span class="publisher font"><a href="#">${vo.publisher}</a></span>
				<span class="pubDate font"> | ${vo.pubDate}</span>
				<div class="priceStandard font">₩ ${vo.priceStandard}</div>
				<c:if test="${not empty vo.description}">
					<div class="description font">
						<i class="fa-solid fa-chevron-left"></i> 책 소개 <i class="fa-solid fa-chevron-right"></i><br>
						${vo.description}
					</div>
				</c:if>
				<div class="user-btn">
					<a href="#"><i class="fa-regular fa-bookmark"></i></a>Wish |
					<a href="${vo.link}" target="_blank">Buy Now ›</a>
				</div>
			</div>
		</div>
	</div>
	
	<%@ include file="../../../footer.jsp" %>

</body>
</html>