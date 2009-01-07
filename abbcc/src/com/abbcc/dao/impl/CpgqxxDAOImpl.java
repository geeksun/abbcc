package com.abbcc.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SQLQuery;

import com.abbcc.dao.CpgqxxDAO;
import com.abbcc.exception.DaoException;
import com.abbcc.factory.Globals;
import com.abbcc.pojo.Cpgqxx;
import com.abbcc.pojo.Pz;

public class CpgqxxDAOImpl extends BaseDaoImpl implements CpgqxxDAO {

	private String tableName = "cpgqxx";

	public void delete(int hyjbxxid, int cpgqxxid) throws DaoException {

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
				+ " xxsm, tp1,  tp2,  tp3, xxyxq,  jytjid, sqsj, sfyx, scsj)"
				+ " VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		Object[] params = new Object[] { cpgqxx.getCpgqxxid(),
				cpgqxx.getHyjbxxid(), cpgqxx.getXxlx(), cpgqxx.getCpmc(),
				cpgqxx.getCpshlm(), cpgqxx.getXxbt(), cpgqxx.getCpsxid(),
				cpgqxx.getXxsm(), cpgqxx.getTp1(), cpgqxx.getTp2(),
				cpgqxx.getTp3(), cpgqxx.getXxyxq(), cpgqxx.getJytjid(),
				cpgqxx.getSqsj(), cpgqxx.getSfyx(), cpgqxx.getScsj()

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
		// TODO Auto-generated method stub

	}

	public List getCpgqxxList(Integer hyjbxxid, String xxlx, String cpmc,
			String sfyx, String xxbt,int start,int maxReults) {
		String hql = this.getSelectSql(hyjbxxid, xxlx, cpmc, sfyx, xxbt);
		Query query = this
				.getSelectQuery(hql, hyjbxxid, xxlx, cpmc, sfyx, xxbt);
		query.setFirstResult(start);
		query.setMaxResults(maxReults);
		return query.list();
	}

	public int getCpgqxxCount(Integer hyjbxxid, String xxlx, String cpmc,
			String sfyx, String xxbt) {
		String hql = "select count(*) "
				+ this.getSelectSql(hyjbxxid, xxlx, cpmc, sfyx, xxbt);
		Query query = this
				.getSelectQuery(hql, hyjbxxid, xxlx, cpmc, sfyx, xxbt);
		return ((Long) query.uniqueResult()).intValue();
	}

	private Query getSelectQuery(String hql, Integer hyjbxxid, String xxlx,
			String cpmc, String sfyx, String xxbt) {
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
		return query;
	}

	private String getSelectSql(Integer hyjbxxid, String xxlx, String cpmc,
			String sfyx, String xxbt) {
		
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

}
