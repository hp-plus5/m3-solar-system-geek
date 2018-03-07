<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="common/header.jsp"%>

<section class="centeredPanel">
	<h2>Your Calculated Alien Age</h2>
	<hr>
<div class="alienWeightCalcResults">

<div id="planetPic">
	<c:url value="/img/${age.planet.toLowerCase()}.jpg" var="imageURL" />
	<img src="${imageURL}" alt="${age.planet}" title="${age.planet}" />
</div>

<div id="planetWeightText">
 	<span>If you are <c:out value="${age.earthAge}"/> years old on Earth, you would be <c:out value="${age.calculateAge}"/> years old on 
 	<c:out value="${age.planet}"/>.</span>
</div>

</div> <!-- alienWeightCalcResults -->

</section>
<%@ include file="common/footer.jsp"%>