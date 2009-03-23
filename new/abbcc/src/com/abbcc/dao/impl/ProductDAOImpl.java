package com.abbcc.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SQLQuery;

import com.abbcc.dao.ProductDAO;
import com.abbcc.exception.DaoException;
import com.abbcc.pojo.Product;

public class ProductDAOImpl extends BaseDaoImpl  implements ProductDAO  {

	 

	public Product getProductByStateAndProductTypeId(int state, String productTypeId) {
		String sql="from Product p where p.state=? and p.productTypeId=?";
		Query query=this.getQuery(sql);
		query.setParameter(0, state);
		query.setParameter(1, productTypeId);
		return (Product )query.uniqueResult();
	}

	public void addProduct(Product product) {
		this.add(product);
		  
	}

	public void excetueSaveProduct(String sql, Object[] value) {
		 
		
		//JdbcTemplateUtil.updateObject(sql,value );
		SQLQuery query=this.getSession().createSQLQuery(sql);
		this.setParamter(0, query, value);
		 query.executeUpdate();
	}

	public Object excetueSelectProduct(String sql,  Object[] value) {
		SQLQuery query=this.getSession().createSQLQuery(sql);
		this.setParamter(0, query, value);
		Object object=query.uniqueResult();
	 
		
		return object;
	}

	public List<Product> getProductListByProductTypeId(String productTypeId) throws DaoException {
		String sql="from Product p where  p.productTypeId=? order by p.state ,p.createTime desc";
		Query query=this.getQuery(sql); 
		query.setParameter(0, productTypeId);
		return  query.list();
	}

	public Product getProductById(long id) throws DaoException {
		String sql="from Product p where  p.id=?";
		Query query=this.getQuery(sql); 
		query.setParameter(0, id);
		return  (Product)query.uniqueResult();
	}

	public List<Product> getAllProductList() throws DaoException {
		String sql="from Product";
		Query query=this.getQuery(sql); 
	 
		return  query.list() ;
	}

	public List<Product> getProductList(int state) throws DaoException {
		String sql="from Product p where p.state=?";
		Query query=this.getQuery(sql); 
		query.setInteger(0, state);
		return  query.list() ;
	}

 
}
