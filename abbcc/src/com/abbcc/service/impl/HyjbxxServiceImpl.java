package com.abbcc.service.impl;

import java.util.List;

import com.abbcc.dao.GsjbxxDAO;
import com.abbcc.dao.HyjbxxDAO;
import com.abbcc.pojo.Gsjbxx;
import com.abbcc.pojo.Hyjbxx;
import com.abbcc.service.HyjbxxService;

public class HyjbxxServiceImpl implements HyjbxxService {
	private HyjbxxDAO hyjbxxDao;
	private GsjbxxDAO gsjbxxDao;

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

	public int save(Hyjbxx hy) { 
		int result = hyjbxxDao.insert(hy);
		return result;
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

	public List getMemberByName(String customer) { 
		List list = hyjbxxDao.getMemberByName(customer);
		return  list;
	}

	public int save(Gsjbxx gsjbxx) {
		int result = gsjbxxDao.insert(gsjbxx); 
		return result;
	}

}