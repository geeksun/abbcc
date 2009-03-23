package com.abbcc.test;

import java.util.Iterator;
import java.util.List;

import com.abbcc.dao.HyjyjlDAO;
import com.abbcc.factory.DAOFactory;
import com.abbcc.pojo.Hyjyjl;

public class TestHyjyjl {
	public static void main(String[] args) throws Exception {
//		 假设现在已有会员基本信息id
		int  hyjbxxid = 3;
		HyjyjlDAO hd = DAOFactory.getHyjyjlDAOInstance();
		Hyjyjl h = new Hyjyjl();
		
//		h.setHyjbxxid(hyjbxxid);
//		h.setXxmc("aa");
//		h.setXw("aa");
//		h.setZy("aa");
//		h.setXxksrq("aa");
//		h.setXxjsrq("aa");
//		h.setBz("aa");
//		hd.insert(h);

//		h.setHyjbxxid(hyjbxxid);
//		h.setHyjyjlid(10);
//		h.setXxmc("aa");
//		h.setXw("陈");
//		h.setZy("aa");
//		h.setXxksrq("陈");
//		h.setXxjsrq("aa");
//		h.setBz("aa");
//		hd.update(h);
		
//		h.setHyjbxxid(hyjbxxid);
//		hd.delete(hyjbxxid,11);
		
//		h = hd.queryById(hyjbxxid,10);
//		System.out.println(h.getXw());
	
		List list = hd.queryAll(hyjbxxid, 3, 3);
		Iterator iter = list.iterator();
		while(iter.hasNext())
		{
			h = (Hyjyjl)iter.next();
			System.out.println(h.getHyjbxxid());
		}
	}
}
