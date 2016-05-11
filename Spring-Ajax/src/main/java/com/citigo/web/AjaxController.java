package com.citigo.web;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.citigo.models.Student;

@Controller
public class AjaxController {

	@RequestMapping(value = "/student/all", method = RequestMethod.GET)
	public @ResponseBody List<Student> getAllStudent() {
		List<Student> list = new ArrayList<Student>();
		Student obj1 = new Student(1, "ktoan", "hy");
		Student obj2 = new Student(1, "SonNCK", "ht");
		Student obj3 = new Student(1, "Phuc", "vp");
		list.add(obj1);
		list.add(obj2);
		list.add(obj3);
		return list;
	}
	
	
	@RequestMapping(value = "/student/{id}", method = RequestMethod.GET)
	public @ResponseBody Student getStudentById(@PathVariable String id){
		Student obj = new Student(1, "ktoan", "hy");
		return obj;
	}
	
	@RequestMapping(value = "/json")
	public @ResponseBody String getJson(){
		return "MTA";
	}
}
