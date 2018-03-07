<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ include file="common/header.jsp"%>

<section class="centeredPanel">
	<h2>Your Calculated Drive Time</h2>
	<hr>
<div class="alienWeightCalcResults">

<div id="planetPic">
	<c:url value="/img/${time.planet.toLowerCase()}.jpg" var="imageURL" />
	<img src="${imageURL}" alt="${time.planet}" title="${time.planet}" />
</div>

<div id="planetWeightText">
 	<span>Traveling by <c:out value="${time.transport}"/> you will reach <c:out value="${time.planet}"/> in
 	<c:out value="${time.calculateDriveTime}"/> years. You will be <c:out value="${time.calculateDriveTimeAge}"/> years old.</span>
</div>

</div> <!-- alienWeightCalcResults -->

</section>
<%@ include file="common/footer.jsp"%>