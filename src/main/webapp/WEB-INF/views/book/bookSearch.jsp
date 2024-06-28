<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MyReads - Everything about reading</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bookSearch.css" type="text/css">
<script src="${pageContext.request.contextPath}/resources/js/bookSearch.js" defer type="text/javascript"></script>
</head>
<body>

	<%@ include file="../../../header.jsp" %>
	
	<div class="bodywrap">
		<div class="select-search-form">
    		<select name="queryType" id="queryType">
	    		<option>Type</option>
	    		<option value="title">Title</option>
	    		<option value="author">Author</option>
	    		<option value="publisher">Publisher</option>
	    	</select>
	    	<input name="query" type="text" id="query">
	    	<input type="button" id="submit" value="검색" onclick="search()">
	    </div>
	    <table>
			<tbody id="result">
				<c:forEach items="${list}" var="vo">
    				<tr>
				      	<td>${vo.title}</td>
				      	<td>
				      		<a href="${vo.link}">
						      	<c:set var="newCover" value="${fn:replace(vo.cover, 'coversum', 'cover100')}"/>
								<img src="${newCover}" alt="이미지">
							</a>
						</td>
				      	<td>${vo.author}</td>
				      	<td>${vo.publisher}</td>
				      	<td>${vo.pubDate}</td>
				    </tr>
			    </c:forEach>
			</tbody>
		</table>
	</div>
	
	<%@ include file="../../../footer.jsp" %>

</body>
</html>