package com.spring.jdbc.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.spring.jdbc.model.Customer;

public class CustomerDAOImpl implements CustomerDAO{

	//private DataSource dataSource; 
	private JdbcTemplate jdbcTemplate;

	@Autowired
	public void setDataSource(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}

	@Override
	public Long countCustomer() {
		String sql = "SELECT count(*) FROM customers ";
		Long rowCount = jdbcTemplate.queryForObject(sql, Long.class);
		return rowCount;
	}

	@Override
	public Long countOfCustomersNamed() {
		String sql = "SELECT count(*) FROM customers WHERE CustomerName = ? ";
		Long rowCount = jdbcTemplate.queryForObject(sql, Long.class, "Ernst Handel");
		return rowCount;
	}

	@Override
	public String getLastName(Long customerId) {
		String sql = "SELECT CustomerName FROM customers WHERE CustomerID = ?";
		String lastName = this.jdbcTemplate.queryForObject(sql, new Object[]{ customerId }, String.class);
		return lastName;
	}

	@Override
	public Customer getCustomerUsingCustomerId(Long customerId) {
		String sql = "SELECT * FROM customers WHERE CustomerID = ?";
		Customer customer = jdbcTemplate.queryForObject(sql, new Object[]{21L}, new RowMapper<Customer>(){

			@Override
			public Customer mapRow(ResultSet rs, int rowNum) throws SQLException {
				Customer customer = new Customer();
				customer.setCustomerID(rs.getInt("customerID"));
				customer.setCustomerName(rs.getString("customerName"));
				customer.setContactName(rs.getString("contactName"));
				customer.setAddress(rs.getString("address"));
				customer.setCity(rs.getString("city"));
				customer.setPostalCode(rs.getString("postalCode"));
				customer.setCountry(rs.getString("country"));
				return customer;
			}
		});
		return customer;
	}

	@Override
	public List<Customer> listAllCustomer() {
		String sql = "SELECT * FROM customers ";
		List<Customer> customers = jdbcTemplate.query(sql, new RowMapper<Customer>(){

			@Override
			public Customer mapRow(ResultSet rs, int rowNum) throws SQLException {
				Customer customer = new Customer();
				customer.setCustomerID(rs.getInt("customerID"));
				customer.setCustomerName(rs.getString("customerName"));
				customer.setContactName(rs.getString("contactName"));
				customer.setAddress(rs.getString("address"));
				customer.setCity(rs.getString("city"));
				customer.setPostalCode(rs.getString("postalCode"));
				customer.setCountry(rs.getString("country"));
				return customer;
			}
		});
		return customers;
	}


	@Override
	public List<Customer> listCustomer() {
		String sql = "SELECT * FROM customers c, orders o "
				+ "where c.CustomerID=o.CustomerID "
				+ "ORDER BY c.CustomerName";

		List<Customer> customers = jdbcTemplate.query(sql, new CustomerMapper());
		return customers;
	}

	private static final class CustomerMapper implements RowMapper<Customer>{

		@Override
		public Customer mapRow(ResultSet rs, int rowNum) throws SQLException {
			Customer customer = new Customer();
			customer.setCustomerID(rs.getInt("customerID"));
			customer.setCustomerName(rs.getString("customerName"));
			customer.setContactName(rs.getString("contactName"));
			customer.setAddress(rs.getString("address"));
			customer.setCity(rs.getString("city"));
			customer.setPostalCode(rs.getString("postalCode"));
			customer.setCountry(rs.getString("country"));
			return customer;
		}
	}
}
