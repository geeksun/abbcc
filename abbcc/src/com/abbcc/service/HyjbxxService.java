package com.abbcc.service;

import java.util.List;

import com.abbcc.pojo.Gsjbxx;
import com.abbcc.pojo.Gsxxxx;
import com.abbcc.pojo.Hyjbxx;

public interface HyjbxxService {
	public int login(String name, String pass);

	public void add(Gsxxxx gsxxxx) ; 

	public boolean checkName(String hydlm);

	public List getMemberByName(int hyjbxxid);

	public int add(Gsjbxx gsjbxx); 

	//public int getIdByName(String  hydlm);
	public String getIdByName(String  hydlm);

	public int add(Hyjbxx hyjbxx, Gsjbxx gsjbxx);

	public List getMemberById(String hyjbxxid); 

	public List getMemberByName(String hyjbxxid);

	public Hyjbxx getCustomerByName(String hydlm); 

	public Hyjbxx getCustomerById(String hyjbxxid);

	public void update(Hyjbxx hyjbxx);
	//更新会员基本信息和公司的基本信息
	public void update(Hyjbxx hyjbxx, Gsjbxx gsjbxx);                   
}
