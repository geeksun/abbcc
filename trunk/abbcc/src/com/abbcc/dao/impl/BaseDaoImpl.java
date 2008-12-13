package com.abbcc.dao.impl;

import java.io.Serializable;
import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.orm.ObjectRetrievalFailureException;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.abbcc.dao.BaseDao;

public class BaseDaoImpl extends HibernateDaoSupport implements BaseDao{
protected final Log log = LogFactory.getLog(getClass());
	
	public void delete(Class clazz, Serializable id) {
		getHibernateTemplate().delete(getObject(clazz, id));		
	 
	}
	public Object getObject(Class clazz, Serializable id) {
		 Object o = getHibernateTemplate().get(clazz, id);
	        if (o == null) {
	            throw new ObjectRetrievalFailureException(clazz, id);
	        }
	        return o;
	}
	public List getObjects(Class clazz) {
		return getHibernateTemplate().loadAll(clazz);
	}
	public void save(Object o) {
		getHibernateTemplate().save(o);
	}
	public void update(Object o) {
		getHibernateTemplate().saveOrUpdate(o);
	}
}
