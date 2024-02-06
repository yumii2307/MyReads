<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MyReads - Everything about reading</title>
    <link rel="stylesheet" href="resources/css/index.css" type="text/css">
    <script src="resources/js/main.js" defer type="text/javascript"></script>
    <script src="https://kit.fontawesome.com/fdb840a8cc.js" crossorigin="anonymous"></script>
</head>
<body>

	<header>
		<div class="wrap">
			<div class="logo">
				<a href="index.jsp">MyReads</a>
			</div>
			
			<div class="menu">
				<div class="login">
					<a href="#">Login</a>
				</div>
				<div class="signup">
					<a href="#">Sign Up</a>
				</div>
			</div>
		</div>
	</header>
	
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
	
	<footer>
		<hr>
		<div class="footer">
			<div class="copy">
	             © 2024 MyReads Inc. All rights reserved
	        </div>
	        <div class="sns">
	        	<i class="fa-brands fa-instagram"></i>
	        	<i class="fa-brands fa-youtube"></i>
	        	<i class="fa-brands fa-x-twitter"></i>
	        	<i class="fa-brands fa-facebook"></i>
	        </div>
        </div>
	</footer>
	
</body>
</html>