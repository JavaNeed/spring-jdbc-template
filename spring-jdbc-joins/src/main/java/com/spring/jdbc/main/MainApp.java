package com.spring.jdbc.main;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.spring.jdbc.dao.CustomerDAOImpl;
import com.spring.jdbc.model.Customer;

public class MainApp {

	public static void main(String[] args) {
		ApplicationContext context = new ClassPathXmlApplicationContext("Beans.xml");
		
		CustomerDAOImpl customerDAOImpl =  (CustomerDAOImpl) context.getBean("customerTemplate");
		
		List<Customer> customers = customerDAOImpl.listCustomer();
		System.out.println(customers.size());
	}

}
