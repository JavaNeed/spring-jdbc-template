package com.kani.dao;

import java.util.List;

import com.kani.model.Employee;
import com.kani.model.Project;


public interface ProjectDAO {
    public List<Project> getProjectsOfEmployee(Employee emp);
    public boolean createNewProject(Project proj);
    public List<Project> getProjectsEmployee(Employee emp);
}
