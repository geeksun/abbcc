package com.abbcc.dao;

import java.util.List;

import com.abbcc.pojo.Gsxxxx;

public interface GsxxxxDAO {
	// ���빫˾��ϸ��Ϣ
	public void insert(Gsxxxx gsxxxx) throws Exception;

	// �޸Ĺ�˾��ϸ��Ϣ
	public void update(Gsxxxx gsxxxx) throws Exception;

	// ɾ����˾��ϸ��Ϣ
	public void delete(int hyjbxxid) throws Exception;

	// �����������ҹ�˾��ϸ��Ϣ
	public Gsxxxx queryById(int hyjbxxid) throws Exception;

	// ����ʱ��������ʾ����δ��˵Ĺ�˾��ϸ��Ϣ
	public List queryAll(int hyjbxxid, int currentPage, int lineSize)
			throws Exception;
}
