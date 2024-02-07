<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MyReads - Everything about reading</title>
    <link rel="stylesheet" href="resources/css/index.css" type="text/css">
</head>
<body>

	<%@ include file="header.jsp" %>
	
	<div class="bodywrap">
		<div class="main-img">
			<img alt="메인 이미지" src="resources/img/book.jpg">
			<div class="main-logo">
				<a href="index.jsp" class="logo-text">MyReads</a>
				<a href="https://www.aladin.co.kr/home/welcome.aspx" target="_blank" class="aladin">With Aladin</a>
			</div>
		</div>
		
		<div class="shortcut">
			<div class="book-list">
				<a href="#"><i class="fa-solid fa-book"></i>Book List ›</a>
			</div>
			<div class="write-review">
				<a href="#"><i class="fa-solid fa-pen-fancy"></i>Writing a Book review ›</a>
			</div>
			<br>
			<div class="find-loc">
				<a href="#"><i class="fa-solid fa-signs-post"></i>Find Libraries & Bookstores ›</a>
			</div>
		</div>
	</div>
	
	<%@ include file="footer.jsp" %>
	
</body>
</html>