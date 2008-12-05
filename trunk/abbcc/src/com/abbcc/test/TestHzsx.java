package com.abbcc.test;

import java.util.Iterator;
import java.util.List;

import com.abbcc.dao.HzsxDAO;
import com.abbcc.factory.DAOFactory;
import com.abbcc.pojo.Hzsx;

public class TestHzsx {
	public static void main(String[] args) throws Exception {
//		 假设现在已有会员基本信息id
		int  hyjbxxid = 13;
		HzsxDAO hd = DAOFactory.getHzsxDAOInstance();
		Hzsx h = new Hzsx();
		
//		h.setHyjbxxid(hyjbxxid);
//		h.setXxsm("aa");
//		h.setTp1("aa");
//		h.setTp2("aa");
//		h.setTp3("aa");
//		h.setXxyxq("a");
//		h.setSqsj("aa");
//		h.setSfyx("a");
//		h.setScsj("aa");
//		hd.insert(h);

//		h.setHyjbxxid(hyjbxxid);
//		h.setXxsm("aa");
//		h.setTp1("陈");
//		h.setTp2("aa");
//		h.setTp3("陈");
//		h.setXxyxq("a");
//		h.setSqsj("陈");
//		h.setSfyx("a");
//		h.setScsj("aa");
//		hd.update(h);
		
//		h.setHyjbxxid(hyjbxxid);
//		hd.delete(hyjbxxid,11);
		
//		h = hd.queryById(hyjbxxid,10);
//		System.out.println(h.getScsj());
	
		List list = hd.queryAll(hyjbxxid, 2, 3);
		Iterator iter = list.iterator();
		while(iter.hasNext())
		{
			h = (Hzsx)iter.next();
			System.out.println(h.getHyjbxxid());
		}
	}
}
