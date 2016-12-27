package com.citigo.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.citigo.model.School;
import com.citigo.service.SchoolService;

@RestController
public class SchoolController {
	
	@Autowired
	private SchoolService schoolservice;
	
	@RequestMapping(value="/school/all", method = RequestMethod.GET)
	public List<School> getListSchool(){
		List<School> list = schoolservice.getAllSchool();
		return list;
	}
	
	@RequestMapping(value="/school/{id}", method = RequestMethod.GET)
	public School getSchoolById(@PathVariable int id){
		School obj = schoolservice.getSchoolById(id);
		return obj;
	}
	
	@RequestMapping(value="/school/add", method = RequestMethod.POST)
	public String addSchool(@RequestBody School school){
		schoolservice.addSchool(school);
		return "success";
	}
	
	@RequestMapping(value="/school/update/{id}", method = RequestMethod.PUT)
	public String editSchool(@RequestBody School school, @PathVariable int id){
		school.setId(id);
		schoolservice.updateSchool(school);
		return "success";
	}
	
	@RequestMapping(value="/school/delete/{id}", method = RequestMethod.DELETE)
	public String deleteSchool(@RequestBody School school ,@PathVariable int id){
		school.setId(id);
		schoolservice.delete(school);
		return "success";
	}
	
	@RequestMapping(value="/schooldemo")
	public String kendoSchoolDemo(){
		return "kendo_school_demo";
	}
}
