<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MyReads - Everything about reading</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/writeReview.css" type="text/css">
<script src="${pageContext.request.contextPath}/resources/js/writeReview.js" defer type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/resources/js/bookSearchContent.js" defer type="text/javascript"></script>
</head>
<body>

	<%@ include file="../../../header.jsp" %>
	
	<div class="bodywrap">
	    <input type="button" id="searchButton" value="Search">
	</div>
	
	<div class="popup-background"></div>
    <div class="popup">
        <%@ include file="bookSearchContent.jsp" %>
        <button id="closePopupButton">닫기</button>
    </div>
	
	<%@ include file="../../../footer.jsp" %>

</body>
</html>