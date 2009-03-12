package com.abbcc.dao;

import java.util.List;

import com.abbcc.pojo.Hygrzl;

public interface HygrzlDAO {
	// �����Ա��������
	public void insert(Hygrzl hygrzl) throws Exception;

	// �޸Ļ�Ա��������
	public void update(Hygrzl hygrzl) throws Exception;

	// ɾ����Ա��������
	public void delete(int hyjbxxid) throws Exception;

	// �����������һ�Ա��������
	public Hygrzl queryById(int hyjbxxid) throws Exception;

	// ����ʱ��������ʾ����δ��˵Ļ�Ա��������
	public List queryAll(int hyjbxxid, int currentPage, int lineSize)
			throws Exception;
}
