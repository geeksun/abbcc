package com.abbcc.dao;

import java.util.List;
import com.abbcc.pojo.Cpgqxx;

public interface CpgqxxDAO {

	// 插入产品供求信息
	public void insert(Cpgqxx cpgqxx) throws Exception;

	// 修改产品供求信息
	public void update(Cpgqxx cpgqxx) throws Exception;

	// 删除产品供求信息
	public void delete(int hyjbxxid, int cpgqxxid) throws Exception;

	// 根据主键查找产品供求信息
	public Cpgqxx queryById(int hyjbxxid, int cpgqxxid) throws Exception;

	// 根据时间排序显示所有未审核的产品供求信息
	public List queryAll(int hyjbxxid, int currentPage, int lineSize)
			throws Exception;
}
