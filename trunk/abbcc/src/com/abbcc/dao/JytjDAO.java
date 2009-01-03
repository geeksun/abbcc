package com.abbcc.dao;

import java.util.List;

import com.abbcc.exception.DaoException;
import com.abbcc.pojo.Jytj;


public interface JytjDAO {
	// ���뽻������
	public void insert(Jytj jytj) throws DaoException;

	// �޸Ľ�������
	public void update(Jytj jytj) throws DaoException;

	// ɾ����������
	public void delete(int hyjbxxid, int jytjid) throws DaoException;

	// �����������ҽ�������
	public Jytj queryById(int hyjbxxid, int jytjid) throws DaoException;

	// ����ʱ��������ʾ����δ��˵Ľ�������
	public List queryAll(int hyjbxxid, int currentPage, int lineSize)
			throws DaoException;
}
