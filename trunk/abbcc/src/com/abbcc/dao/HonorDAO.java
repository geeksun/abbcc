package com.abbcc.dao;

import com.abbcc.pojo.Honor;

/**
 * Data access object (DAO) for domain model class Honor.
 * @see com.temp.util.Honor
 * @author MyEclipse Persistence Tools
 */

public interface HonorDAO  {
	//��������֤����Ϣ
	public int add(Honor honor);  
	//�޸�����֤����Ϣ
	public void update(Honor honor);
	//����������������֤����Ϣ
	public Honor findById(String hyjbxxid);  
	
}