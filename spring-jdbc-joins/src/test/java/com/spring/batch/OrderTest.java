package com.spring.batch;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.spring.jdbc.dao.OrderDAO;
import com.spring.jdbc.model.Order;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:Beans.xml"})
public class OrderTest {
	
	@Autowired
	private OrderDAO orderDAO;

	@Test
	public void testCountByEmployeeId() {
		Long countEmployee = orderDAO.countByEmployeeId(3L);
		System.out.println("Count : "+countEmployee);
	}
	
	@Test
	public void testCountByShipperId() {
		Long countEmployee = orderDAO.countByShipperId(2L);
		System.out.println("Count : "+countEmployee);
	}

	@Test
	public void testCountByEmployeeIdAndShipperId() {
		Order order = new Order();
		order.setEmployeeID(3);
		order.setShipperID(2);
		
		Long countEmployee = orderDAO.countOfOrders(order);
		System.out.println("Count : "+countEmployee);
	}
}
