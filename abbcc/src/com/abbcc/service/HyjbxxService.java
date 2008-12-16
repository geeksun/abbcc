package com.abbcc.service;

import java.util.List;

import com.abbcc.pojo.Gsjbxx;
import com.abbcc.pojo.Hyjbxx;

public interface HyjbxxService {
	public int login(String name, String pass);

	public int save(Hyjbxx hy) ;

	public boolean checkName(String hydlm);

	public List getMemberByName(String customer);

	public int save(Gsjbxx gsjbxx);          
}
