package com.techelevator.ssg.model.calculate;

import java.util.HashMap;
import java.util.Map;

public class AlienWeightCalculator {

	private double earthWeight;
	private String planet;
	
public String getPlanet() {
	return planet;
}

public double getEarthWeight() {
	return earthWeight;
}

public AlienWeightCalculator(double earthWeight, String planet) {
	this.earthWeight=earthWeight;
	this.planet=planet;
}

public double getCalculateWeight() {
	
	Map<String, Double> planetNamesToNum = new HashMap<>();
	planetNamesToNum.put("Sun", 27.95);
	planetNamesToNum.put("Mercury", .37);
	planetNamesToNum.put("Venus", .9);
	planetNamesToNum.put("Mars", .38);
	planetNamesToNum.put("Jupiter", 2.65);
	planetNamesToNum.put("Saturn", 1.13);
	planetNamesToNum.put("Uranus", 1.09);
	planetNamesToNum.put("Neptune", 1.43);
	planetNamesToNum.put("Pluto", .04);
	
	return planetNamesToNum.get(planet) * earthWeight;
	}
}