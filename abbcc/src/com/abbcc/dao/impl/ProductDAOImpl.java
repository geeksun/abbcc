package com.abbcc.dao.impl;

import org.hibernate.Query;
import org.hibernate.SQLQuery;
 

import com.abbcc.dao.ProductDAO;
import com.abbcc.pojo.Product; 
import com.abbcc.util.product.TableUtil;

public class ProductDAOImpl extends BaseDaoImpl  implements ProductDAO  {

	 

	public Product getProductByStateAndProductTypeId(int state, String productTypeId) {
		String sql="from Product p where p.state=? and p.productTypeId=?";
		Query query=this.getQuery(sql);
		query.setParameter(0, state);
		query.setParameter(1, productTypeId);
		return (Product )query.uniqueResult();
	}

	public void addProduct(Product product) {
		this.save(product);
		  
	}

	public void excetueSaveProduct(String sql, String[] value) {
		 
		SQLQuery query=this.getSession().createSQLQuery(sql);
		this.setParamter(0, query, value);
		query.executeUpdate();
	}

}