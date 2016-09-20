package com.kani.mappers;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.kani.model.Project;

public class ProjectMapper implements RowMapper<Project> {

	public Project mapRow(ResultSet rs, int rowNum) throws SQLException {
		Project project = new Project();
		project.setProjCode(rs.getString("projCode"));
		project.setProjDuration(rs.getInt("projDuration"));
		project.setProjID(rs.getInt("projID"));
		project.setProjName(rs.getString("projName"));
		
		return project;
	}

}
