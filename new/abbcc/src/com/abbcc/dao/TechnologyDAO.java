package com.abbcc.dao;

import com.abbcc.pojo.Technology;

public interface TechnologyDAO {
	//���Ӽ���ʵ����Ϣ
	public int add(Technology tech);  
	//�޸ļ���ʵ����Ϣ
	public void update(Technology tech);
	//�����������Ҽ���ʵ����Ϣ
	public Technology findById(String hyjbxxid);  
}
