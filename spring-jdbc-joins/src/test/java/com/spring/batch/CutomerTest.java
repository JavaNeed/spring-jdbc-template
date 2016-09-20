package com.spring.batch;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.spring.jdbc.dao.CustomerDAO;
import com.spring.jdbc.model.Customer;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:Beans.xml"})
public class CutomerTest {

	@Autowired
	private CustomerDAO customerDAO;
	
	@Test
	public void test() {
		List<Customer> customers = customerDAO.listCustomer();
		System.out.println(customers.size());
	}
	
	
	@Test
	public void testCountCustomers(){
		Long count = customerDAO.countCustomer();
		System.out.println("Count of Customers : "+count);
	}

	
	@Test
	public void testSpecificName(){
		Long count = customerDAO.countOfCustomersNamed();
		System.out.println("Same name of Customers : "+count);
	}
	
	@Test
	public void testLastName(){
		String lastName = customerDAO.getLastName(21L);
		System.out.println("Last Name : "+lastName);
	}
	
	@Test
	public void testCustomerDomainObject(){
		Customer customer = customerDAO.getCustomerUsingCustomerId(21L);
		System.out.println("----------------------");
		System.out.println(customer.getCustomerID());
		System.out.println(customer.getCustomerName());
		System.out.println(customer.getContactName());
		System.out.println(customer.getAddress());
		System.out.println(customer.getCity());
		System.out.println(customer.getPostalCode());
		System.out.println(customer.getCountry());
	}
}
