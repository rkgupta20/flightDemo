package com.flight_app.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import com.flight_app.entities.Reservation;
import com.flight_app.repository.ReservationRepository;

@RestController
public class ReservationRestfulController {
		
		@Autowired
	 	ReservationRepository ReservationReposiory;
		@GetMapping("/reservation/{id}")
		public Reservation findReservation(@PathVariable("id") Long id) {
			Optional<Reservation> findById = ReservationReposiory.findById(id);
			return findById.get();
		}
}
