package com.abbcc.dao.impl;

import java.util.Date;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.SQLQuery;

import com.abbcc.common.AppConstants;
import com.abbcc.common.DateFormater;
import com.abbcc.dao.CpgqxxDAO;
import com.abbcc.exception.DaoException;
import com.abbcc.factory.Globals;
import com.abbcc.pojo.Cpgqxx;
import com.abbcc.pojo.Pz;

public class CpgqxxDAOImpl extends BaseDaoImpl implements CpgqxxDAO {

	private String tableName = "cpgqxx";

	public void delete(Integer hyjbxxid, Long cpgqxxid) throws DaoException {
		String sql="delete from "+tableName+" where cpgqxxid=? and hyjbxxid=?" ;
		SQLQuery query = this.getSession().createSQLQuery(sql);
		query.setLong(0, cpgqxxid);
		query.setInteger(1, hyjbxxid); 
		query.executeUpdate();
	}

	public void insert(Cpgqxx cpgqxx) throws DaoException {
		if (cpgqxx == null)
			return;
		Pz pz = this.updateAndGetPz(tableName);
		long id = pz.getRecnum();
		long page = id / Globals.COUNT;
		cpgqxx.setCpgqxxid(id);
		String sql = "INSERT INTO cpgqxx_" + page
				+ " (cpgqxxid,hyjbxxid,xxlx,cpmc,cpshlm, xxbt,  cpsxid,"
				+ " xxsm, tp1,  tp2,  tp3, xxyxq,  jytjid, sqsj, sfyx, scsj,xxyxsj)"
				+ " VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		Object[] params = new Object[] { cpgqxx.getCpgqxxid(),
				cpgqxx.getHyjbxxid(), cpgqxx.getXxlx(), cpgqxx.getCpmc(),
				cpgqxx.getCpshlm(), cpgqxx.getXxbt(), cpgqxx.getCpsxid(),
				cpgqxx.getXxsm(), cpgqxx.getTp1(), cpgqxx.getTp2(),
				cpgqxx.getTp3(), cpgqxx.getXxyxq(), cpgqxx.getJytjid(),
				cpgqxx.getSqsj(), cpgqxx.getSfyx(), cpgqxx.getScsj(),DateFormater.getFormatDate(  cpgqxx.getXxyxsj())

		};
		SQLQuery query = this.getSession().createSQLQuery(sql);
		this.setParamter(0, query, params);
		query.executeUpdate();
		// JdbcTemplateUtil.updateObject(sql,params);
		this.updateTableCount(tableName);
	}

	public List queryAll(int hyjbxxid, int currentPage, int lineSize)
			throws DaoException {
		// TODO Auto-generated method stub
		return null;
	}

	public Cpgqxx queryById(int hyjbxxid, int cpgqxxid) throws DaoException {
		// TODO Auto-generated method stub
		return null;
	}

	public void update(Cpgqxx cpgqxx) throws DaoException {
		super.update(cpgqxx);

	}

	public List getCpgqxxList(Integer hyjbxxid, String xxlx, String cpmc,
			String sfyx, String xxbt, String overdue,int start,int maxReults) {
		String hql = this.getSelectSql(hyjbxxid, xxlx, cpmc, sfyx, xxbt,overdue);
		Query query = this
				.getSelectQuery(hql, hyjbxxid, xxlx, cpmc, sfyx, xxbt,overdue);
		query.setFirstResult(start);
		query.setMaxResults(maxReults);
		return query.list();
	}

	public int getCpgqxxCount(Integer hyjbxxid, String xxlx, String cpmc,
			String sfyx, String xxbt, String overdue) {
		String hql = "select count(*) "
				+ this.getSelectSql(hyjbxxid, xxlx, cpmc, sfyx, xxbt,overdue);
		Query query = this
				.getSelectQuery(hql, hyjbxxid, xxlx, cpmc, sfyx, xxbt,overdue);
		return ((Long) query.uniqueResult()).intValue();
	}

	private Query getSelectQuery(String hql, Integer hyjbxxid, String xxlx,
			String cpmc, String sfyx, String xxbt, String overdue) {
		Query query = this.getQuery(hql); 
		int index =0;
		if (hyjbxxid != null) {
			query.setParameter(index, hyjbxxid);
			index++;
		}
		
		if (xxlx != null) {
			query.setParameter(index, xxlx);
			index++;
		}
		if (cpmc != null) {
			cpmc="%"+cpmc+"%";
			query.setString (index, cpmc);
			index++;
		}
		if (sfyx != null) {
			query.setParameter(index, sfyx);
			index++;
		}
		if (xxbt != null) {
			query.setParameter(index, xxbt);
			index++;
		}
		if (overdue != null) {
			if(overdue.equals(AppConstants.CPGOXX_OVERDUE)||overdue.equals(AppConstants.CPGOXX_UN_OVERDUE)){
				Date date=new Date();
				//query.setTimestamp(index, date); 
				index++;
				 
			}  
		}
		return query;
	}

	private String getSelectSql(Integer hyjbxxid, String xxlx, String cpmc,
			String sfyx, String xxbt,  String overdue) {
		
		String hql = "from Cpgqxx c where 1=1";
		if (hyjbxxid != null) {
			hql += " and c.hyjbxxid=?";
		}
		if (xxlx != null) {
			hql += " and c.xxlx=?";
		}
		if (cpmc != null) {
			hql += " and c.cpmc like ?";
		}
		if (sfyx != null) {
			hql += " and c.sfyx=?";
		}
		if (xxbt != null) {
			hql += " and c.xxbt=?";
		}
		if (overdue != null) {
			if(overdue.equals(AppConstants.CPGOXX_OVERDUE)){
				hql += " and c.xxyxsj<NOW()";
			}else if(overdue.equals(AppConstants.CPGOXX_UN_OVERDUE)){
				hql += " and c.xxyxsj>=NOW()";
			}
			
		}
		return hql;
	}

	public void updateCpggxxAuditType(String auditType, long[] productInfoId) throws DaoException {
		String hql="update Cpgqxx c set c.sfyx=? where c.cpgqxxid";
		hql=this.getSql(hql, productInfoId);
		Query query = this.getQuery(hql); 
		query.setString(0, auditType);
		this.setLongParamter(1, query, productInfoId);
		query.executeUpdate();
	}

	public Cpgqxx getCpgqxxById(long cpgqxxId) {
		String hql = "from Cpgqxx c where c.cpgqxxid=?";

		Query query = this.getQuery(hql);
		query.setLong(0, cpgqxxId);

		return (Cpgqxx) query.uniqueResult();
	}

	public long getCpgqxxOverdueCount() {
		String hql = "select count(*) from Cpgqxx  c  where  c.xxyxsj<NOW()"; 
		Query query = this.getQuery(hql);
		 
		return ((Long) query.uniqueResult()).intValue();

	}

	public long getCpgqxxOverdueCount(long userId) {
		String hql = "select count(*) from Cpgqxx  c where  c.xxyxsj<NOW() and c.hyjbxxid=?"; 
		Query query = this.getQuery(hql);
		query.setLong(0, userId);

		return ((Long) query.uniqueResult()).intValue();
	}

	public long getCpgqxxSfyxCount(String sfyx) {
		String hql = "select count(*) from Cpgqxx  c where  c.sfyx=?"; 
		Query query = this.getQuery(hql);
		query.setString(0, sfyx);

		return ((Long) query.uniqueResult()).intValue();
	}

	public long getCpgqxxSfyxCount(long userId, String sfyx) {
		String hql = "select count(*) from Cpgqxx  c where   c.sfyx=? and c.hyjbxxid=?"; 
		Query query = this.getQuery(hql);
		query.setString(0, sfyx);
		query.setLong(1, userId);

		return ((Long) query.uniqueResult()).intValue();
	}

}
