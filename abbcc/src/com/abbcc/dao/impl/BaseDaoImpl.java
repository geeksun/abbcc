package com.abbcc.dao.impl;

import java.io.Serializable;
import java.util.Iterator;
import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.Query;
import org.springframework.orm.ObjectRetrievalFailureException;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.abbcc.dao.BaseDao;

public class BaseDaoImpl extends HibernateDaoSupport implements BaseDao{
	protected final Log log = LogFactory.getLog(getClass());

	 
	public void save(Object o) {
		getHibernateTemplate().save(o);
	}
	public void update(Object o) {
		getHibernateTemplate().update(o);
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
 
 
	public Query getQuery(String querySql, Serializable param) {
		Query q = this.getSession().createQuery(querySql);
		q.setParameter(0, param);
		return q;
	}

	public Object getObject(String querySql, Serializable param) {
		return this.getQuery(querySql, param).uniqueResult();
	}

	public Object getObject(String querySql, Serializable[] param) {
		return this.getQuery(querySql, param).uniqueResult();
	}

	public List getList(String querySql ) {
		return this.getQuery(querySql ).list();
	}
	public List getList(String querySql, Serializable param) {
		return this.getQuery(querySql, param).list();
	}

	public List getList(String querySql, Serializable[] param) {
		return this.getQuery(querySql, param).list();
	}

	public Query getQuery(String querySql, Serializable[] param) {
		Query query = this.getSession().createQuery(querySql);
		for (int i = 0; i < param.length; i++) {
			query.setParameter(i, param[i]);
		}
		return query;
	}

	public Query getQuery(String querySql) {
		return this.getSession().createQuery(querySql);
	}
	/**
	 * 根据paramters 拼装sql
	 * @param sql
	 * @param paramters
	 * @return
	 */
	protected String getSql(String sql ,List paramters){
		StringBuffer ret=new StringBuffer(sql);
		int size=paramters.size();
		if(size==1){
			ret.append(" =?");
		}else
		{
			ret.append(" in (");
			Iterator iter=paramters.iterator();
			int i=0;
			while(iter.hasNext()){
				i++;
				if(i==size)break;
				ret.append("?,"); 
				
			}
			ret.append("?)");
		}
		
		return ret.toString();
		
	}
	/**
	 * 设置 查询的 paramters
	 * @param startIndex 开始设置的位置
	 * @param query
	 * @param paramters
	 */
	protected void setParamter(int startIndex,Query query,List paramters){
		Iterator iter=paramters.iterator(); 
		while(iter.hasNext()){
			query.setParameter(startIndex, iter.next()); 
			startIndex++;
		} 
	}
	protected void setParamter(int startIndex,Query query,String[] paramters){
		for(int i=0;i<paramters.length;i++){
			query.setParameter(startIndex, paramters[i]); 
			startIndex++;
		} 
	}
	public void delete(Class clazz, Serializable id) {
		getHibernateTemplate().delete(getObject(clazz, id));
	}
	public void exectueSQLSql(String sql) {
		 this.getSession().createSQLQuery(sql).executeUpdate(); 
	}
	 
	
}
