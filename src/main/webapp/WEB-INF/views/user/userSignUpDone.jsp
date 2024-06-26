<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MyReads - Everything about reading</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/userSignUpDone.css" type="text/css">
<script src="https://kit.fontawesome.com/fdb840a8cc.js" crossorigin="anonymous"></script>
</head>
<body>

	<div class="bodywrap">
		<div class="signup-done-form">
			<h1><a href="../index.jsp">MyReads</a></h1>
			<hr>
			<div class="comment-form">
				<i class="fa-solid fa-check"></i>
				<p>회원가입이 완료되었습니다.<br>로그인 페이지로 이동하시겠습니까?</p>
				<a href="../index.jsp">Home</a>
				<a href="../user/login.jsp">Login</a>
			</div>
		</div>
	</div>

	<%@ include file="../../../footer.jsp"%>

</body>
</html>