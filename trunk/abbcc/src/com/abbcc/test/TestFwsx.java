package com.abbcc.test;

import java.util.Iterator;
import java.util.List;

import com.abbcc.dao.FwsxDAO;
import com.abbcc.factory.DAOFactory;
import com.abbcc.pojo.Fwsx;

public class TestFwsx {

	/**
	 * @param args
	 */
	public static void main(String[] args) throws Exception {
//		 �����������л�Ա������Ϣid
		int  hyjbxxid = 13;
		FwsxDAO fd = null;//DAOFactory.getFwsxDAOInstance();
		Fwsx f = new Fwsx();
		
//		f.setHyjbxxid(hyjbxxid);
//		f.setXxsm("aa");
//		f.setTp1("aa");
//		f.setTp2("aa");
//		f.setTp3("aa");
//		f.setXxyxq("a");
//		f.setSqsj("aa");
//		f.setSfyx("a");
//		f.setScsj("aa");
//		fd.insert(f);
		
//		f.setHyjbxxid(hyjbxxid);
//		f.setFwsxid(8);
//		f.setXxsm("������");
//		f.setTp1("������");
//		f.setTp2("aa");
//		f.setTp3("������");
//		f.setXxyxq("a");
//		f.setSqsj("������");
//		f.setSfyx("a");
//		f.setScsj("aa");
//		fd.update(f);
		
//		f.setFwsxid(8);
//		fd.delete(hyjbxxid,f.getFwsxid());
		
//		f.setFwsxid(9);
//		f = fd.queryById(hyjbxxid,f.getFwsxid());
//		System.out.println(f.getScsj());
		
		List list = fd.queryAll(hyjbxxid, 2, 3);
		Iterator iter = list.iterator();
		while(iter.hasNext())
		{
			f = (Fwsx)iter.next();
			System.out.println(f.getFwsxid());
		}
	}

}
