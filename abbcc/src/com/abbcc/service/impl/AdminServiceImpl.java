package com.abbcc.service.impl;

import com.abbcc.service.AdminService;
import com.abbcc.dao.GlyDAO;
import com.abbcc.factory.DAOFactory;
import com.abbcc.vo.GlyBean;

public class AdminServiceImpl implements AdminService {
	private static AdminService as;
	private GlyDAO gd = null;//DAOFactory.getGlyDAOInstance();
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
