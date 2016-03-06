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

	private static final String GET_ALL = "select id, name, role from Employee";
	private static final String DELETE_BY_ID = "delete from Employee where id=?";
	private static final String UPDATE_QUERY = "update Employee set name=?, role=? where id=?";
	private static final String GET_BY_ID_QUERY = "select id, name, role from Employee where id = ?";
	private static final String INSERT_QUERY = "insert into Employee (id, name, role) values (?,?,?)";

	private DataSource dataSource;

	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}

	@Override
	public void save(Employee employee) {
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);

		Object[] args = new Object[] {employee.getId(), employee.getName(), employee.getRole()};

		int out = jdbcTemplate.update(INSERT_QUERY, args);

		if(out !=0)
			LOGGER.debug("Employee saved with id="+employee.getId());
		else 
			LOGGER.debug("Employee save failed with id="+employee.getId());
	}

	@Override
	public Employee getById(int id) {
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);

		//using RowMapper anonymous class, we can create a separate RowMapper for reuse
		Employee emp = jdbcTemplate.queryForObject(GET_BY_ID_QUERY, new Object[]{id}, new RowMapper<Employee>(){
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
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		
		Object[] args = new Object[] {employee.getName(), employee.getRole(), employee.getId()};

		int out = jdbcTemplate.update(UPDATE_QUERY, args);
		if(out !=0)
			LOGGER.debug("Employee updated with id="+employee.getId());
		else 
			LOGGER.debug("No Employee found with id="+employee.getId());
	}

	@Override
	public void deleteById(int id) {
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);

		int out = jdbcTemplate.update(DELETE_BY_ID, id);
		if(out !=0)
			LOGGER.debug("Employee deleted with id="+id);
		else 
			LOGGER.debug("No Employee found with id="+id);
	}

	@Override
	public List<Employee> getAll() {
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		List<Employee> empList = new ArrayList<Employee>();

		List<Map<String,Object>> empRows = jdbcTemplate.queryForList(GET_ALL);

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
