package com.abbcc.dao;

import java.util.List;
import com.abbcc.pojo.Cpgqxx;

public interface CpgqxxDAO {

	// �����Ʒ������Ϣ
	public void insert(Cpgqxx cpgqxx) throws Exception;

	// �޸Ĳ�Ʒ������Ϣ
	public void update(Cpgqxx cpgqxx) throws Exception;

	// ɾ����Ʒ������Ϣ
	public void delete(int hyjbxxid, int cpgqxxid) throws Exception;

	// �����������Ҳ�Ʒ������Ϣ
	public Cpgqxx queryById(int hyjbxxid, int cpgqxxid) throws Exception;

	// ����ʱ��������ʾ����δ��˵Ĳ�Ʒ������Ϣ
	public List queryAll(int hyjbxxid, int currentPage, int lineSize)
			throws Exception;
}
