package com.abbcc.dao;

import com.abbcc.pojo.Xxsh;

public interface XxshDAO {
	// 插入信息审核
	public void insert(Xxsh xxsh) throws Exception;
	
	// 修改信息审核
	public void update(Xxsh xxsh) throws Exception;
	
	// 删除信息审核
	public void delete(int glyid,int xxshid) throws Exception;
	
	// 根据主键查找信息审核
	public Xxsh queryById(int glyid,int xxshid) throws Exception;
	
	// 根据时间排列显示所有未审核的信息审核
	//public List queryAll() throws Exception;
}
