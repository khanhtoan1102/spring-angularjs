package com.citigo.web;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class KendoController {
	
	
	@RequestMapping(value="/client", method = RequestMethod.GET)
	public String kendoGrid(){
		return "client";
	}
	
	@RequestMapping(value = "/loadstudent", method = RequestMethod.GET)
	public String loadStudent(Locale locale, Model model) {
		return "kendo_LOADstudent";
	}
	
	
	@RequestMapping(value = "/crudstudent", method = RequestMethod.GET)
	public String crudStudent(Locale locale, Model model) {
		return "kendo_CRUDstudent";
	}
	
	@RequestMapping(value = "/loadschool", method = RequestMethod.GET)
	public String loadSchool(Locale locale, Model model) {
		return "kendo_LOADschool";
	}
	
	
	@RequestMapping(value = "/crudschool", method = RequestMethod.GET)
	public String crudSchool(Locale locale, Model model) {
		return "kendo_CRUDschool";
	}
	
	
}
