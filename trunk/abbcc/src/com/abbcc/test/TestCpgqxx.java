package com.abbcc.test;

import java.util.Iterator;
import java.util.List;

import com.abbcc.dao.CpgqxxDAO;
import com.abbcc.factory.DAOFactory;
import com.abbcc.factory.PubAbbcc;
import com.abbcc.pojo.Cpgqxx_bak2;

public class TestCpgqxx {
	public static void main(String[] args) throws Exception {
		// �����������л�Ա����Ϣid
		PubAbbcc pa = new PubAbbcc();
		// int hyjbxxid = pa.getRecNum("cpgqxx");
		CpgqxxDAO cd = null;//nullDAOFactory.getCpgqxxDAOInstance();
		Cpgqxx_bak2 c = new Cpgqxx_bak2();

		// c.setHyjbxxid(hyjbxxid);
		// c.setXxlx("a");
		// c.setCpmc("aa");
		// c.setCpshlm("aa");
		// c.setXxbt("aa");
		// c.setCpsxid("a");
		// c.setXxsm("a");
		// c.setTp1("aa");
		// c.setTp2("aa");
		// c.setTp3("aa");
		// c.setXxyxq("a");
		// c.setJytjid("aa");
		// c.setSqsj("aa");
		// c.setSfyx("a");
		// c.setScsj("aa");
		// cd.insert(c);

		/*
		 * int hyjbxxid = 0; c.setHyjbxxid(hyjbxxid); c.setCpgqxxid(1);
		 * c.setXxlx("b"); c.setCpmc("bb"); c.setCpshlm("bb"); c.setXxbt("bb");
		 * c.setCpsxid("b"); c.setXxsm("b"); c.setTp1("bb"); c.setTp2("bb");
		 * c.setTp3("bb"); c.setXxyxq("b"); c.setJytjid("bb"); c.setSqsj("bb");
		 * c.setSfyx("b"); c.setScsj("bb"); cd.update(c);
		 */

		// int hyjbxxid=4;
		// c.setCpgqxxid(2);
		// cd.delete(hyjbxxid,c.getCpgqxxid());
		// c.setCpgqxxid(17);
		// c = cd.queryById(hyjbxxid,c.getCpgqxxid());
		// System.out.println(c.getScsj());

		List list = cd.queryAll(4, 2, 3);
		Iterator iter = list.iterator();
		while (iter.hasNext()) {
			c = (Cpgqxx_bak2) iter.next();
			System.out.println(c.getCpgqxxid());
		}
	}
}
