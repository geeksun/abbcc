package com.abbcc.dao;

import java.util.List;

import com.abbcc.pojo.Gsxxxx;

public interface GsxxxxDAO {
	// ���빫˾��ϸ��Ϣ
	public int add(Gsxxxx gsxxxx); 

	// �޸Ĺ�˾��ϸ��Ϣ
	public void update(Gsxxxx gsxxxx);

	// ɾ����˾��ϸ��Ϣ
	public void delete(int hyjbxxid) throws Exception;

	// �����������ҹ�˾��ϸ��Ϣ
	public Gsxxxx queryById(int hyjbxxid) throws Exception;

	// ����ʱ��������ʾ����δ��˵Ĺ�˾��ϸ��Ϣ
	public List queryAll(int hyjbxxid, int currentPage, int lineSize)
			throws Exception;

	//�����������ҹ�˾��ϸ��Ϣ
	public Gsxxxx getGsxxxxById(String hyjbxxid);

	//������©���󣨹�˾��ϸ��Ϣ��
	public void addLoseObject(Gsxxxx gsxxxx);  

	
}
