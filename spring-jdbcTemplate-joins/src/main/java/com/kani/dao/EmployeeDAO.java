package com.kani.dao;

import java.util.List;

import com.kani.model.Employee;


public interface EmployeeDAO {   
    public List<Employee> getAllEmployees();
    public Employee findEmployeeByID(int id);
    public boolean createNewEmployee(Employee empl);
}
