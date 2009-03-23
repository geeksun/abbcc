package com.abbcc.dao;

import java.util.List;

import com.abbcc.exception.DaoException;
import com.abbcc.pojo.Cpgqxx;


public interface CpgqxxDAO {

	// �����Ʒ������Ϣ
	public void insert(Cpgqxx cpgqxx) throws DaoException;

	// �޸Ĳ�Ʒ������Ϣ
	public void update(Cpgqxx cpgqxx) throws DaoException;

	// ɾ����Ʒ������Ϣ
	public void delete(Integer hyjbxxid, Long cpgqxxid) throws DaoException;

	// �����������Ҳ�Ʒ������Ϣ
	public Cpgqxx queryById(int hyjbxxid, int cpgqxxid) throws DaoException;

	// ����ʱ��������ʾ����δ��˵Ĳ�Ʒ������Ϣ
	public List queryAll(int hyjbxxid, int currentPage, int lineSize)
			throws DaoException;

	public List getCpgqxxList(Integer hyjbxxid, String xxlx, String cpmc,String sfyx,String xxbt, String overdue,int start,int maxReults)throws DaoException;
 
	public int getCpgqxxCount(Integer hyjbxxid,String xxlx, String cpmc, String sfyx, String xxbt,String overdue)throws DaoException;

	public void updateCpggxxAuditType(String auditType, long[] productInfoId)throws DaoException;

	public Cpgqxx getCpgqxxById(long cpgqxxId);
 

	public long getCpgqxxSfyxCount(String string);

	public long getCpgqxxOverdueCount();
	
	public long getCpgqxxSfyxCount(long userId,String string);

	public long getCpgqxxOverdueCount(long userId);

	public int getAllCpgqxxCount(long userId);

	public int getNewCpgqxxCount(long userId);

	 
	 
}
