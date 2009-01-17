package com.abbcc.dao;

import com.abbcc.pojo.Honor;

/**
 * Data access object (DAO) for domain model class Honor.
 * @see com.temp.util.Honor
 * @author MyEclipse Persistence Tools
 */

public interface HonorDAO  {
	//插入荣誉证书信息
	public int add(Honor honor);  
	//修改荣誉证书信息
	public void update(Honor honor);
	//根据主键查找荣誉证书信息
	public Honor findById(String hyjbxxid);  
	
}