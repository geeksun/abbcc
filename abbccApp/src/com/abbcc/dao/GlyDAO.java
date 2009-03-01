package com.abbcc.dao;

import java.util.List;

import com.abbcc.pojo.Gly;

public interface GlyDAO {
	// �������Ա��Ϣ
	public void insert(Gly gly) throws Exception;
	
	// �޸Ĺ���Ա��Ϣ
	public void update(Gly gly) throws Exception;
	
	// ɾ������Ա��Ϣ
	public void delete(int gly) throws Exception;
	
	// �����������ҹ���Ա��Ϣ
	public Gly queryById(int gly) throws Exception;
	
	// ��ʾ���й���Ա��Ϣ
	public List queryAll() throws Exception;
}
