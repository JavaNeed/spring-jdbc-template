package com.tutorialspoint;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

public class StudentJDBCTemplate implements StudentDAO{

	private JdbcTemplate jdbcTemplate;

	@Autowired
	public void setDataSource(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}

	@Override
	public void create(String name, Integer age) {
		String sql = "insert into Student (name, age) values (?, ?)";
		jdbcTemplate.update(sql, name, age);
		System.out.println("Created Record Name = " + name + " Age = " + age);
		return;
	}

	@Override
	public Student getStudent(Integer id) {
		String sql = "select * from Student where id = ?";
		Student student = jdbcTemplate.queryForObject(sql, new Object[]{ id }, this::mapStudent); // Using Java 8
		return student;
	}

	@Override
	public List<Student> listStudents() {
		String sql = "select * from Student";
		List<Student> students = jdbcTemplate.query(sql, this::mapStudent);
		return students;
	}

	@Override
	public void delete(Integer id) {
		String sql = "delete from Student where id = ?";
		jdbcTemplate.update(sql, id);
		System.out.println("Deleted Record with ID = " + id );
		return;
	}

	@Override
	public void update(Integer id, Integer age) {
		String sql = "update Student set age = ? where id = ?";
		jdbcTemplate.update(sql, age, id);
		System.out.println("Updated Record with ID = " + id );
		return;
	}

	private Student mapStudent(ResultSet rs, int row) throws SQLException{
		Student student = new Student();
		student.setId(rs.getInt("ID"));
		student.setName(rs.getString("NAME"));
		student.setAge(rs.getInt("AGE"));
		return student;
	}
}
