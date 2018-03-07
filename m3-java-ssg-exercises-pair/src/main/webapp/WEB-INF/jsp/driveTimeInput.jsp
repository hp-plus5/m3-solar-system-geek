<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ include file="common/header.jsp"%>

<section class="centeredPanel">
	<h2>Drive Time Calculator</h2>


	<c:url var="formAction" value="/driveTimeResult" />
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

	<!-- Drop-down list of Transportation -->		
		<div>
			<label for="transport"> Choose a Mode of Transportation</label> <select name="transport"
				id="transport">
				<option value="0">Select</option>				
				<option value="Walking">Walking</option>
				<option value="Car">Car</option>
				<option value="Bullet Train">Bullet Train</option>
				<option value="Boeing 747">Boeing 747</option>
				<option value="Concorde">Concorde</option>
			</select>
		</div>
	<!-- Text input -->
		<div>
			<label for="driveTime">Enter Earth Age</label>
			<input type="text" name="earthAge" id="earthAge" placeholder="27" />
		</div>
	<!-- Submit Button -->
			<input class="formSubmitButton" type="submit" value="Calculate Travel Time"/>
	</form>
</section>

<%@ include file="common/footer.jsp"%>