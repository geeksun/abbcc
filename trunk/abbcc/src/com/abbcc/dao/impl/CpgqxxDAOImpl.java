package com.abbcc.dao.impl;

import java.util.List;

import com.abbcc.dao.CpgqxxDAO;
import com.abbcc.factory.Globals;
import com.abbcc.pojo.Cpgqxx;
import com.abbcc.pojo.Pz;
import com.abbcc.util.JdbcTemplateUtil;

public class CpgqxxDAOImpl extends BaseDaoImpl  implements CpgqxxDAO {

	private String tableName="cpgqxx";
	 
	
	public void delete(int hyjbxxid, int cpgqxxid) throws Exception {
		  
	}
	
	 
	   
	public void insert(Cpgqxx cpgqxx) throws Exception {
		if(cpgqxx==null)return;
		Pz pz= this.updateAndGetPz(tableName);
		long id=pz.getRecnum();  
		long page=id/ Globals.COUNT;
		String sql = "INSERT INTO cpgqxx_" + page +  
				" (cpgqxxid,hyjbxxid,xxlx,cpmc,cpshlm, xxbt,  cpsxid," +
				" xxsm, tp1,  tp2,  tp3, xxyxq,  jytjid, sqsj, sfyx, scsj)" +
				" VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		 Object[] params=new Object[]{
		 (int)id ,cpgqxx.getHyjbxxid(),cpgqxx.getXxlx(),cpgqxx.getCpmc()
		 ,cpgqxx.getCpshlm(),cpgqxx.getXxbt(),cpgqxx.getCpsxid()
		 ,cpgqxx.getXxsm(),cpgqxx.getTp1(),cpgqxx.getTp2(),cpgqxx.getTp3()
		 ,cpgqxx.getXxyxq(),cpgqxx.getJytjid(),cpgqxx.getSqsj()
		 ,cpgqxx.getSfyx(),cpgqxx.getScsj()
				
		};
		
		JdbcTemplateUtil.updateObject(sql,params);
		this.updateTableCount(tableName);
	}

	public List queryAll(int hyjbxxid, int currentPage, int lineSize) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	public Cpgqxx queryById(int hyjbxxid, int cpgqxxid) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	public void update(Cpgqxx cpgqxx) throws Exception {
		// TODO Auto-generated method stub
		
	} }
