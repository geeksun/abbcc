package com.abbcc.dao;

import java.util.List;

import com.abbcc.pojo.Gsxxxx;

public interface GsxxxxDAO {
	// 插入公司详细信息
	public int add(Gsxxxx gsxxxx); 

	// 修改公司详细信息
	public void update(Gsxxxx gsxxxx);

	// 删除公司详细信息
	public void delete(int hyjbxxid) throws Exception;

	// 根据主键查找公司详细信息
	public Gsxxxx queryById(int hyjbxxid) throws Exception;

	// 根据时间排列显示所有未审核的公司详细信息
	public List queryAll(int hyjbxxid, int currentPage, int lineSize)
			throws Exception;

	//根据主键查找公司详细信息
	public Gsxxxx getGsxxxxById(String hyjbxxid);

	//增加遗漏对象（公司详细信息）
	public void addLoseObject(Gsxxxx gsxxxx);  

	
}
