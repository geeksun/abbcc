package com.abbcc.dao;

import java.io.Serializable;
import java.util.List;

/**
 * 
 * @author geeksun
 *	����DAO interface
 */
public interface BaseDao {
	public List getObjects(Class clazz);
	// ���� ID �����û�
	public Object getObject(Class clazz,Serializable id);
	public void add(Object o);
	// ���� ID ɾ���û�
	public void delete(Class clazz,Serializable id);
	public void update(Object o);
	public void exectueSQLSql(String sql);
	  
}
