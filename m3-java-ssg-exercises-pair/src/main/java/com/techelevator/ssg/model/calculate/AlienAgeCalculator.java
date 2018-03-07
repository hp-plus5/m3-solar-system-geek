package com.techelevator.ssg.model.calculate;

import java.util.HashMap;
import java.util.Map;

public class AlienAgeCalculator {

	private double earthAge;
	private String planet;
	
public String getPlanet() {
	return planet;
}

public double getEarthAge() {
	return earthAge;
}

public AlienAgeCalculator(double earthAge, String planet) {
	this.earthAge=earthAge;
	this.planet=planet;
}

public double getCalculateAge() {
	
	Map<String, Double> planetNamesToNum = new HashMap<>();
	planetNamesToNum.put("Mercury", 87.96);
	planetNamesToNum.put("Venus", 224.68);
	planetNamesToNum.put("Mars", 686.98);
	planetNamesToNum.put("Jupiter", 11.862);
	planetNamesToNum.put("Saturn", 29.456);
	planetNamesToNum.put("Uranus", 84.07);
	planetNamesToNum.put("Neptune", 164.81);
	planetNamesToNum.put("Pluto", 247.7);
	
	return (earthAge * 365) / planetNamesToNum.get(planet);
	}
	
}
