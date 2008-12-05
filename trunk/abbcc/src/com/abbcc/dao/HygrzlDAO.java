package com.abbcc.dao;

import java.util.List;

import com.abbcc.pojo.Hygrzl;

public interface HygrzlDAO {
	// 插入会员个人资料
	public void insert(Hygrzl hygrzl) throws Exception;

	// 修改会员个人资料
	public void update(Hygrzl hygrzl) throws Exception;

	// 删除会员个人资料
	public void delete(int hyjbxxid) throws Exception;

	// 根据主键查找会员个人资料
	public Hygrzl queryById(int hyjbxxid) throws Exception;

	// 根据时间排列显示所有未审核的会员个人资料
	public List queryAll(int hyjbxxid, int currentPage, int lineSize)
			throws Exception;
}
