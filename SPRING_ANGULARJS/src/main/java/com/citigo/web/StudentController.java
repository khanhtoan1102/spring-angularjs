package com.citigo.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.citigo.model.Student;
import com.citigo.service.StudentService;

@RestController
public class StudentController {

	@Autowired
	private StudentService studentservice;

	@RequestMapping(value = "/student/all")
	public List<Student> getListStudentJson() {
		List<Student> list = studentservice.getAllStudent();
		return list;
	}

	@RequestMapping(value = "/student/{id}")
	public Student getStudentJson(@PathVariable Integer id) {
		Student obj = studentservice.getStudentById(id);
		return obj;
	}

	@RequestMapping(value = "/student/add", method = RequestMethod.POST)
	public String addStudent(@RequestBody Student student) {
		studentservice.addStudent(student);
		return "Success";
	}

	@RequestMapping(value = "/student/update/{id}", method = RequestMethod.PUT)
	public String updateStudent(@RequestBody Student student, @PathVariable Integer id) {
		student.setId(id);
		studentservice.updateStudent(student);
		return "Success";
	}

	@RequestMapping(value = "/student/delete/{id}", method = RequestMethod.DELETE)
	public String deleteItem(@PathVariable Integer id) {
		studentservice.deleteStudent(studentservice.getStudentById(id));
		return "Success";
	}
	
	@RequestMapping(value="/studentdemo")
	public String kendoStudentDemo(){
		return "kendo_student_demo";
	}

}
