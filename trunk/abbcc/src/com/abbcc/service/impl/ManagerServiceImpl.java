package com.abbcc.service.impl;

import com.abbcc.dao.ManagerDAO;
import com.abbcc.service.ManagerService;

public class ManagerServiceImpl implements ManagerService {
	private ManagerDAO managerDao;
	
	

	public void setManagerDao(ManagerDAO managerDao) {
		this.managerDao = managerDao;
	}
	
	public int login(String managerName, String pass) {
		return managerDao.findByProperty(managerName, pass);
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
