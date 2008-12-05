package com.abbcc.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.abbcc.dao.WzjbxxDAO;
import com.abbcc.factory.HibernateUtil;
import com.abbcc.pojo.Hyjbxx;
import com.abbcc.pojo.Wzjbxx;

public class WzjbxxDAOImpl implements WzjbxxDAO {
	private static WzjbxxDAOImpl wzjbxxdaoimpl ;
	private Session session = null;

	public WzjbxxDAOImpl() {
		this.session = HibernateUtil.currentSession();
	}

	public static WzjbxxDAOImpl getInstance() {
		if (wzjbxxdaoimpl == null) {
			wzjbxxdaoimpl = new WzjbxxDAOImpl();
		}
		return wzjbxxdaoimpl;
	}
	
	public void delete(int glyid) throws Exception {
		String hql = "DELETE FROM Wzjbxx w WHERE w.glyid=?";
		Query q = session.createQuery(hql);
		q.setInteger(0, glyid);
		Transaction tx = session.beginTransaction();
		q.executeUpdate();
		tx.commit();
	}

	public void insert(Wzjbxx wzjbxx) throws Exception {
		Transaction tx = session.beginTransaction();
		session.saveOrUpdate(wzjbxx);
		tx.commit();
	}

	public Wzjbxx queryById(int glyid) throws Exception {
		Wzjbxx w = new Wzjbxx();
		String hql = "FROM Wzjbxx w WHERE w.glyid=?";
		Query q = session.createQuery(hql);
		q.setInteger(0, glyid);
		List all = q.list();
		if (all.size() > 0) {
			w = (Wzjbxx) all.get(0);
		}
		return w;
	}

	public void update(Wzjbxx wzjbxx) throws Exception {
		Transaction tx = session.beginTransaction();
		session.update(wzjbxx);
		tx.commit();
	}

	public List queryAll() throws Exception{
		List list = null;
		String hql = "From Wzjbxx w";
		list = session.createQuery(hql).list();
		return list;
	}
}
