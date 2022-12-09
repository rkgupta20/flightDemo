package com.flight_app.repository;

import java.util.Date;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.flight_app.entities.Flights;

public interface FlightsRepository extends JpaRepository<Flights, Long> {
	
	@Query("from Flights where departureCity=:from and arrivalCity=:to and dateOfDeparture=:departureDate")
	List<Flights> findFlights(@Param("from") String from, @Param("to") String to, @Param("departureDate") Date departureDate);

}
