package com.abbcc.dao.impl;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.abbcc.dao.TradeInfoDAO;
import com.abbcc.pojo.TradeInfo;

public class TradeInfoDaoImpl extends BaseDaoImpl implements TradeInfoDAO{
	private static final Log log = LogFactory.getLog(HyjbxxDAOImpl.class);
	public static final String TABLENAME = "tableName";
	public static final String PRODUCTID = "productId";
	public static final String CATEGORYID = "categoryId";
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

	/*public List getMemberByName(String customer) {
		log.debug("finding Hyjbxx instance with property: " + HYDLM + ", value: " + customer);
		try{
			String queryString = "from Hyjbxx as model where model." + HYDLM + "= ?";
			return getHibernateTemplate().find(queryString, customer);
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}*/
	
	public List getTableNameById(String categoryId) {
		log.debug("finding TradeInfo instance with property: " + CATEGORYID + ", value: " + categoryId);
		try{
			//String queryString = "from TradeInfo as model where model." + CATEGORYID + "=?";
			String queryString = "from TradeInfo as model where model." + CATEGORYID + "= ?";
			//return getHibernateTemplate().find(queryString,id);
			return getHibernateTemplate().find(queryString,categoryId);
		}catch(RuntimeException re) {
			log.error("find by property id failed", re);
			throw re;
		}
	}
}
