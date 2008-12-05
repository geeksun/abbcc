package com.abbcc.dao;

import java.util.List;

import com.abbcc.pojo.Hyjbxx;

public interface HyjbxxDAO {
	
	// �����Ա��������
	public int insert(Hyjbxx hyjbxx); 

	// �޸Ļ�Ա��������
	public void update(Hyjbxx hyjbxx) throws Exception;

	// ɾ����Ա��������
	public void delete(int hyjbxx) throws Exception;

	// �����������һ�Ա��������
	public Hyjbxx queryById(int hyjbxx) throws Exception;

	// ����ʱ������ *��ҳ* ��ʾ����δ��˵Ļ�Ա��������
	public List queryAll(int pageSize, int lineSize) throws Exception;

	//public boolean findByExample(Hyjbxx hy);
	//public int findByName(String name);
	public List<Hyjbxx> findByName(String name);

	public int findByProperty(String name, String pass);

	public void save(Hyjbxx hy); 

}
