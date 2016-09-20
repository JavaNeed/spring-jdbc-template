package com.spring.jdbc.dao;

import com.spring.jdbc.model.Order;

public interface OrderDAO {
	Long countByEmployeeId(Long employeeId);
	
	Long countByShipperId(Long shipperId);
	
	Long countOfOrders(Order order);
}
