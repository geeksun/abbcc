package com.abbcc.test;

import java.util.Iterator;
import java.util.List;

import com.abbcc.dao.ZpxxDAO;
import com.abbcc.factory.DAOFactory;
import com.abbcc.pojo.Zpxx;

public class TestZpxx {
	public static void main(String[] args) throws Exception {
	// 假设现在已有会员基本信息id
	int  hyjbxxid = 14;
	ZpxxDAO cd = DAOFactory.getZpxxDAOInstance();
	Zpxx c = new Zpxx();
	
//	c.setHyjbxxid(hyjbxxid);
//	c.setZpzt("aa");
//	c.setYxq("a");
//	c.setHy("aa");
//	c.setGshy("aa");
//	c.setGzdd("aa");
//	c.setZprs("aa");
//	c.setGznx("aa");
//	c.setXzsp("aa");
//	c.setZwyq("aa");
//	c.setLxfs("aa");
//	c.setLxr("aa");
//	c.setBz("aa");
//	c.setSqsj("aa");
//	c.setSfyx("a");
//	c.setScsj("aa");
//	cd.insert(c);
	
//	c.setHyjbxxid(hyjbxxid);
//	c.setZpxxid(11);
//	c.setZpzt("aa");
//	c.setYxq("a");
//	c.setHy("aa");
//	c.setGshy("陈");
//	c.setGzdd("aa");
//	c.setZprs("陈");
//	c.setGznx("aa");
//	c.setXzsp("aa");
//	c.setZwyq("陈");
//	c.setLxfs("aa");
//	c.setLxr("陈");
//	c.setBz("aa");
//	c.setSqsj("aa");
//	c.setSfyx("a");
//	c.setScsj("aa");
//	cd.update(c);
	
//	c.setZpxxid(12);
//	cd.delete(hyjbxxid,c.getZpxxid());
	
//	c.setZpxxid(11);
//	c = cd.queryById(hyjbxxid,c.getZpxxid());
//	System.out.println(c.getGshy());
	
	List list = cd.queryAll(hyjbxxid, 1, 3);
	Iterator iter = list.iterator();
	while(iter.hasNext())
	{
		c = (Zpxx)iter.next();
		System.out.println(c.getZpxxid());
	}
}
}
