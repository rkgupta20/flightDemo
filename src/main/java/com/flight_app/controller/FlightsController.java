package com.flight_app.controller;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.flight_app.entities.Flights;
import com.flight_app.repository.FlightsRepository;

@Controller
public class FlightsController {

	
	@Autowired
	private FlightsRepository flightRepo;
	
	@RequestMapping("/findFlights")
	public String findFlights(@RequestParam("from") String from,@RequestParam("to") String to, @RequestParam("departureDate") @DateTimeFormat(pattern = "MM-dd-yyyy") Date departureDate, ModelMap modelMap) {
		List<Flights> findFlights = flightRepo.findFlights(from, to, departureDate);
		modelMap.addAttribute("findFlights", findFlights);
		return "displayFlights";
	}
	
	
	
	
	
}
