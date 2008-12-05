package com.abbcc.dao;

import java.util.List;

import com.abbcc.pojo.Zpxx;

public interface ZpxxDAO {
	
	// ������Ƹ��Ϣ
	public void insert(Zpxx zpxx) throws Exception;
	
	// �޸���Ƹ��Ϣ
	public void update(Zpxx zpxx) throws Exception;
	
	// ɾ����Ƹ��Ϣ
	public void delete(int hyjbxxid,int zpxxid) throws Exception;
	
	// ��������������Ƹ��Ϣ
	public Zpxx queryById(int hyjbxxid,int zpxxid) throws Exception;
	
	// ����ʱ��������ʾ����δ��˵���Ƹ��Ϣ
	public List queryAll(int hyjbxxid, int currentPage, int lineSize) throws Exception;
}
