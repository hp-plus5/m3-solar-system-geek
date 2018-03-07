<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ include file="common/header.jsp"%>

<section class="centeredPanel">
	<h2>Alien Age Calculator</h2>


	<c:url var="formAction" value="/alienAgeResult" />
	<form method="GET" action="${formAction}">

	<!-- Drop-down list of planets -->
		<div>
			<label for="planet"> Choose a Planet</label> <select name="planet"
				id="planet">
				<option value="0">Select</option>
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
			<label for="earthAge">Enter Earth Age</label>
			<input type="text" name="earthAge" id="earthAge" placeholder="36" />
		</div>
	<!-- Submit Button -->
			<input class="formSubmitButton" type="submit" value="Calculate Age"/>
	</form>
</section>

<%@ include file="common/footer.jsp"%>