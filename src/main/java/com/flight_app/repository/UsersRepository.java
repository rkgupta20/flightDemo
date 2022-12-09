package com.flight_app.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.flight_app.entities.Users;

public interface UsersRepository extends JpaRepository<Users, Long> {
	
	@Query()
	Users findByEmail(String email);

}
