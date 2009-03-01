package com.abbcc.dao;

import java.util.List;

import com.abbcc.pojo.Wzjbxx;

public interface WzjbxxDAO {
	// 插入网站基本信息
	public void insert(Wzjbxx wzjbxx) throws Exception;
	
	// 修改网站基本信息
	public void update(Wzjbxx wzjbxx) throws Exception;
	
	// 删除网站基本信息
	public void delete(int glyid) throws Exception;
	
	// 根据主键查找网站基本信息
	public Wzjbxx queryById(int glyid) throws Exception;
	
	// 根据时间排列显示所有未审核的网站基本信息
	public List queryAll() throws Exception;
}
