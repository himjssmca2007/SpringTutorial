package com.howtodoinjava.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.howtodoinjava.dao.EmployeeDAO;
import com.howtodoinjava.entity.EmployeeEntity;

@Component
public class EmployeeManagerImpl implements EmployeeManager {

	@Autowired
	private EmployeeDAO employeeDAO;
	
	@Transactional
	public void addEmployee(EmployeeEntity employee) {
		// TODO Auto-generated method stub
		employeeDAO.addEmployee(employee);
	}

	@Transactional
	public List<EmployeeEntity> getAllEmployees() {
		// TODO Auto-generated method stub
		return employeeDAO.getAllEmployees();
	}

	@Transactional
	public void deleteEmployee(Integer employeeId) {
		// TODO Auto-generated method stub
		employeeDAO.deleteEmployee(employeeId);
	}
}
