package com.abbcc.dao;

import java.util.List;

import com.abbcc.pojo.Zpxx;

public interface ZpxxDAO {
	
	// 插入招聘信息
	public void insert(Zpxx zpxx) throws Exception;
	
	// 修改招聘信息
	public void update(Zpxx zpxx) throws Exception;
	
	// 删除招聘信息
	public void delete(int hyjbxxid,int zpxxid) throws Exception;
	
	// 根据主键查找招聘信息
	public Zpxx queryById(int hyjbxxid,int zpxxid) throws Exception;
	
	// 根据时间排列显示所有未审核的招聘信息
	public List queryAll(int hyjbxxid, int currentPage, int lineSize) throws Exception;
}
