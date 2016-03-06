package com.journaldev.spring.jdbc.main;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.journaldev.spring.jdbc.dao.EmployeeDAO;
import com.journaldev.spring.jdbc.model.Employee;

public class SpringMain {
	private static final Logger LOGGER= Logger.getLogger(SpringMain.class);
	
	public static void main(String[] args) {
		//Get the Spring Context
		ClassPathXmlApplicationContext ctx = new ClassPathXmlApplicationContext("spring.xml");
		

		//To use JdbcTemplate
		EmployeeDAO employeeDAO = ctx.getBean("employeeDAOTemplate", EmployeeDAO.class);
		
		//Read
		Employee emp = employeeDAO.getById(101);
		LOGGER.debug("Employee Retrieved::"+emp);
		
		//Update
		emp.setRole("CEO");
		employeeDAO.update(emp);
		
		//Get All
		List<Employee> empList = employeeDAO.getAll();
		for (Employee employee : empList) {
			LOGGER.debug("--------------------------");
			LOGGER.debug(employee.getId());
			LOGGER.debug(employee.getName());
			LOGGER.debug(employee.getRole());
		}
		
		//Delete
		employeeDAO.deleteById(101);
		
		//Close Spring Context
		ctx.close();
		LOGGER.debug("~~~ DONE ~~~");
	}
}
