package com.citigo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.citigo.model.School;
import com.citigo.repository.SchoolRepository;

@Service
public class SchoolServiceImpl implements SchoolService{

	@Autowired
	private SchoolRepository schoolrepository;
	
	@Override
	public List<School> getAllSchool() {
		// TODO Auto-generated method stub
		return schoolrepository.findAll();
	}

	@Override
	public School getSchoolById(int id) {
		// TODO Auto-generated method stub
		return schoolrepository.findOne(id);
	}

	@Override
	public void addSchool(School school) {
		// TODO Auto-generated method stub
		schoolrepository.saveAndFlush(school);
	}

	@Override
	public void updateSchool(School school) {
		// TODO Auto-generated method stub
		schoolrepository.saveAndFlush(school);
	}

	@Override
	public void delete(School school) {
		// TODO Auto-generated method stub
		schoolrepository.delete(school);
	}

}
