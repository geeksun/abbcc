package com.abbcc.dao;

import java.util.List;

import com.abbcc.pojo.Fwsx;

public interface FwsxDAO {
	// �������������Ϣ
	public void insert(Fwsx fwsx) throws Exception;

	// �޸ķ���������Ϣ
	public void update(Fwsx fwsx) throws Exception;

	// ɾ������������Ϣ
	public void delete(int hyjbxxid, int fwsxid) throws Exception;

	// �����������ҷ���������Ϣ
	public Fwsx queryById(int hyjbxxid, int fwsxid) throws Exception;

	// ����ʱ��������ʾ����δ��˵ķ���������Ϣ
	public List queryAll(int hyjbxxid, int currentPage, int lineSize)
			throws Exception;
}
