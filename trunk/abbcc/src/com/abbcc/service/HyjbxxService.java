package com.abbcc.service;

import java.util.List;

import com.abbcc.pojo.Gsjbxx;
import com.abbcc.pojo.Gsxxxx;
import com.abbcc.pojo.Hyjbxx;

public interface HyjbxxService {
	public int login(String name, String pass);
	
	public int add(Hyjbxx hyjbxx);

	public void add(Gsxxxx gsxxxx) ; 

	public boolean checkName(String hydlm);

	public List getMemberByName(int hyjbxxid);

	public int add(Gsjbxx gsjbxx); 

	public String getIdByName(String  hydlm);

	public List getMemberById(String hyjbxxid); 

	public List getMemberByName(String hyjbxxid);

	public Hyjbxx getCustomerByName(String hydlm); 

	public Hyjbxx getCustomerById(String hyjbxxid);

	public void update(Hyjbxx hyjbxx);
	
	//更新会员基本信息和公司的基本信息
	public void update(Hyjbxx hyjbxx, Gsjbxx gsjbxx);

	public Gsxxxx getGsxxxxById(String hyjbxxid);

	public void update(Gsxxxx gsxxxx); 
	
	//注册新用户时，向会员基本信息表，公司基本信息表，公司详细信息表增加纪录
	public int add(Hyjbxx hyjbxx, Gsjbxx gsjbxx, Gsxxxx gsxxxx);

	public void addLoseObject(Gsxxxx gsxxxx);                      
}
