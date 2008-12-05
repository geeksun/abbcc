package com.abbcc.dao;

import java.util.List;

import com.abbcc.pojo.Fwsx;

public interface FwsxDAO {
	// 插入服务属性信息
	public void insert(Fwsx fwsx) throws Exception;

	// 修改服务属性信息
	public void update(Fwsx fwsx) throws Exception;

	// 删除服务属性信息
	public void delete(int hyjbxxid, int fwsxid) throws Exception;

	// 根据主键查找服务属性信息
	public Fwsx queryById(int hyjbxxid, int fwsxid) throws Exception;

	// 根据时间排序显示所有未审核的服务属性信息
	public List queryAll(int hyjbxxid, int currentPage, int lineSize)
			throws Exception;
}
