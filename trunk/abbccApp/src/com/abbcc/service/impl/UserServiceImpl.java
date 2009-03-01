package com.abbcc.service.impl; 

import com.abbcc.pojo.Hyjbxx;
import com.abbcc.dao.HyjbxxDAO;
import com.abbcc.factory.DAOFactory;
import com.abbcc.service.UserService;

public class UserServiceImpl implements UserService {
	//private static final Log log = LogFactory.getLog(UserServiceImpl.class);
	private static UserService us;
	//  must be static !
	public static UserService getInstance(){
		if(us==null){
			us = new UserServiceImpl();
		}
		return  us; 
	}
}
