package com.abbcc.admin.service.impl;

import com.abbcc.pojo.Hyjbxx;
import com.abbcc.dao.HyjbxxDAO;
import com.abbcc.factory.DAOFactory;
import com.abbcc.admin.service.UserService;

public class UserServiceImpl implements UserService {
	//private static final Log log = LogFactory.getLog(UserServiceImpl.class);
	private static UserService us;
	//  must be static !
	
	private static HyjbxxDAO hyd = null;//DAOFactory.getHyjbxxDAOInstance();
	public static UserService getInstance(){
		if(us==null){
			us = new UserServiceImpl();
		}
		return  us; 
	}
	public int login(String name, String pass) {
		int validate = hyd.findByProperty(name,pass);
		return validate;
	}
	public int save(Hyjbxx hy) {   
		int i = 0;
		try {
			i = hyd.add(hy);
			return i;
			//hyd.save(hy);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return i;
	}
}
