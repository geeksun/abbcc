package com.abbcc.dao;

import java.util.List;

import com.abbcc.pojo.Hyjyjl;

public interface HyjyjlDAO {
	// �����Ա��������
	public void insert(Hyjyjl hyjyjl) throws Exception;

	// �޸Ļ�Ա��������
	public void update(Hyjyjl hyjyjl) throws Exception;

	// ɾ����Ա��������
	public void delete(int hyjbxxid, int hyjyjlid) throws Exception;

	// �����������һ�Ա��������
	public Hyjyjl queryById(int hyjbxxid, int hyjyjlid) throws Exception;

	// ����ʱ��������ʾ����δ��˵Ļ�Ա��������
	public List queryAll(int hyjbxxid, int currentPage, int lineSize)
			throws Exception;
}
