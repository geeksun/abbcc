package com.abbcc.dao;

import java.util.List;

import com.abbcc.exception.DaoException;
import com.abbcc.pojo.Jytj;


public interface JytjDAO {
	// 插入交易条件
	public void insert(Jytj jytj) throws DaoException;

	// 修改交易条件
	public void update(Jytj jytj) throws DaoException;

	// 删除交易条件
	public void delete(int hyjbxxid, int jytjid) throws DaoException;

	// 根据主键查找交易条件
	public Jytj queryById(int hyjbxxid, int jytjid) throws DaoException;

	// 根据时间排列显示所有未审核的交易条件
	public List queryAll(int hyjbxxid, int currentPage, int lineSize)
			throws DaoException;
}
