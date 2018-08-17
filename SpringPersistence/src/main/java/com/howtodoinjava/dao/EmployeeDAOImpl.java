package com.howtodoinjava.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.howtodoinjava.entity.EmployeeEntity;

@Component
public class EmployeeDAOImpl implements EmployeeDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	public void addEmployee(EmployeeEntity employee) 
	{
		// TODO Auto-generated method stub
		this.sessionFactory.getCurrentSession().save(employee);
	}

	@SuppressWarnings("unchecked")
	public List<EmployeeEntity> getAllEmployees() 
	{
		// TODO Auto-generated method stub
		return this.sessionFactory.getCurrentSession().createQuery("from EmployeeEntity").list();
	}

	public void deleteEmployee(Integer employeeId) {
		// TODO Auto-generated method stub
		EmployeeEntity employee=(EmployeeEntity) this.sessionFactory.getCurrentSession().load(EmployeeEntity.class, employeeId);
		if(employee!=null)
			this.sessionFactory.getCurrentSession().delete(employee);
	}

}
