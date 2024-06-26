<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MyReads - Everything about reading</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/login.css" type="text/css">
<script src="https://kit.fontawesome.com/fdb840a8cc.js" crossorigin="anonymous"></script>
</head>
<body>

	<div class="bodywrap">
    	<div class="login-form">
    		<h1><a href="../index.jsp">MyReads</a></h1>
		    <hr>
    		<div class="input-form">
    			<form action="login" method="post">
    				<div>
    					<i class="fa-regular fa-user"></i>
						<input type="email" id="email" name="email" placeholder="Email" required>
					</div>
					<div>
						<i class="fa-solid fa-unlock-keyhole"></i>
						<input type="password" id="password" name="password" placeholder="Password" required>
					</div>
		    		<button type="submit" class="login">Login</button>
    			</form>
    		</div>
   			<div class="sub-btn">
            	<ul>
                    <li><a href="find_id_num.jsp" class="find-id">이메일 찾기</a></li>
                    <li>|</li>
                    <li><a href="find_password_num.jsp" class="find-pw">비밀번호 찾기</a></li>
                    <li>|</li>
                    <li><a href="termsAgreement.jsp" class="signup">Sign Up</a></li>
                </ul>
   			</div>
    	</div>
    </div>

<%@ include file="../footer.jsp" %>

</body>
</html>