package com.abbcc.dao;

import com.abbcc.pojo.Hysh;

public interface HyshDAO {
	// �����Ա���
	public void insert(Hysh hysh) throws Exception;
	
	// �޸Ļ�Ա���
	public void update(Hysh hysh) throws Exception;
	
	// ɾ����Ա���
	public void delete(String hysh) throws Exception;
	
	// �����������һ�Ա���
	public Hysh queryById(String hysh) throws Exception;
	
	// ����ʱ��������ʾ����δ��˵Ļ�Ա���
	//public List queryAll() throws Exception;
}
