package com.abbcc.dao.impl;

import java.util.List;

import org.hibernate.Query;

import com.abbcc.dao.ProductTypeDAO;

public class ProductTypeDAOImpl extends BaseDaoImpl implements ProductTypeDAO{

	public List getProductTypeByParentId(int parentId) {
		String sql="from ProductType p where p.parentId=?";
		Query query=this.getQuery(sql);
		query.setParameter(0, parentId);
		return query.list();
	}

}
