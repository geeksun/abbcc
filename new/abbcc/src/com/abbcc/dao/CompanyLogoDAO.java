package com.abbcc.dao;

import com.abbcc.pojo.CompanyLogo;

public interface CompanyLogoDAO {
	//���ӹ�˾��־��Ϣ
	public int add(CompanyLogo company);  
	//�޸Ĺ�˾��־��Ϣ
	public void update(CompanyLogo company);
	//�����������ҹ�˾��־��Ϣ
	public CompanyLogo findById(String hyjbxxid);  
}
