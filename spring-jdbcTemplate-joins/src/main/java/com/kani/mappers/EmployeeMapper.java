package com.kani.mappers;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.kani.model.Employee;

public final class EmployeeMapper implements RowMapper<Employee> {

	public Employee mapRow(ResultSet rs, int rowNum) throws SQLException {
		Employee employee = new Employee();
		employee.setEmpID(rs.getInt("empID"));
		employee.setEmpName(rs.getString("empName"));
		employee.setEmpTel(rs.getString("empTel"));
		employee.setSalary(rs.getFloat("salary"));
		
		return employee;
	}

}
