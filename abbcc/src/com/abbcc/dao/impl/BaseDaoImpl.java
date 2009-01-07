package com.abbcc.dao.impl;

import java.io.Serializable;
import java.util.Date;
import java.util.Iterator;
import java.util.List;


import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.springframework.orm.ObjectRetrievalFailureException;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.abbcc.dao.BaseDao;
import com.abbcc.factory.HibernateSessionFactory;
import com.abbcc.pojo.Pz;

public class BaseDaoImpl extends HibernateDaoSupport implements BaseDao{
	protected final Log log = LogFactory.getLog(getClass());

	 
	public void add(Object o) {
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
	 * 根据paramters 拼装sql
	 * @param sql
	 * @param paramters
	 * @return
	 */
	protected String getSql(String sql ,Object[] paramters){
		StringBuffer ret=new StringBuffer(sql);
		int size=paramters.length;
		if(size==1){
			ret.append(" =?");
		}else
		{
			ret.append(" in (");
			for(int i=0;i<paramters.length;i++){
				if(i==size-1)break;
				ret.append("?,"); 
			} 
			ret.append("?)");
		}
		
		return ret.toString();
		
	}
	/**
	 * 根据paramters 拼装sql
	 * @param sql
	 * @param paramters
	 * @return
	 */
	protected String getSql(String sql ,long[] paramters){
		StringBuffer ret=new StringBuffer(sql);
		int size=paramters.length;
		if(size==1){
			ret.append(" =?");
		}else
		{
			ret.append(" in (");
			for(int i=0;i<paramters.length;i++){
				if(i==size-1)break;
				ret.append("?,"); 
			} 
			ret.append("?)");
		}
		
		return ret.toString();
		
	}
	protected String getSql(String sql ,int[] paramters){
		StringBuffer ret=new StringBuffer(sql);
		int size=paramters.length;
		if(size==1){
			ret.append(" =?");
		}else
		{
			ret.append(" in (");
			for(int i=0;i<paramters.length;i++){
				if(i==size-1)break;
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
	 
	protected void setParamter(int startIndex,Query query,Object[] paramters){
		for(int i=0;i<paramters.length;i++){
			query.setParameter(startIndex, paramters[i]); 
			startIndex++;
		} 
	}
	protected void setLongParamter(int startIndex,Query query,long[] paramters){
		for(int i=0;i<paramters.length;i++){
			query.setLong (startIndex, paramters[i]); 
			startIndex++;
		} 
	}
	protected void setIntegerParamter(int startIndex,Query query,int[] paramters){
		for(int i=0;i<paramters.length;i++){
			query.setInteger (startIndex, paramters[i]); 
			startIndex++;
		} 
	}
	protected void setParamter(int startIndex,SQLQuery query,Object[] paramters){
		for(int i=0;i<paramters.length;i++){
			Object obj=paramters[i];
			if(obj==null){
				query.setParameter(startIndex, null);
			}else{
				if(obj instanceof String){
					query.setString(startIndex, (String)obj);
				}else if(obj instanceof Integer){
					query.setInteger(startIndex, (Integer)obj);
				}else if(obj instanceof Long){
					query.setLong(startIndex, (Long)obj);
				}else if(obj instanceof Date){
					query.setTime(startIndex, (Date)obj);
				}
			} 
			startIndex++;
		} 
	}
	public void delete(Class clazz, Serializable id) {
		getHibernateTemplate().delete(getObject(clazz, id));
	}
	public void exectueSQLSql(String sql) {
		 this.getSession().createSQLQuery(sql).executeUpdate(); 
	}
	
	public Pz getPzByTableName(String tableName) {
		
		 String sql="from Pz p where p.tablename=?";
		 Query query=this.getQuery(sql);
		 query.setParameter(0, tableName); 
		 return (Pz)query.uniqueResult();
	}

	public void updatePz(Pz pz) {
		 this.update(pz); 
	}
	
	public void updateTableID(String tableName) {
		 String sql="update Pz set recnum=recnum+1 where tablename=?";
		 Query query=this.getQuery(sql);
		 query.setParameter(0, tableName); 
		 query.executeUpdate(); 
	}
	public void updateTableCount(String tableName) {
		 String sql="update Pz set maxCount=maxCount+1 where tablename=?";
		 Query query=this.getQuery(sql);
		 query.setParameter(0, tableName); 
		 query.executeUpdate(); 
	}
 
	public Pz updateAndGetPz(String tableName) {
			this.updateTableID(tableName);
			return this.getPzByTableName(tableName);
	}
	public static void main(String[] args){
	//	Session session=HibernateSessionFactory.getSession();
		
		BaseDaoImpl base=new BaseDaoImpl();
		String sql="dd";
		String[] paramters=new String[]{"",""};
		String temp=base.getSql(sql, paramters);
	 System.out.println(temp);
	}
}
