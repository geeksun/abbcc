package com.abbcc.dao;

import java.util.List;

import com.abbcc.pojo.Hygzjl;

public interface HygzjlDAO {
	// �����Ա��������
	public void insert(Hygzjl hygzjl) throws Exception;

	// �޸Ļ�Ա��������
	public void update(Hygzjl hygzjl) throws Exception;

	// ɾ����Ա��������
	public void delete(int hyjbxxid, int hygzjlid) throws Exception;

	// �����������һ�Ա��������
	public Hygzjl queryById(int hyjbxxid, int hygzjlid) throws Exception;

	// ����ʱ��������ʾ����δ��˵Ļ�Ա��������
	public List queryAll(int hyjbxxid, int currentPage, int lineSize)
			throws Exception;
}
