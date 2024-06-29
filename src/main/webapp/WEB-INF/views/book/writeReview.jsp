<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
	HttpSession loginSession = request.getSession();
	String email = (String) loginSession.getAttribute("email");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MyReads - Everything about reading</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/writeReview.css" type="text/css">
<script src="${pageContext.request.contextPath}/resources/js/writeReview.js" defer type="text/javascript"></script>
</head>
<body>

	<%@ include file="../../../header.jsp" %>
	
	<div class="bodywrap">
		<h1>Writing a Book review</h1>
	    <hr>
	    <form id="book-review-form" action="writeReviewDone" method="post">
			<div class="book-info-form">
		    	<div class="book-mark"></div>
		    	<div class="book-info">
				    <h3>Book Info <button id="searchButton" type="button"><i class="fa-solid fa-magnifying-glass"></i></button></h3>
				    <table id="book-info-hidden">
				    	<tr>
					    	<td><img alt="Image" src="#" id="selectImg"></td>
					    	<td>
								<div id="email"><%=email%></div>
						    	<div id="selectTitle"></div>
						    	<div id="selectAuthor"></div>
						    	<div id="selectPublisher"></div>
								<div id="selectItemId"></div>
					    	</td>
				    	</tr>
				    </table>
		    	</div>
		    </div>
		    <div class="quotation">
		    	<i class="fa-solid fa-quote-left"></i>
		    	<input type="text" id="autoWidthInput" placeholder="기억에 남는 구절을 적어주세요." required>
		    	<i class="fa-solid fa-quote-right"></i>
		    	<span id="hiddenSpan"></span>
		    </div>
		    <div class="review">
		    	<textarea placeholder="리뷰를 작성해주세요." id="review" required></textarea>
		    </div>
		    <input type="submit" value="Submit ›" id="reviewSubmit">
	    </form>
	</div>
	
	<div class="popup-background"></div>
    <div class="popup">
		<div class="select-search-form">
			<h2 id="popupLogo">MyReads</h2>
    		<select name="queryType" id="queryType">
	    		<option>Type</option>
	    		<option value="title">Title</option>
	    		<option value="author">Author</option>
	    		<option value="publisher">Publisher</option>
	    	</select>
	    	<input name="query" type="text" id="query">
	    	<button type="button" onclick="search()" id="popupSearchButton"><i class="fa-solid fa-magnifying-glass"></i></button>
	    </div>
	    <table>
			<tbody id="result">
				<c:forEach items="${list}" var="vo">
    				<tr>
				      	<td>
					      	<c:set var="newCover" value="${fn:replace(vo.cover, 'coversum', 'cover100')}"/>
							<img src="${newCover}" alt="이미지" id="img">
						</td>
				      	<td id="title">${vo.title}</td>
				      	<td id="author">${vo.author}</td>
				      	<td id="publisher">${vo.publisher}</td>
				      	<td id="itemId">${vo.itemId}</td>
				    </tr>
			    </c:forEach>
			</tbody>
		</table>
    </div>
	
	<%@ include file="../../../footer.jsp" %>

</body>
</html>