<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MyReads - Everything about reading</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/userSignUp.css" type="text/css">
<script src="${pageContext.request.contextPath}/resources/js/userSignUp.js" defer type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.7.1.js"></script>
<script src="https://kit.fontawesome.com/fdb840a8cc.js" crossorigin="anonymous"></script>
</head>
<body>

	<div class="bodywrap">
		<div class="signup-form">
			<h1><a href="../index.jsp">MyReads</a></h1>
			<hr>
			<div class="input-form" >
				<form action="userSignUp" method="post" id="signup-form">
					<div>
						<i class="fa-regular fa-user"></i>
						<input type="email" id="email" name="email" placeholder="Email" required>
						<button type="button" id="emailConfirm">중복확인</button>
					</div>
					<div id="passwordBox">
						<i class="fa-solid fa-unlock-keyhole"></i>
						<input type="password" id="password" name="password" placeholder="Password" required>
						<button type="button" id="showPassword" class="showPassword"><i class="fa-solid fa-eye-slash"></i></button>
						<output id="passwordMessage" class="condition"></output>
					</div>
					<div id="passwordBox2">
						<i class="fa-solid fa-unlock-keyhole"></i>
						<input type="password" id="password2" name="password2" placeholder="Confirm Password" required>
						<button type="button" id="showPassword2" class="showPassword"><i class="fa-solid fa-eye-slash"></i></button>
						<output id="passwordMessage2" class="condition"></output>
					</div>
					<div>
						<i class="fa-regular fa-user"></i>
						<input type="text" id="name" name="name" placeholder="Name" required>
					</div>
					<div>
						<i class="fa-solid fa-tag"></i>
						<input type="text" id="nickname" name="nickname" placeholder="Nickname" required>
						<button type="button" id="nicknameConfirm">중복확인</button>
					</div>
					<div>
						<i class="fa-solid fa-mobile-screen"></i>
						<input type="text" id="tel" name="tel" placeholder="Tel">
						<button type="button" id="telConfirm">번호인증</button>
					</div>
					<a href="termsAgreement.jsp" class="behind">‹ Back</a>
					<button type="submit" class="signup">Sign Up ›</button>
				</form>
			</div>
		</div>
	</div>

	<%@ include file="../../../footer.jsp"%>

</body>
</html>