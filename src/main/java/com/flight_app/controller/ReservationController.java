package com.flight_app.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.flight_app.entities.Flights;
import com.flight_app.entities.Passenger;
import com.flight_app.entities.Reservation;
import com.flight_app.repository.FlightsRepository;
import com.flight_app.repository.PassengerRepository;
import com.flight_app.repository.ReservationRepository;
import com.flight_app.util.EmailSending;
import com.flight_app.util.PDFGenerator;

@Controller
public class ReservationController {
	
	public static String folderpath="C:\\Users\\Administrator\\Desktop\\stsPract\\flight_app\\tickets\\";
	@Autowired
	private FlightsRepository flightRepo;
	
	@Autowired 
	private PassengerRepository passengerRepo;
	
	@Autowired 
	ReservationRepository resevationRepo;
	
	@Autowired
	PDFGenerator pdfGen;
	
	@Autowired
	EmailSending emailSending;
	
	@RequestMapping("/showCompleteReservation")
	public String showCompleteReservation(@RequestParam("flightId") Long flightId, ModelMap modelMap) {
		Optional<Flights> findById = flightRepo.findById(flightId);
		Flights flight = findById.get();
		modelMap.addAttribute("flight", flight);
		return "showReservation";
	}
	
	@RequestMapping("/confirmReservation")
	public String confirmReservation(@RequestParam("firstName") String firstName,@RequestParam("middleName") String middleName,@RequestParam("lastName") String lastName,@RequestParam("email") String email,@RequestParam("phone") String phone,@RequestParam("flightId") Long flightId,ModelMap modelMap) {
		Passenger passenger= new Passenger();
		passenger.setFirstName(firstName);
		passenger.setLastName(lastName);
		passenger.setMiddleName(middleName);
		passenger.setEmail(email);
		passenger.setPhone(phone);
		passengerRepo.save(passenger);
		
		Optional<Flights> findById = flightRepo.findById(flightId);
		Flights flights = findById.get();
		
		Reservation reservation = new Reservation();
		reservation.setCheckedIn(false);
		reservation.setNumberOfBags(0);
		reservation.setPassenger(passenger);
		reservation.setFlight(flights);
		resevationRepo.save(reservation);
		
		modelMap.addAttribute("firstName",firstName);
		modelMap.addAttribute("lastName",lastName);
		modelMap.addAttribute("middleName",middleName);
		modelMap.addAttribute("email",email);
		modelMap.addAttribute("phone",phone);
		modelMap.addAttribute("flightNumber",flights.getFlightNumber());
		modelMap.addAttribute("operatingAirlines",flights.getOperatingAirlines());
		modelMap.addAttribute("departureCity",flights.getDepartureCity());
		modelMap.addAttribute("arrivalCity",flights.getArrivalCity());
		modelMap.addAttribute("estimatedDepartureTime",flights.getEstimatedDepartureTime());
		String s=firstName+" "+middleName+" "+lastName;
		pdfGen.generatePDF(folderpath+"ticket-"+flights.getFlightNumber()+passenger.getId()+".pdf",s,email,phone,flights.getFlightNumber(),flights.getOperatingAirlines(),flights.getDepartureCity(),flights.getArrivalCity(),flights.getEstimatedDepartureTime());
		emailSending.sendMessageWithAttachment(email, "Ticket details", "Kindly find your ticket in attachment", folderpath+"ticket-"+flights.getFlightNumber()+passenger.getId()+".pdf");
		return "confirmReservation";
	}
}
