package com.abbcc.dao;

import java.util.List;
import com.abbcc.pojo.Dljmsx;

public interface DljmsxDAO {
	// ������������Ϣ
	public void insert(Dljmsx dljmsx) throws Exception;

	// �޸Ĵ��������Ϣ
	public void update(Dljmsx dljmsx) throws Exception;

	// ɾ�����������Ϣ
	public void delete(int hyjbxxid, int dljmsxid) throws Exception;

	// �����������Ҵ��������Ϣ
	public Dljmsx queryById(int hyjbxxid, int dljmsxid) throws Exception;

	// ����ʱ��������ʾ����δ��˵Ĵ��������Ϣ
	public List queryAll(int hyjbxxid, int currentPage, int lineSize)
			throws Exception;

}
