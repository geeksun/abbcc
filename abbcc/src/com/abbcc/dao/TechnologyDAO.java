package com.abbcc.dao;

import com.abbcc.pojo.Technology;

public interface TechnologyDAO {
	//增加技术实力信息
	public int add(Technology tech);  
	//修改技术实力信息
	public void update(Technology tech);
	//根据主键查找技术实力信息
	public Technology findById(String hyjbxxid);  
}
