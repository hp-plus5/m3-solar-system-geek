<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ include file="common/header.jsp"%>

<section class="centeredPanel">
	<h2>Alien Weight Calculator</h2>


	<c:url var="formAction" value="/alienWeightResult" />
	<form method="GET" action="${formAction}">

	<!-- Drop-down list of planets -->
		<div>
			<label for="planet"> Choose a Planet</label> <select name="planet"
				id="planet">
				<option value="0">Select</option>
				<option value="Sun">Sun</option>
				<option value="Mercury">Mercury</option>
				<option value="Venus">Venus</option>
				<option value="Mars">Mars</option>
				<option value="Jupiter">Jupiter</option>
				<option value="Saturn">Saturn</option>
				<option value="Uranus">Uranus</option>
				<option value="Neptune">Neptune</option>
				<option value="Pluto">Pluto</option>
			</select>
		</div>
	<!-- Text input -->
		<div>
			<label for="earthWeight">Enter Earth Weight</label>
			<input type="text" name="earthWeight" id="earthWeight" placeholder="156" />
		</div>
	<!-- Submit Button -->
			<input class="formSubmitButton" type="submit" value="Calculate Weight"/>
	</form>
</section>

<%@ include file="common/footer.jsp"%>