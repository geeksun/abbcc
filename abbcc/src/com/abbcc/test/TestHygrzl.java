package com.abbcc.test;

import com.abbcc.dao.HygrzlDAO;
import com.abbcc.factory.DAOFactory;
import com.abbcc.pojo.Hygrzl;

public class TestHygrzl {
	public static void main(String[] args) throws Exception {
//		 �����������л�Ա������Ϣid
		int  hyjbxxid = 13;
		HygrzlDAO hd = DAOFactory.getHygrzlDAOInstance();
		Hygrzl g = new Hygrzl();
		
//		g.setHyjbxxid(hyjbxxid);
//		g.setSr("aa");
//		g.setXx("aa");
//		g.setJg("aa");
//		g.setSlsp("aa");
//		g.setXl("aa");
//		g.setZjxy("aa");
//		g.setGrzy("aa");
//		g.setXqah("aa");
//		g.setZwjs("aa");
//		hd.insert(g);

//		g.setHyjbxxid(13);
//		g.setSr("��");
//		g.setXx("aa");
//		g.setJg("��");
//		g.setSlsp("��");
//		g.setXl("aa");
//		g.setZjxy("��");
//		g.setGrzy("aa");
//		g.setXqah("��");
//		g.setZwjs("aa");
//		hd.update(g);

//		g.setHyjbxxid(hyjbxxid);
//		hd.delete(hyjbxxid);
		
//		g = hd.queryById(hyjbxxid);
//		System.out.println(g.getGrzy());
	
//		List list = gd.queryAll(hyjbxxid, 1, 3);
//		Iterator iter = list.iterator();
//		while(iter.hasNext())
//		{
//			g = (Gsjbxx)iter.next();
//			System.out.println(g.getHyjbxxid());
//		}
	}
}