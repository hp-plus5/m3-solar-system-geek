package com.techelevator.ssg.model.calculate;

import java.math.BigDecimal;
import java.util.HashMap;
import java.util.Map;

public class DriveTimeCalculator {

	private double earthAge;
	private String planet;
	private String transport;

	public String getPlanet() {
		return planet;
	}

	public double getEarthAge() {
		return earthAge;
	}

	public String getTransport() {
		return transport;
	}

	public DriveTimeCalculator(String transport, double earthAge, String planet) {
		this.transport = transport;
		this.earthAge = earthAge;
		this.planet = planet;
	}

	public double getCalculateDriveTime() {
		Map<String, Double> transportToSpeed = new HashMap<>();
		transportToSpeed.put("Walking", 3.0);
		transportToSpeed.put("Car", 100.0);
		transportToSpeed.put("Bullet Train", 200.0);
		transportToSpeed.put("Boeing 747", 570.0);
		transportToSpeed.put("Concorde", 1350.0);

		Map<String, Double> planetNamesToNum = new HashMap<>();
		planetNamesToNum.put("Mercury", (double) 56974146);
		planetNamesToNum.put("Venus", (double) 25724767);
		planetNamesToNum.put("Mars", (double) 48678219);
		planetNamesToNum.put("Jupiter", (double) 390674710);
		planetNamesToNum.put("Saturn", (double) 792248270);
		planetNamesToNum.put("Uranus", (double) 1692662530);
		planetNamesToNum.put("Neptune", (double) 2703959960.0);
		planetNamesToNum.put("Pluto", (double) 4670000000.0);

		return (planetNamesToNum.get(planet) / (transportToSpeed.get(transport)*8760));
	}
	public double getCalculateDriveTimeAge() {

		return 	earthAge + this.getCalculateDriveTime();
}
}
