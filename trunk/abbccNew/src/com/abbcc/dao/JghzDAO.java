package com.abbcc.dao;

import java.util.List;
import com.abbcc.pojo.Jghz;

public interface JghzDAO {
	// ����ӹ�����
	public void insert(Jghz jghz) throws Exception;

	// �޸ļӹ�����
	public void update(Jghz jghz) throws Exception;

	// ɾ���ӹ�����
	public void delete(int hyjbxxid, int jghzid) throws Exception;

	// �����������Ҽӹ�����
	public Jghz queryById(int hyjbxxid, int jghzid) throws Exception;

	// ����ʱ��������ʾ����δ��˵ļӹ�����
	public List queryAll(int hyjbxxid, int currentPage, int lineSize)
			throws Exception;
}
