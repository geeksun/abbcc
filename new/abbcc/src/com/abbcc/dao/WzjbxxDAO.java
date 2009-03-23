package com.abbcc.dao;

import java.util.List;

import com.abbcc.pojo.Wzjbxx;

public interface WzjbxxDAO {
	// ������վ������Ϣ
	public void insert(Wzjbxx wzjbxx) throws Exception;
	
	// �޸���վ������Ϣ
	public void update(Wzjbxx wzjbxx) throws Exception;
	
	// ɾ����վ������Ϣ
	public void delete(int glyid) throws Exception;
	
	// ��������������վ������Ϣ
	public Wzjbxx queryById(int glyid) throws Exception;
	
	// ����ʱ��������ʾ����δ��˵���վ������Ϣ
	public List queryAll() throws Exception;
}
