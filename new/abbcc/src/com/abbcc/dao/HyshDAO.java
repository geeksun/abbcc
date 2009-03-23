package com.abbcc.dao;

import com.abbcc.pojo.Hysh;

public interface HyshDAO {
	// 插入会员审核
	public void insert(Hysh hysh) throws Exception;
	
	// 修改会员审核
	public void update(Hysh hysh) throws Exception;
	
	// 删除会员审核
	public void delete(String hysh) throws Exception;
	
	// 根据主键查找会员审核
	public Hysh queryById(String hysh) throws Exception;
	
	// 根据时间排列显示所有未审核的会员审核
	//public List queryAll() throws Exception;
}
