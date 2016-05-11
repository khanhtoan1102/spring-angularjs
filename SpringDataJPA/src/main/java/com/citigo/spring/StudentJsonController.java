package com.citigo.spring;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.citigo.model.Student;
import com.citigo.service.StudentService;

@RestController
public class StudentJsonController {

	@Autowired
	private StudentService studentservice;
	
	@RequestMapping(value="/student/all")
	public List<Student> getListStudentJson(){
		List<Student> list = studentservice.getAllStudent();
		return list;
	}
	
	@RequestMapping(value="student/{id}")
	public Student getStudentJson(@RequestParam("id") int id){
		Student obj = studentservice.getStudentById(id);
		return obj;
	}
	
	
}
