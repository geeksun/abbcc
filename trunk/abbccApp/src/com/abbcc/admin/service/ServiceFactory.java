package com.abbcc.admin.service;

import com.abbcc.admin.service.impl.AdminServiceImpl;
import com.abbcc.admin.service.impl.CheckSerivceImpl;
import com.abbcc.admin.service.impl.UserServiceImpl;

public class ServiceFactory {
	public static AdminService getAdminService(){
		return AdminServiceImpl.getInstance(); 
	}
	public static UserService getUserService(){
		return UserServiceImpl.getInstance();  
	}
	public static CheckService getCheckService(){
		return CheckSerivceImpl.getInstance();  
	}
}
