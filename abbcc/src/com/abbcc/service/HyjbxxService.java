package com.abbcc.service;

import com.abbcc.pojo.Hyjbxx;

public interface HyjbxxService {
	public int login(String name, String pass);

	public int save(Hyjbxx hy) ;

	public boolean checkName(String hydlm);        
}
