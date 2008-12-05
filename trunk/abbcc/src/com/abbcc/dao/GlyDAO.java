package com.abbcc.dao;

import java.util.List;

import com.abbcc.pojo.Gly;

public interface GlyDAO {
	// 插入管理员信息
	public void insert(Gly gly) throws Exception;
	
	// 修改管理员信息
	public void update(Gly gly) throws Exception;
	
	// 删除管理员信息
	public void delete(int gly) throws Exception;
	
	// 根据主键查找管理员信息
	public Gly queryById(int gly) throws Exception;
	
	// 显示所有管理员信息
	public List queryAll() throws Exception;
}
