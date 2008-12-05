package com.abbcc.dao;

import java.util.List;

import com.abbcc.pojo.Gsjbxx;

public interface GsjbxxDAO {
	// ���빫˾������Ϣ��Ϣ
	public void insert(Gsjbxx gsjbxx) throws Exception;

	// �޸Ĺ�˾������Ϣ��Ϣ
	public void update(Gsjbxx gsjbxx) throws Exception;

	// ɾ����˾������Ϣ��Ϣ
	public void delete(int hyjbxxid) throws Exception;

	// �����������ҹ�˾������Ϣ��Ϣ
	public Gsjbxx queryById(int hyjbxxid) throws Exception;

	// ����ʱ��������ʾ����δ��˵Ĺ�˾������Ϣ
	public List queryAll(int hyjbxxid, int currentPage, int lineSize)
			throws Exception;
}
