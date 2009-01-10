package com.abbcc.service.impl;

import java.util.List;
import com.abbcc.pojo.Hyjbxx;
import com.abbcc.pojo.Gsjbxx;
import com.abbcc.pojo.Gsxxxx;
import com.abbcc.dao.HyjbxxDAO;
import com.abbcc.dao.GsjbxxDAO;
import com.abbcc.dao.GsxxxxDAO;
import com.abbcc.common.AppConstants;
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
		if(init>0){
			return true;
		} else {
			return false;
		}
	}

	public List getMemberByName(String hyjbxxid) { 
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
	
	public String getIdByName(String hydlm) {
		String result = hyjbxxDao.getIdByName(hydlm);
		return result;
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

	public void update(Gsxxxx gsxxxx) {
		gsxxxxDao.update(gsxxxx);
	}

	public int add(Hyjbxx hyjbxx, Gsjbxx gsjbxx, Gsxxxx gsxxxx) {
		int flag1 = hyjbxxDao.add(hyjbxx);
		int flag2 = gsjbxxDao.add(gsjbxx);
		int flag3 = gsxxxxDao.add(gsxxxx);
		if(flag1>0&&flag2>0&&flag3>0){
			return AppConstants.validate;
		}
		return AppConstants.invalidate; 
	}

	public void addLoseObject(Gsxxxx gsxxxx) {
		gsxxxxDao.addLoseObject(gsxxxx);
	}
	
}
