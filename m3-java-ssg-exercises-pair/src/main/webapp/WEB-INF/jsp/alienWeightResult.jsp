<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ include file="common/header.jsp"%>

<section class="centeredPanel">
	<h2>Your Calculated Alien Weight</h2>
	<hr>
<div class="alienWeightCalcResults">

<div id="planetPic">
	<c:url value="/img/${weight.planet.toLowerCase()}.jpg" var="imageURL" />
	<img src="${imageURL}" alt="${weight.planet}" title="${weight.planet}" />
</div>

<div id="planetWeightText">
 	<span>If you are <c:out value="${weight.earthWeight}"/> pounds on Earth, you would weigh <c:out value="${weight.calculateWeight}"/> pounds on 
 	<c:out value="${weight.planet}"/>.</span>
</div>


</div> <!-- alienWeightCalcResults -->

</section>
<%@ include file="common/footer.jsp"%>