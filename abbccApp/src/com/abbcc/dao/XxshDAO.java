package com.abbcc.dao;

import com.abbcc.pojo.Xxsh;

public interface XxshDAO {
	// ������Ϣ���
	public void insert(Xxsh xxsh) throws Exception;
	
	// �޸���Ϣ���
	public void update(Xxsh xxsh) throws Exception;
	
	// ɾ����Ϣ���
	public void delete(int glyid,int xxshid) throws Exception;
	
	// ��������������Ϣ���
	public Xxsh queryById(int glyid,int xxshid) throws Exception;
	
	// ����ʱ��������ʾ����δ��˵���Ϣ���
	//public List queryAll() throws Exception;
}
