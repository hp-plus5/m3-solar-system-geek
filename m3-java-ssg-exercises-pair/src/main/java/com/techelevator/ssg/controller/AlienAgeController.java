package com.techelevator.ssg.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.techelevator.ssg.model.calculate.AlienAgeCalculator;

@Controller
public class AlienAgeController {

	@RequestMapping(path="/alienAgeInput", method=RequestMethod.GET)
	public String displayAlienAge() {
		return "alienAgeInput";
	}

	@RequestMapping(path="/alienAgeResult", method=RequestMethod.GET)
	public String showAlienAgeCalculatorResults(@RequestParam double earthAge, @RequestParam String planet, ModelMap modelHolder) {

	AlienAgeCalculator age = new AlienAgeCalculator(earthAge, planet);
	 modelHolder.put("age", age);

	 return "alienAgeResult";
	}
}