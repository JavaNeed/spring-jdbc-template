package com.spring.jdbc.dao;

import java.util.List;

import com.spring.jdbc.model.Customer;

public interface CustomerDAO {
	List<Customer> listCustomer();
	
	Long countCustomer();
	
	//simple query using a bind variable
	Long countOfCustomersNamed();
	
	String getLastName(Long customerId);
	
	// Querying and populating a single domain object:
	Customer getCustomerUsingCustomerId(Long customerId);
	
	List<Customer> listAllCustomer();
	
}
