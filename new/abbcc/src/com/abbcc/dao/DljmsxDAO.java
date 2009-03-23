package com.abbcc.dao;

import java.util.List;
import com.abbcc.pojo.Dljmsx;

public interface DljmsxDAO {
	// 插入代理加盟信息
	public void insert(Dljmsx dljmsx) throws Exception;

	// 修改代理加盟信息
	public void update(Dljmsx dljmsx) throws Exception;

	// 删除代理加盟信息
	public void delete(int hyjbxxid, int dljmsxid) throws Exception;

	// 根据主键查找代理加盟信息
	public Dljmsx queryById(int hyjbxxid, int dljmsxid) throws Exception;

	// 根据时间排序显示所有未审核的代理加盟信息
	public List queryAll(int hyjbxxid, int currentPage, int lineSize)
			throws Exception;

}
