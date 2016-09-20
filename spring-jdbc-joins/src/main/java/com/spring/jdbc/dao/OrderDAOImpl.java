package com.spring.jdbc.dao;

import java.util.Collections;
import java.util.Map;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;

import com.spring.jdbc.model.Order;

public class OrderDAOImpl implements OrderDAO{

	private NamedParameterJdbcTemplate namedParameterJdbcTemplate;

	@Autowired
	public void setDataSource(DataSource dataSource) {
		this.namedParameterJdbcTemplate = new NamedParameterJdbcTemplate(dataSource);
	}

	@Override
	public Long countByEmployeeId(Long employeeId) {
		String sql = "SELECT count(*) FROM orders WHERE employeeId = :employeeId";

		SqlParameterSource namedParameters = new MapSqlParameterSource("employeeId", employeeId);

		Long countEmployee = namedParameterJdbcTemplate.queryForObject(sql, namedParameters, Long.class);

		return countEmployee;
	}

	@Override
	public Long countByShipperId(Long shipperId) {
		String sql = "SELECT count(*) FROM orders WHERE shipperId = :shipperId";
		
		Map<String, Long> map = Collections.singletonMap("shipperId", shipperId);
		
		Long countEmployee = namedParameterJdbcTemplate.queryForObject(sql, map, Long.class);
		
		return countEmployee;
	}

	@Override
	public Long countOfOrders(Order order) {
		String sql = "SELECT count(*) FROM orders WHERE EmployeeID = :employeeID AND ShipperID = :shipperID ";
		
		SqlParameterSource namedParameters = new BeanPropertySqlParameterSource(order);
		
		Long count = namedParameterJdbcTemplate.queryForObject(sql, namedParameters, Long.class);
		
		return count;
	}
}
