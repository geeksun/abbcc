package com.abbcc.dao;

import java.util.List;

import com.abbcc.pojo.Hzsx;

public interface HzsxDAO {
	// 插入合作属性
	public void insert(Hzsx hzsx) throws Exception;

	// 修改合作属性
	public void update(Hzsx hzsx) throws Exception;

	// 删除合作属性
	public void delete(int hyjbxxid, int hzsxid) throws Exception;

	// 根据主键查找合作属性
	public Hzsx queryById(int hyjbxxid, int hzsxid) throws Exception;

	// 根据时间排列显示所有未审核的合作属性
	public List queryAll(int hyjbxxid, int currentPage, int lineSize)
			throws Exception;
}
