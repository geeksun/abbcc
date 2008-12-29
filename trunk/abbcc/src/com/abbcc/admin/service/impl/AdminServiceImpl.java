package com.abbcc.admin.service.impl;

import com.abbcc.admin.service.AdminService;
import com.abbcc.dao.GlyDAO;
import com.abbcc.factory.DAOFactory;
import com.abbcc.vo.GlyBean;

public class AdminServiceImpl implements AdminService {
	private static AdminService as;
	//private GlyDAO gd = DAOFactory.getGlyDAOInstance();
	public static AdminService getInstance(){
		if(as==null){
			as = new AdminServiceImpl();
		}
		return  as; 
	}
	public boolean login(GlyBean gly) {
		
		return false;
	}
}
