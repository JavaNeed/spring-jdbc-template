package com.tutorialspoint;

import java.util.List;

public interface StudentDAO {
	public void create(String name, Integer age);

	public Student getStudent(Integer id);

	public List<Student> listStudents();

	public void delete(Integer id);

	public void update(Integer id, Integer age);
}
