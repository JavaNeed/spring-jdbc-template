package com.kani.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.kani.mappers.ProjectMapper;
import com.kani.mappers.ProjectResultSetExtractor;
import com.kani.model.Employee;
import com.kani.model.EmployeeHasProject;
import com.kani.model.Project;

@Repository
public class ProjectDAOImpl implements ProjectDAO {
	public String QUERY_CREATE_NEW_PROJECT = "INSERT INTO project(projName,projCode,projDuration) VALUES (?,?,?)";
	//public String QUERY_GET_PROJECTS_OF_EMPLOYEE = "SELECT  proj.projID AS `projID`,  proj.projName AS `projName`,  proj.projCode AS `projCode`,  proj.projDuration AS `projDuration`,  ehp.Employee_empID AS `empID` FROM  employee_has_project ehp  INNER JOIN project proj ON ehp.Project_projID = proj.projID WHERE  ehp.Employee_empID = ?";

	private JdbcTemplate jdbcTemplate;

	@Autowired(required = true)
	public void setDataSource(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}

	public List<Project> getProjectsOfEmployee(Employee emp) {
		// Backup
		/*String sql = "SELECT  proj.projID AS `projID`,proj.projName AS `projName`,proj.projCode AS `projCode`,proj.projDuration AS `projDuration`,ehp.Employee_empID AS `empID` "
				+ "FROM  employee_has_project ehp  "
				+ "INNER JOIN project proj "
				+ "ON ehp.Project_projID = proj.projID "
				+ "WHERE ehp.Employee_empID = ?";*/
		
		String QUERY_GET_PROJECTS_OF_EMPLOYEE = "SELECT proj.projID, proj.projName, proj.projCode, proj.projDuration, ehp.Employee_empID "
				+ "FROM  employee_has_project ehp "
				+ "INNER JOIN project proj "
				+ "ON ehp.Project_projID = proj.projID "
				+ "WHERE  ehp.Employee_empID = ?";

		List<Project> projectList = this.jdbcTemplate.query(QUERY_GET_PROJECTS_OF_EMPLOYEE, new ProjectMapper(),emp.getEmpID());

		return projectList;
	}

	public boolean createNewProject(Project proj) {
		System.out.println("Executing : " + QUERY_CREATE_NEW_PROJECT);

		int affectedRows = jdbcTemplate.update(QUERY_CREATE_NEW_PROJECT, proj.getProjName(), proj.getProjCode(),proj.getProjDuration());

		return (affectedRows == 1);
	}
	
	@Override
	public List<Project> getProjectsEmployee(Employee emp) {
		String sql = "SELECT * FROM employee_has_project ehp, project proj "
				+ "WHERE ehp.Project_projID = proj.projID";
		
		List<Project> projectList = this.jdbcTemplate.query(sql, new RowMapper<Project>(){

			@Override
			public Project mapRow(ResultSet rs, int rowNum) throws SQLException {
				ProjectResultSetExtractor extractor = new ProjectResultSetExtractor();
				return extractor.extractData(rs);
			}
		});
		return projectList;
	}

	/*@Override
	public List<Project> getProjectsEmployee(Employee emp) {
		String sql = "SELECT * FROM employee_has_project ehp, project proj "
				+ "WHERE ehp.Project_projID = proj.projID";
		
		List<Project> projectList = this.jdbcTemplate.query(sql, new RowMapper<Project>(){

			@Override
			public Project mapRow(ResultSet rs, int rowNum) throws SQLException {
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
		});
		return projectList;
	}*/
}
