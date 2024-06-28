<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

	<div class="bodywrap">
		<div class="select-search-form">
    		<select name="queryType" id="queryType">
	    		<option>Type</option>
	    		<option value="title">Title</option>
	    		<option value="author">Author</option>
	    		<option value="publisher">Publisher</option>
	    	</select>
	    	<input name="query" type="text" id="query">
	    	<input type="button" id="submit" value="Search" onclick="search()">
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