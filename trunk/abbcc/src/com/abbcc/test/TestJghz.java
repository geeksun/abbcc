package com.abbcc.test;

import java.util.Iterator;
import java.util.List;

import com.abbcc.dao.JghzDAO;
import com.abbcc.factory.DAOFactory;
import com.abbcc.pojo.Jghz;

public class TestJghz {
	public static void main(String[] args) throws Exception {
	// �����������л�Ա������Ϣid
	int  hyjbxxid = 14;
	JghzDAO cd = null;// DAOFactory.getJghzDAOInstance();
	Jghz c = new Jghz();
	
//	c.setHyjbxxid(hyjbxxid);
//	c.setJglx("a");
//	c.setJgmc("aa");
//	c.setJgsslm("aa");
//	c.setSqsj("aa");
//	c.setSfyx("a");
//	c.setScsj("aa");
//	cd.insert(c);
	
//	c.setHyjbxxid(hyjbxxid);
//	c.setJghzid(10);
//	c.setJglx("a");
//	c.setJgmc("aa");
//	c.setJgsslm("��");
//	c.setSqsj("aa");
//	c.setSfyx("a");
//	c.setScsj("��");
//	cd.update(c);
	
//	cd.delete(hyjbxxid,11);
	
//	c.setJghzid(10);
//	c = cd.queryById(hyjbxxid,c.getJghzid());
//	System.out.println(c.getScsj());
	
	List list = cd.queryAll(hyjbxxid, 3, 3);
	Iterator iter = list.iterator();
	while(iter.hasNext())
	{
		c = (Jghz)iter.next();
		System.out.println(c.getJghzid());
	}
}
}
