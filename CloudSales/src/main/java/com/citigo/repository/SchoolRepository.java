package com.citigo.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.citigo.model.School;

public interface SchoolRepository extends JpaRepository<School, Integer>{
	School findByname(String name);
}
