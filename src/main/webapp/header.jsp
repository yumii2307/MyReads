<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/header.css" type="text/css">
    <script src="https://kit.fontawesome.com/fdb840a8cc.js" crossorigin="anonymous"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery-3.7.1.js"></script>
    
	<header>
		<div class="wrap">
			<div class="logo">
				<a href="${pageContext.request.contextPath}/index.jsp">MyReads</a>
			</div>
			
			<div class="menu">
				<ul>
					<li><a href="${pageContext.request.contextPath}/user/login.jsp">Login</a></li>
					<li><a href="${pageContext.request.contextPath}/user/signup.jsp">Sign Up</a></li>
				</ul>
			</div>
		</div>
	</header>