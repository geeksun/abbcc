package com.abbcc.service;

import java.util.List;

import com.abbcc.pojo.CompanyLogo;
import com.abbcc.pojo.Gsjbxx;
import com.abbcc.pojo.Gsxxxx;
import com.abbcc.pojo.Honor;
import com.abbcc.pojo.Hyjbxx;
import com.abbcc.pojo.Technology;

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
	
	//ע�����û�ʱ�����Ա������Ϣ������˾������Ϣ������˾��ϸ��Ϣ�����Ӽ�¼
	public int add(Hyjbxx hyjbxx, Gsjbxx gsjbxx, Gsxxxx gsxxxx);

	public void addLoseObject(Gsxxxx gsxxxx);

	public boolean checkPassword(String hyjbxxid, String old_password);

	public void updatePassword(String hyjbxxid, String new_password);

	public int updateQuestion(String hyjbxxid, String password_question, String password_answer);      
	
	public int add(Honor honor);
	
	public Honor findById(String hyjbxxid); 
	
	public void update(Honor honor) ;
	
	public int add(Technology tech);
	
	public Technology findTechById(String hyjbxxid);
	
	public void update(Technology tech) ;
	
	public int add(CompanyLogo company);
	
	public CompanyLogo findLogoById(String hyjbxxid);
	
	public void update(CompanyLogo company) ;
	
}