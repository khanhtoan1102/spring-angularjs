package com.citigo.service;

import java.util.List;

import com.citigo.model.School;

public interface SchoolService {
	List<School> getAllSchool();
	School getSchoolById(int id);
	void addSchool(School school);
	void updateSchool(School school);
	void delete(School school);

}
