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
	
	//���»�Ա������Ϣ�͹�˾�Ļ�����Ϣ
	public void update(Hyjbxx hyjbxx, Gsjbxx gsjbxx);

	public Gsxxxx getGsxxxxById(String hyjbxxid);

	public void update(Gsxxxx gsxxxx); 
	
	//ע�����û�ʱ�����Ա������Ϣ����˾������Ϣ����˾��ϸ��Ϣ�����Ӽ�¼
	public int add(Hyjbxx hyjbxx, Gsjbxx gsjbxx, Gsxxxx gsxxxx);

	public void addLoseObject(Gsxxxx gsxxxx);                      
}
