package com.abbcc.test;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.abbcc.dao.HyjbxxDAO;
import com.abbcc.factory.HibernateSessionFactory;
import com.abbcc.pojo.Hyjbxx;

public class TestHyjbxx {
	private static HyjbxxDAO hd;
	public static void main(String[] args) throws Exception {
		Session session = HibernateSessionFactory.getSession();
		Transaction tx = session.beginTransaction();
		//hd = DAOFactory.getHyjbxxDAOInstance();
		//System.out.println(hd.)
		Hyjbxx h = new Hyjbxx();
		
		h.setHyjbxxid(11);
		h.setCz("aa6");
		h.setDzyx("aa6");
		h.setGddh("³ÂÓÂËê6");
		h.setHydlm("aa6");
		h.setMm("a25");
		h.setMmtsda("a4");
		h.setMmtswt("a");
		h.setScsj("a4");
		h.setSfyx("a");
		h.setSj("a");
		h.setMemberType("a");
		h.setXb("a");
		h.setZsxm("a");
		
		session.save(h);
		//tx.commit();
		session.close();
		//hd.insert(h);
		
//		h.setHyjbxxid(10);
//		h = hd.queryById(h.getHyjbxxid());
//		h.setCz("bb");
//		h.setDzyx("cddc");
//		h.setGddh("ccddc");
//		h.setHydlm("cddc");
//		h.setMm("ddc");
//		h.setMmtsda("ssc");
//		h.setMmtswt("ssc");
//		h.setScsj("cdd");
//		h.setSfyx("x");
//		h.setSj("ec");
//		h.setSqsj("ec");
//		h.setXb("e");
//		h.setZsxm("ce");
//		hd.update(h);
		
//		h.setHyjbxxid(11);
//		hd.delete(h.getHyjbxxid());
		
//		h.setHyjbxxid(1);
//		h = hd.queryById(h.getHyjbxxid());
//		System.out.println(h.getMm());
		
//		List list = hd.queryAll(1,3);
//		Iterator iter = list.iterator();
//		while(iter.hasNext())
//		{
//			h = (Hyjbxx)iter.next();
//			System.out.println(h.getHyjbxxid());
//		}
	}

}
