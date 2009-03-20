package com.abbcc.dao;

import java.util.List;

import com.abbcc.pojo.Hygzjl;

public interface HygzjlDAO {
	// 插入会员工作经历
	public void insert(Hygzjl hygzjl) throws Exception;

	// 修改会员工作经历
	public void update(Hygzjl hygzjl) throws Exception;

	// 删除会员工作经历
	public void delete(int hyjbxxid, int hygzjlid) throws Exception;

	// 根据主键查找会员工作经历
	public Hygzjl queryById(int hyjbxxid, int hygzjlid) throws Exception;

	// 根据时间排列显示所有未审核的会员工作经历
	public List queryAll(int hyjbxxid, int currentPage, int lineSize)
			throws Exception;
}
