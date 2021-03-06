package com.kani.model;

import java.util.ArrayList;
import java.util.List;

public class Project {
	private int projID;
	private String projName;
	private String projCode;
	private int projDuration;
	private List<Employee> employeeList;
	private EmployeeHasProject employeeHasProject;

	public Project() {
		employeeList = new ArrayList<Employee>();
	}

	public int getProjID() {
		return projID;
	}

	public void setProjID(int projID) {
		this.projID = projID;
	}

	public String getProjName() {
		return projName;
	}

	public void setProjName(String projName) {
		this.projName = projName;
	}

	public String getProjCode() {
		return projCode;
	}

	public void setProjCode(String projCode) {
		this.projCode = projCode;
	}

	public int getProjDuration() {
		return projDuration;
	}

	public void setProjDuration(int projDuration) {
		this.projDuration = projDuration;
	}

	public List<Employee> getEmployeeList() {
		return employeeList;
	}

	public void setEmployeeList(List<Employee> employeeList) {
		this.employeeList = employeeList;
	}

	public EmployeeHasProject getEmployeeHasProject() {
		return employeeHasProject;
	}

	public void setEmployeeHasProject(EmployeeHasProject employeeHasProject) {
		this.employeeHasProject = employeeHasProject;
	}

	@Override
	public String toString() {
		return "Project [projID=" + projID + ", projName=" + projName + ", projCode=" + projCode + ", projDuration="
				+ projDuration + ", employeeList=" + employeeList + ", employeeHasProject=" + employeeHasProject + "]";
	}
}
