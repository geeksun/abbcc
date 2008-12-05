package com.abbcc.service.impl;

import java.util.List;

import com.abbcc.service.CheckService;
import com.abbcc.dao.HyjbxxDAO;
import com.abbcc.factory.DAOFactory;
import com.abbcc.pojo.Hyjbxx;

public class CheckSerivceImpl implements CheckService {
	//private Hyjbxx hyj;
	private HyjbxxDAO hyj = DAOFactory.getHyjbxxDAOInstance();
	private static CheckService cs;
	/*public boolean checkName(String name) {
		int init = hyj.findByName(name);
		if(init>0){
			return true;
		} else {
			return false;
		}
	}*/
	public static CheckService getInstance(){
		if(cs==null){
			cs = new CheckSerivceImpl();
		}
		return  cs;   
	}
}
