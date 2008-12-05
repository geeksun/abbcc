package com.abbcc.dao;

import java.util.List;

import com.abbcc.pojo.Hyjyjl;

public interface HyjyjlDAO {
	// 插入会员教育经历
	public void insert(Hyjyjl hyjyjl) throws Exception;

	// 修改会员教育经历
	public void update(Hyjyjl hyjyjl) throws Exception;

	// 删除会员教育经历
	public void delete(int hyjbxxid, int hyjyjlid) throws Exception;

	// 根据主键查找会员教育经历
	public Hyjyjl queryById(int hyjbxxid, int hyjyjlid) throws Exception;

	// 根据时间排列显示所有未审核的会员教育经历
	public List queryAll(int hyjbxxid, int currentPage, int lineSize)
			throws Exception;
}
