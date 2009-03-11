package com.abbcc.dao;

import java.io.Serializable;
import java.util.List;

/**
 * 
 * @author geeksun
 *	基本DAO interface
 */
public interface BaseDao {
	public List getObjects(Class clazz);
	// 根据 ID 加载用户
	public Object getObject(Class clazz,Serializable id);
	public void add(Object o);
	// 根据 ID 删除用户
	public void delete(Class clazz,Serializable id);
	public void update(Object o);
	public void exectueSQLSql(String sql);
	  
}
