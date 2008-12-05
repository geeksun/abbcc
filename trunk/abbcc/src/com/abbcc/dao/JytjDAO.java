package com.abbcc.dao;

import java.util.List;

import com.abbcc.pojo.Jytj;

public interface JytjDAO {
	// ���뽻������
	public void insert(Jytj jytj) throws Exception;

	// �޸Ľ�������
	public void update(Jytj jytj) throws Exception;

	// ɾ����������
	public void delete(int hyjbxxid, int jytjid) throws Exception;

	// �����������ҽ�������
	public Jytj queryById(int hyjbxxid, int jytjid) throws Exception;

	// ����ʱ��������ʾ����δ��˵Ľ�������
	public List queryAll(int hyjbxxid, int currentPage, int lineSize)
			throws Exception;
}
