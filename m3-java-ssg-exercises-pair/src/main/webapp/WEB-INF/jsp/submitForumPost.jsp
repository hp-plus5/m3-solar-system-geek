<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="common/header.jsp"%>

<section class="centeredPanel">
	<h2>New Geek Post</h2>

	<c:url var="submitForumPostUrl" value="/submitForumPost" />
	<form action="${submitForumPostUrl}" method="POST">

		<div class="form-group"> 
			<label for="username">Username: </label>
			<input type="text" name="username" >
		</div>

		<div class="form-group">
			<label for="subject">Subject: </label>
			<input type="text" name="subject">
		</div>

		<div class="form-group">
			<label for="message">Message: </label>
			<input type="text" name="message"  >
		</div>
		
	<%--submit button --%>
	<div style="align: center;">
		<input type="submit" value="Submit" class="btn btn-default" >
	</div>
	</form>

</section>
<%@ include file="common/footer.jsp"%>