<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="common/header.jsp"%>

<section class="centeredPanel">
	<h2>Solar System Geek Forum</h2>

	<c:url var="submitForumPost" value="/submitForumPost" />
	<a href="${submitForumPost}">Post a Message</a>
<div class="testingColor">
	<c:forEach var="post" items="${forumPost}">
		<p class="testingColor" style="margin-bottom: .3%; padding: 10px;">
			<strong><c:out value="${post.subject}" /></strong> <br> <span>
				by <c:out value="${post.username}" /> on 
				<fmt:parseDate var="parsedDateTime" value="${post.datePosted}" pattern="yyyy-MM-dd'T'HH:mm" type="both"/> 
				<fmt:formatDate pattern="dd/MM/yyyy" value="${parsedDateTime}"/> at </span>
			<fmt:formatDate pattern="HH:mm:ss" value="${parsedDateTime}" /> <br>
			<c:out value="${post.message}" />
		</p>
	</c:forEach>
</div>
</section>
<%@ include file="common/footer.jsp"%>