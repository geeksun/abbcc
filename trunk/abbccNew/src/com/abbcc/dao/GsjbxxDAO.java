package com.abbcc.dao;

import java.util.List;

import com.abbcc.pojo.Gsjbxx;

public interface GsjbxxDAO {
	// ���빫˾������Ϣ
	public int add(Gsjbxx gsjbxx) ; 

	// �޸Ĺ�˾������Ϣ
	public void update(Gsjbxx gsjbxx);

	// ɾ����˾������Ϣ
	public void delete(int hyjbxxid) throws Exception;

	// �����������ҹ�˾������Ϣ
	public Gsjbxx queryById(int hyjbxxid) throws Exception;

	// ����ʱ��������ʾ����δ��˵Ĺ�˾������Ϣ
	public List queryAll(int hyjbxxid, int currentPage, int lineSize)
			throws Exception;

	public List getMemberByName(String customer);

	public List getMemberById(int hyjbxxid); 
}
