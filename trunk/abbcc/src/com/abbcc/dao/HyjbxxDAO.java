package com.abbcc.dao;

import java.util.List;
import com.abbcc.pojo.Hyjbxx;

public interface HyjbxxDAO {
	//�����Ա������Ϣ
	public int add(Hyjbxx hyjbxx);  

	//�޸Ļ�Ա������Ϣ
	public void update(Hyjbxx hyjbxx);

	//ɾ����Ա������Ϣ
	public void delete(int hyjbxx) throws Exception;

	//�����������һ�Ա������Ϣ
	public Hyjbxx queryById(int hyjbxx) throws Exception;

	//����ʱ������ *��ҳ* ��ʾ����δ��˵Ļ�Ա������Ϣ
	public List queryAll(int pageSize, int lineSize) throws Exception;

	public List findByName(String name);

	public int findByProperty(String name, String pass);
	
	public String getIdByName(String hydlm);

	//�����������һ�Ա������Ϣ
	public Hyjbxx findById(String hyjbxxid);  
	
}
