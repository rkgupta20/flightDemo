package com.flight_app.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.flight_app.entities.Passenger;

public interface PassengerRepository extends JpaRepository<Passenger, Long> {

}
