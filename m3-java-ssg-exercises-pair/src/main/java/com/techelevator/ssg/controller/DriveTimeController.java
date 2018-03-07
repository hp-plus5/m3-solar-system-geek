package com.techelevator.ssg.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.techelevator.ssg.model.calculate.DriveTimeCalculator;

@Controller
public class DriveTimeController {

	@RequestMapping(path="/driveTimeInput", method=RequestMethod.GET)
	public String displayDriveTime() {
		return "driveTimeInput";
	}

	@RequestMapping(path="/driveTimeResult", method=RequestMethod.GET)
	public String showDriveTimeCalculatorResults(@RequestParam String transport, @RequestParam double earthAge, @RequestParam String planet, ModelMap modelHolder) {

	DriveTimeCalculator time = new DriveTimeCalculator(transport, earthAge, planet);
	 modelHolder.put("time", time);

	 return "driveTimeResult";
	}
}