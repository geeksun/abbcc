package com.abbcc.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.abbcc.dao.XxshDAO;
import com.abbcc.factory.HibernateUtil;
import com.abbcc.pojo.Xxsh;

public class XxshDAOImpl implements XxshDAO {
	private static XxshDAOImpl xxshdaoimpl = null;
	private Session session = null;

	public XxshDAOImpl() {
		this.session = HibernateUtil.currentSession();
	}
	public static XxshDAOImpl getInstance() {
		if (xxshdaoimpl == null) {
			xxshdaoimpl = new XxshDAOImpl();
		}
		return xxshdaoimpl;
	}


	public void delete(int glyid,int xxshid) throws Exception {
		String hql = "DELETE FROM Xxsh h WHERE h.glyid=? AND h.xxshid=?";
		Query q = session.createQuery(hql);
		q.setInteger(0, glyid);
		q.setInteger(1, xxshid);
		Transaction tx = session.beginTransaction();
		q.executeUpdate();
		tx.commit();
	}

	public void insert(Xxsh xxsh) throws Exception {
		Transaction tx = session.beginTransaction();
		session.saveOrUpdate(xxsh);
		tx.commit();
	}

	public Xxsh queryById(int glyid,int xxshid) throws Exception {
		Xxsh h = new Xxsh();
		String hql = "FROM Xxsh AS h WHERE h.glyid=? AND h.xxshid=?";
		Query q = session.createQuery(hql);
		q.setInteger(0, glyid);
		q.setInteger(1, xxshid);
		List all = q.list();
		if (all.size() > 0) {
			h = (Xxsh) all.get(0);
		}
		return h;
	}

	public void update(Xxsh xxsh) throws Exception {
		Transaction tx = session.beginTransaction();
		session.update(xxsh);
		tx.commit();
	}

}
