package com.kani.dao;

import java.util.List;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.kani.mappers.EmployeeMapper;
import com.kani.model.Employee;

@Repository
public class EmployeeDAOImpl implements EmployeeDAO {
	public static String QUERY_GET_ALL_EMPLOYEES = "SELECT empID,empName,empTel,salary FROM employee";
	public static String QUERY_FIND_EMPLOYEE_BY_ID = "SELECT empID,empName,empTel,salary FROM employee e WHERE e.empID=?";
	public static String QUERY_ADD_NEW_EMPLOYEE = "INSERT INTO employee(empName,empTel,salary) VALUES (?,?,?)";

	private JdbcTemplate jdbcTemplate;

	@Autowired(required = true)
	public void setDataSource(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}

	public List<Employee> getAllEmployees() {
		System.out.println("Executing : " + QUERY_GET_ALL_EMPLOYEES);

		List<Employee> employees = this.jdbcTemplate.query(QUERY_GET_ALL_EMPLOYEES, new EmployeeMapper());

		return employees;
	}

	public Employee findEmployeeByID(int id) {
		System.out.println("Executing : " + QUERY_FIND_EMPLOYEE_BY_ID);

		Employee employee = new Employee();
		try {
			employee = this.jdbcTemplate.queryForObject(QUERY_FIND_EMPLOYEE_BY_ID, new EmployeeMapper(), id);

		} catch (DataAccessException de) {
			System.err.println(de.getMessage());
		}
		return employee;
	}

	public boolean createNewEmployee(Employee empl) {
		System.out.println("Executing : " + QUERY_ADD_NEW_EMPLOYEE);

		int affectedrows = this.jdbcTemplate.update(QUERY_ADD_NEW_EMPLOYEE, empl.getEmpName(), empl.getEmpTel(),
				empl.getSalary());

		return (affectedrows == 1);
	}

}
