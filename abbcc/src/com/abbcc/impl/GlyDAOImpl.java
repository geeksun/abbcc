package com.abbcc.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.abbcc.dao.GlyDAO;
import com.abbcc.factory.HibernateUtil;
import com.abbcc.pojo.Gly;
import com.abbcc.pojo.Hyjbxx;

public class GlyDAOImpl implements GlyDAO {
	private static GlyDAOImpl glydaoimpl;

	private Session session = null;

	public GlyDAOImpl() {
		this.session = HibernateUtil.currentSession();
	}

	public static GlyDAOImpl getInstance() {
		if (glydaoimpl == null) {
			glydaoimpl = new GlyDAOImpl();
		}
		return glydaoimpl;
	}

	// 插入管理员信息
	public void insert(Gly gly) throws Exception {
		Transaction tx = session.beginTransaction();
		session.saveOrUpdate(gly);
		tx.commit();
	}

	// 修改管理员信息
	public void update(Gly gly) throws Exception {
		Transaction tx = session.beginTransaction();
		session.update(gly);
		tx.commit();
	}

	// 删除管理员信息
	public void delete(int glyid) throws Exception {
		String hql = "DELETE FROM Gly h WHERE h.glyid=?";
		Query q = session.createQuery(hql);
		q.setInteger(0, glyid);
		Transaction tx = session.beginTransaction();
		q.executeUpdate();
		tx.commit();
	}

	// 根据主键查找管理员信息
	public Gly queryById(int glyid) throws Exception {
		Gly h = new Gly();
		String hql = "FROM Gly AS h WHERE h.glyid=?";
		Query q = session.createQuery(hql);
		q.setInteger(0, glyid);
		List all = q.list();
		if (all.size() > 0) {
			h = (Gly) all.get(0);
		}
		return h;
	}

	// 显示所有管理员信息
	public List queryAll() throws Exception {
		List list = null;
		String hql = "From Gly AS h";
		list = session.createQuery(hql).list();
		return list;
	}
}
