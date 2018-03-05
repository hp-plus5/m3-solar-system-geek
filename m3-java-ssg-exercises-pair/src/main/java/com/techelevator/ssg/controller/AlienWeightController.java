package com.techelevator.ssg.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.techelevator.ssg.model.calculate.AlienWeightCalculator;

@Controller
public class AlienWeightController{


	@RequestMapping(path="/alienWeightInput", method=RequestMethod.GET)
	public String displayAlienWeight() {
		return "alienWeightInput";
	}

	@RequestMapping(path="/alienWeightResult", method=RequestMethod.GET)
	public String showAlienWeightCalculatorResults(@RequestParam double earthWeight, @RequestParam String planet, ModelMap modelHolder) {

	 AlienWeightCalculator weight = new AlienWeightCalculator(earthWeight, planet);
	 modelHolder.put("weight", weight);

	 return "alienWeightResult";
	}
}
