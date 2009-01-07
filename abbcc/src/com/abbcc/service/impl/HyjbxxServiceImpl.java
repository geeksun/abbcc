package com.abbcc.service.impl;

import java.util.List;

import com.abbcc.common.AppConstants;
import com.abbcc.dao.GsjbxxDAO;
import com.abbcc.dao.GsxxxxDAO;
import com.abbcc.dao.HyjbxxDAO;
import com.abbcc.pojo.Gsjbxx;
import com.abbcc.pojo.Gsxxxx;
import com.abbcc.pojo.Hyjbxx;
import com.abbcc.service.HyjbxxService;

public class HyjbxxServiceImpl implements HyjbxxService { 
	private HyjbxxDAO hyjbxxDao;
	private GsjbxxDAO gsjbxxDao;
	private GsxxxxDAO gsxxxxDao;

	public void setGsxxxxDao(GsxxxxDAO gsxxxxDao) {
		this.gsxxxxDao = gsxxxxDao;
	}

	public void setGsjbxxDao(GsjbxxDAO gsjbxxDao) {
		this.gsjbxxDao = gsjbxxDao;
	}

	public void setHyjbxxDao(HyjbxxDAO hyjbxxDao) {
		this.hyjbxxDao = hyjbxxDao;
	}

	public int login(String name, String pass) {
		int validate = hyjbxxDao.findByProperty(name,pass);
		return validate;
	}

	public boolean checkName(String hydlm) {
		List list = hyjbxxDao.findByName(hydlm);
		int init = list.size();
		//System.out.println(init);
		if(init>0){
			return true;
		} else {
			return false;
		}
	}

	public List getMemberByName(String hyjbxxid) { 
		//List list = hyjbxxDao.getMemberByName(customer);
		List list = gsjbxxDao.getMemberByName(hyjbxxid);
		return  list;
	}
	
	public int add(Hyjbxx hyjbxx) { 
		int result = hyjbxxDao.add(hyjbxx);  
		return result;
	}

	public int add(Gsjbxx gsjbxx) {
		int result = gsjbxxDao.add(gsjbxx);  
		return result;
	}
	
	/*public int getIdByName(String hydlm) {
		int result = hyjbxxDao.getIdByName(hydlm);
		return result;
	}*/

	public String getIdByName(String hydlm) {
		String result = hyjbxxDao.getIdByName(hydlm);
		return result;
	}
	
	public int add(Hyjbxx hyjbxx, Gsjbxx gsjbxx) {
		int flag1 = hyjbxxDao.add(hyjbxx);
		int flag2 = gsjbxxDao.add(gsjbxx);
		if(flag1>0&&flag2>0){
			return AppConstants.validate;
		}
		return AppConstants.invalidate;
	}

	public List getMemberById(int hyjbxxid) {
		
		return null;
	}

	public List getMemberByName(int hyjbxxid) {
		List list = gsjbxxDao.getMemberById(hyjbxxid);
		return  list;
	}

	public List getMemberById(String hyjbxxid) {
		List list = gsjbxxDao.getMemberByName(hyjbxxid);
		return  list;
	}

	public Hyjbxx getCustomerByName(String hydlm) {
		List list = hyjbxxDao.findByName(hydlm);
		Hyjbxx hyj = (Hyjbxx)list.get(0);
		return hyj;
	}

	public Hyjbxx getCustomerById(String hyjbxxid) {
		Hyjbxx hyjbxx = hyjbxxDao.findById(hyjbxxid);
		return hyjbxx;
	}

	public void update(Hyjbxx hyjbxx) {
		
		
	}

	public void update(Hyjbxx hyjbxx, Gsjbxx gsjbxx) {
		hyjbxxDao.update(hyjbxx);
		gsjbxxDao.update(gsjbxx);
		
	}

	public void add(Gsxxxx gsxxxxx) {
		gsxxxxDao.add(gsxxxxx);
	}

	public Gsxxxx getGsxxxxById(String hyjbxxid) {
		return gsxxxxDao.getGsxxxxById(hyjbxxid);
	}

}
