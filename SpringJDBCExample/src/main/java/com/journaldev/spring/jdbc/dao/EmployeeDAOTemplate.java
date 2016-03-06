package com.journaldev.spring.jdbc.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.sql.DataSource;

import org.apache.log4j.Logger;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.journaldev.spring.jdbc.model.Employee;

public class EmployeeDAOTemplate implements EmployeeDAO {
	private static final Logger LOGGER= Logger.getLogger(Employee.class);

	private DataSource dataSource;

	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}

	@Override
	public void save(Employee employee) {
		String query = "insert into Employee (id, name, role) values (?,?,?)";

		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);

		Object[] args = new Object[] {employee.getId(), employee.getName(), employee.getRole()};

		int out = jdbcTemplate.update(query, args);

		if(out !=0)
			LOGGER.debug("Employee saved with id="+employee.getId());
		else 
			LOGGER.debug("Employee save failed with id="+employee.getId());
	}

	@Override
	public Employee getById(int id) {
		String query = "select id, name, role from Employee where id = ?";
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);

		//using RowMapper anonymous class, we can create a separate RowMapper for reuse
		Employee emp = jdbcTemplate.queryForObject(query, new Object[]{id}, new RowMapper<Employee>(){
			@Override
			public Employee mapRow(ResultSet rs, int rowNum) throws SQLException {
				Employee emp = new Employee();
				emp.setId(rs.getInt("id"));
				emp.setName(rs.getString("name"));
				emp.setRole(rs.getString("role"));
				return emp;
			}});

		return emp;
	}

	@Override
	public void update(Employee employee) {
		String query = "update Employee set name=?, role=? where id=?";
		
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		
		Object[] args = new Object[] {employee.getName(), employee.getRole(), employee.getId()};

		int out = jdbcTemplate.update(query, args);
		if(out !=0)
			LOGGER.debug("Employee updated with id="+employee.getId());
		else 
			LOGGER.debug("No Employee found with id="+employee.getId());
	}

	@Override
	public void deleteById(int id) {

		String query = "delete from Employee where id=?";
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);

		int out = jdbcTemplate.update(query, id);
		if(out !=0)
			LOGGER.debug("Employee deleted with id="+id);
		else 
			LOGGER.debug("No Employee found with id="+id);
	}

	@Override
	public List<Employee> getAll() {
		String query = "select id, name, role from Employee";
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		List<Employee> empList = new ArrayList<Employee>();

		List<Map<String,Object>> empRows = jdbcTemplate.queryForList(query);

		for(Map<String,Object> empRow : empRows){
			Employee emp = new Employee();
			emp.setId(Integer.parseInt(String.valueOf(empRow.get("id"))));
			emp.setName(String.valueOf(empRow.get("name")));
			emp.setRole(String.valueOf(empRow.get("role")));
			empList.add(emp);
		}
		return empList;
	}

}
