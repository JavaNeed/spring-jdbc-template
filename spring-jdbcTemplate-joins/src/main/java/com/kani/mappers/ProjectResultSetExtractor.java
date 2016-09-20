package com.kani.mappers;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.ResultSetExtractor;

import com.kani.model.EmployeeHasProject;
import com.kani.model.Project;

public class ProjectResultSetExtractor implements ResultSetExtractor<Project>{

	@Override
	public Project extractData(ResultSet rs) throws SQLException, DataAccessException {
		EmployeeHasProject employeeHasProject = new EmployeeHasProject();
		employeeHasProject.setEmployeeEmplId(rs.getInt("Employee_empID"));
		employeeHasProject.setProjectProjId(rs.getInt("Project_projID"));
		
		Project project = new Project();
		project.setProjID(rs.getInt("projID"));
		project.setProjName(rs.getString("projName"));
		project.setProjCode(rs.getString("projCode"));
		project.setProjDuration(rs.getInt("projDuration"));
		project.setEmployeeHasProject(employeeHasProject);
		return project;
	}
}
