package com.citigo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.citigo.model.Student;
import com.citigo.repository.StudentRepository;

@Service
public class StudentServiceImpl implements StudentService{

	@Autowired
	private StudentRepository studentrepository;
	
	@Override
	public List<Student> getAllStudent() {
		// TODO Auto-generated method stub
		return studentrepository.findAll();
	}

	@Override
	public Student getStudentById(int id) {
		// TODO Auto-generated method stub
		return studentrepository.findOne(id);
	}

	@Override
	public void addStudent(Student obj) {
		// TODO Auto-generated method stub
		studentrepository.save(obj);
	}

	@Override
	public void updateStudent(Student obj) {
		// TODO Auto-generated method stub
		studentrepository.saveAndFlush(obj);
	}

	@Override
	public void deleteStudent(Student obj) {
		// TODO Auto-generated method stub
		studentrepository.delete(obj);
	}
	

}
