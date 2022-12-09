package com.flight_app.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.flight_app.entities.Reservation;

public interface ReservationRepository extends JpaRepository<Reservation, Long> {

}
