package com.abbcc.dao.impl;

import java.util.List;

import org.hibernate.SQLQuery;


import com.abbcc.dao.JytjDAO;
import com.abbcc.exception.DaoException;
import com.abbcc.factory.Globals;
import com.abbcc.pojo.Jytj;
import com.abbcc.pojo.Pz;
import com.abbcc.util.JdbcTemplateUtil;

public class JytjDAOImpl extends BaseDaoImpl implements JytjDAO {
	private String tableName="jytj";

	public void delete(int hyjbxxid, int jytjid) throws DaoException {
		// TODO Auto-generated method stub
		
	}

	public void insert(Jytj jytj) throws DaoException {
		if (jytj == null)
			return;
		Pz pz = this.updateAndGetPz(tableName);
		long id = pz.getRecnum();
		jytj.setJytjid(id);
		long page = id / Globals.COUNT;
		String sql = "INSERT INTO jytj_" + page
				+ " (jytjid,hyjbxxid,cpgqxxid,jldw,cpdj,zxqdl, ghzl,  fhqx, gyslc)"
				+ " VALUES(?,?,?,?,?,?,?,?,?)";
		Object[] params = new Object[] {   id, jytj.getHyjbxxid(),jytj.getCpgqxxId(),
				jytj.getJldw(), jytj.getCpdj(), jytj.getZxqdl(),
				jytj.getGhzl(), jytj.getFhqx(), jytj.getGyslc()

		};

		SQLQuery query=this.getSession().createSQLQuery(sql);
		this.setParamter(0, query, params);
		query.executeUpdate();
		this.updateTableCount(tableName);
	}

	public List queryAll(int hyjbxxid, int currentPage, int lineSize) throws DaoException {
		// TODO Auto-generated method stub
		return null;
	}

	public Jytj queryById(int hyjbxxid, int jytjid) throws DaoException {
		// TODO Auto-generated method stub
		return null;
	}

	public void update(Jytj jytj) throws DaoException {
		// TODO Auto-generated method stub
		
	} }
