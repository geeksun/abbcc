package com.abbcc.test;

import java.util.Iterator;
import java.util.List;

import com.abbcc.dao.HygzjlDAO;
import com.abbcc.factory.DAOFactory;
import com.abbcc.pojo.Hygzjl;

public class TestHygzjl {
	public static void main(String[] args) throws Exception {
//		 假设现在已有会员基本信息id
		int  hyjbxxid = 3;
		HygzjlDAO hd = null;// DAOFactory.getHygzjlDAOInstance();
		Hygzjl h = new Hygzjl();
		
//		h.setHyjbxxid(hyjbxxid);
//		h.setRzrq("aa");
//		h.setGs("aa");
//		h.setSshy("aa");
//		h.setGm("aa");
//		h.setBm("aa");
//		h.setZw("aa");
//		h.setGznr("aa");
//		hd.insert(h);

//		h.setHyjbxxid(hyjbxxid);
//		h.setHygzjlid(9);
//		h.setRzrq("aa");
//		h.setGs("aa");
//		h.setSshy("陈");
//		h.setGm("陈");
//		h.setBm("aa");
//		h.setZw("陈");
//		h.setGznr("陈");
//		hd.update(h);
		
//		h.setHyjbxxid(hyjbxxid);
//		hd.delete(hyjbxxid,10);
		
//		h = hd.queryById(hyjbxxid,9);
//		System.out.println(h.getSshy());
	
//		List list = hd.queryAll(hyjbxxid, 4, 3);
//		Iterator iter = list.iterator();
//		while(iter.hasNext())
//		{
//			h = (Hygzjl)iter.next();
//			System.out.println(h.getHyjbxxid());
//		}
	}
}
