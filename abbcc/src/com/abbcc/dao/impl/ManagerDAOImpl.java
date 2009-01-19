package com.abbcc.dao.impl;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.abbcc.common.AppConstants;
import com.abbcc.dao.ManagerDAO;

public class ManagerDAOImpl extends BaseDaoImpl implements ManagerDAO {
	private static final Log log = LogFactory.getLog(ManagerDAOImpl.class);
	
	public int findByProperty(String managerName, String pass) {
		log.info("Manager "+managerName+" is logining system platform");
		String sql = "select m.password from Manager m where m.manager_name = ?";
		List list = getHibernateTemplate().find(sql,managerName);
		if(list.size()==1){
			String mm = (String) list.get(0);
			if(mm.equals(pass)){
				return AppConstants.validate;
			}
		}
		log.error("find Manager instance by managerName:"+managerName);
		return AppConstants.invalidate;
	}

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
