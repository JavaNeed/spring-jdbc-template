package com.javacodegeeks.snippets.enterprise;

import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.javacodegeeks.snippets.enterprise.dao.JDBCEmployeeDAO;

public class App {
	private static final Logger LOGGER = Logger.getLogger(App.class);
			
	@SuppressWarnings({ "rawtypes", "unchecked" })
	public static void main(String[] args) {
		ConfigurableApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");

		JDBCEmployeeDAO jdbcEmployeeDAO = (JDBCEmployeeDAO) context.getBean("jdbcEmployeeDAO");

		Employee emplNew1 = new Employee(23, "John", 23);
		Employee emplNew2 = new Employee(223, "Mark", 43);
		List<Employee> employeesN = new ArrayList();
		employeesN.add(emplNew1);
		employeesN.add(emplNew2);
		jdbcEmployeeDAO.insertBatch1(employeesN);
		LOGGER.debug(" inserted rows: " + employeesN);

		LOGGER.debug(" FindAll : " + jdbcEmployeeDAO.findAll());
		jdbcEmployeeDAO.insertBatch2("UPDATE EMPLOYEE SET NAME ='Mary'");

		List<Employee> employees = jdbcEmployeeDAO.findAll();
		LOGGER.debug("Updated column name of table: " + employees);	

		LOGGER.debug(" FindAll : " + jdbcEmployeeDAO.findAll());
		context.close();
	}
}
