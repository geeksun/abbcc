package com.abbcc.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SQLQuery;

import com.abbcc.dao.CpgqxxDAO;
import com.abbcc.exception.DaoException;
import com.abbcc.factory.Globals;
import com.abbcc.pojo.Cpgqxx;
import com.abbcc.pojo.Pz;

public class CpgqxxDAOImpl extends BaseDaoImpl  implements CpgqxxDAO {

	private String tableName="cpgqxx";
	 
	
	public void delete(int hyjbxxid, int cpgqxxid) throws DaoException {
		  
	} 
	   
	public void insert(Cpgqxx cpgqxx) throws DaoException {
		if(cpgqxx==null)return;
		Pz pz= this.updateAndGetPz(tableName);
		long id=pz.getRecnum();  
		long page=id/ Globals.COUNT;
		cpgqxx.setCpgqxxid(id);
		String sql = "INSERT INTO cpgqxx_" + page +  
				" (cpgqxxid,hyjbxxid,xxlx,cpmc,cpshlm, xxbt,  cpsxid," +
				" xxsm, tp1,  tp2,  tp3, xxyxq,  jytjid, sqsj, sfyx, scsj)" +
				" VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		 Object[] params=new Object[]{
		  cpgqxx.getCpgqxxid() ,cpgqxx.getHyjbxxid(),cpgqxx.getXxlx(),cpgqxx.getCpmc()
		 ,cpgqxx.getCpshlm(),cpgqxx.getXxbt(),cpgqxx.getCpsxid()
		 ,cpgqxx.getXxsm(),cpgqxx.getTp1(),cpgqxx.getTp2(),cpgqxx.getTp3()
		 ,cpgqxx.getXxyxq(),cpgqxx.getJytjid(),cpgqxx.getSqsj()
		 ,cpgqxx.getSfyx(),cpgqxx.getScsj()
				
		};
		SQLQuery query=this.getSession().createSQLQuery(sql);
		this.setParamter(0, query, params);
		query.executeUpdate();
		//	JdbcTemplateUtil.updateObject(sql,params);
		this.updateTableCount(tableName);
	}

	public List queryAll(int hyjbxxid, int currentPage, int lineSize) throws DaoException {
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

	public List getCpgqxxList(int hyjbxxid, String xxlx, String cpmc,
			String sfyx, String xxbt) {
		String hql = "from Cpgqxx c where c.hyjbxxid=?";
		if (xxlx != null) {
			hql += " and c.xxlx=?";
		}
		if (cpmc != null) {
			hql += " and c.cpmc=?";
		}
		if (sfyx != null) {
			hql += " and c.sfyx=?";
		}
		if (xxbt != null) {
			hql += " and c.xxbt=?";
		}
		Query query = this.getQuery(hql);
		query.setInteger(0, hyjbxxid);
		int index = 1;
		if (xxlx != null) {
			query.setParameter(index, xxlx);
			index++;
		}
		if (cpmc != null) {
			query.setParameter(index, cpmc);
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

		return query.list();
	} 
}
