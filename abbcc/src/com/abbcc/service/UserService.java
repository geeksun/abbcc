package com.abbcc.service;

import com.abbcc.pojo.Hyjbxx;

public interface UserService {
	//public boolean login(Hyjbxx hy);

	public int login(String name, String pass);

	public int save(Hyjbxx hy) ;      
	
}
