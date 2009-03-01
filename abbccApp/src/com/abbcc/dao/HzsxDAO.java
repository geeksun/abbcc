package com.abbcc.dao;

import java.util.List;

import com.abbcc.pojo.Hzsx;

public interface HzsxDAO {
	// �����������
	public void insert(Hzsx hzsx) throws Exception;

	// �޸ĺ�������
	public void update(Hzsx hzsx) throws Exception;

	// ɾ����������
	public void delete(int hyjbxxid, int hzsxid) throws Exception;

	// �����������Һ�������
	public Hzsx queryById(int hyjbxxid, int hzsxid) throws Exception;

	// ����ʱ��������ʾ����δ��˵ĺ�������
	public List queryAll(int hyjbxxid, int currentPage, int lineSize)
			throws Exception;
}
