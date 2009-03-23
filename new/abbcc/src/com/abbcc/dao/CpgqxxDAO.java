package com.abbcc.dao;

import java.util.List;

import com.abbcc.exception.DaoException;
import com.abbcc.pojo.Cpgqxx;


public interface CpgqxxDAO {

	// 插入产品供求信息
	public void insert(Cpgqxx cpgqxx) throws DaoException;

	// 修改产品供求信息
	public void update(Cpgqxx cpgqxx) throws DaoException;

	// 删除产品供求信息
	public void delete(Integer hyjbxxid, Long cpgqxxid) throws DaoException;

	// 根据主键查找产品供求信息
	public Cpgqxx queryById(int hyjbxxid, int cpgqxxid) throws DaoException;

	// 根据时间排序显示所有未审核的产品供求信息
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
