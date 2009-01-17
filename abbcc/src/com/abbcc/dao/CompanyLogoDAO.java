package com.abbcc.dao;

import com.abbcc.pojo.CompanyLogo;

public interface CompanyLogoDAO {
	//增加公司标志信息
	public int add(CompanyLogo company);  
	//修改公司标志信息
	public void update(CompanyLogo company);
	//根据主键查找公司标志信息
	public CompanyLogo findById(String hyjbxxid);  
}
