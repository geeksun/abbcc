package com.abbcc.dao.impl;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.abbcc.dao.TradeInfoDAO;
import com.abbcc.pojo.TradeInfo;

public class TradeInfoDaoImpl extends BaseDaoImpl implements TradeInfoDAO{
	private static final Log log = LogFactory.getLog(HyjbxxDAOImpl.class);
	public static final String TABLENAME = "table_name";
	public static final String PRODUCTID = "product_id";
	public static final String CATEGORYID = "category_id";
	public void delete(int tradeInfoId) {
		
	}

	public List findByProperty(String name) {
		return null;
	}

	public int findByProperty(String name, String pass) {
		return 0;
	}

	public TradeInfo queryById(int tradeInfoId) {
		return null;
	}

	public void save(TradeInfo trade) {
		
	}

	public void update(TradeInfo trade) {
		
	}

	public List getTableNameById(String id) {
		log.debug("finding TradeInfo instance with property: " + CATEGORYID + ", value: " + id);
		try{
			String queryString = "from TradeInfo as model where model." + CATEGORYID + "=?";
			return getHibernateTemplate().find(queryString,id);
		}catch(RuntimeException re) {
			log.error("find by property id failed", re);
			throw re;
		}
	}
}
