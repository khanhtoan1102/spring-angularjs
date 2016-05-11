package com.citigo.service;

import java.util.List;

import com.citigo.model.Student;

public interface StudentService {
	List<Student> getAllStudent();
	Student getStudentById(int id);
	void addStudent(Student obj);
	void editStudent(Student obj);
	void deleteStudent(Student obj);
}
