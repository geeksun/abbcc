package com.abbcc.dao;

import java.util.List;

import com.abbcc.pojo.Gsjbxx;

public interface GsjbxxDAO {
	// 插入公司基本信息
	public int add(Gsjbxx gsjbxx) ; 

	// 修改公司基本信息
	public void update(Gsjbxx gsjbxx);

	// 删除公司基本信息
	public void delete(int hyjbxxid) throws Exception;

	// 根据主键查找公司基本信息
	public Gsjbxx queryById(int hyjbxxid) throws Exception;

	// 根据时间排列显示所有未审核的公司基本信息
	public List queryAll(int hyjbxxid, int currentPage, int lineSize)
			throws Exception;

	public List getMemberByName(String customer);

	public List getMemberById(int hyjbxxid); 
}
