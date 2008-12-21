package com.abbcc.dao.impl;

import org.hibernate.Query;

import com.abbcc.dao.PzDAO;
import com.abbcc.pojo.Pz;

public class PzDAOImpl extends BaseDaoImpl implements PzDAO{

	public Pz getPzByTableName(String tableName) {
		 String sql="from Pz p where p.tablename=?";
		 Query query=this.getQuery(sql);
		 query.setParameter(0, tableName); 
		return (Pz)query.uniqueResult();
	}

	public void updatePz(Pz pz) {
		 this.update(pz); 
	}

}
