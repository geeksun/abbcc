package com.abbcc.dao.impl;

import java.util.List;

import org.hibernate.Query;

import com.abbcc.dao.ProductTypeDAO;
import com.abbcc.pojo.ProductType;

public class ProductTypeDAOImpl extends BaseDaoImpl implements ProductTypeDAO{

	public List getProductTypeByParentId(int parentId) {
		String sql="from ProductType p where p.parentId=? order by p.priority asc";
		Query query=this.getQuery(sql);
		query.setParameter(0, parentId);
		return query.list();
	}

	public void addProductType(ProductType productType) {
		this.add(productType);
		
	}

	public void updateProductType(ProductType productType) {
		this.update(productType);
		
	}

	public ProductType getProductTypeById(int id) {
		String sql="from ProductType p where p.id=?";
		Query query=this.getQuery(sql);
		query.setParameter(0, id);
		return (ProductType)query.uniqueResult();
		 
	}

	public void deleteProductTypeByIdList(List ids) {
		 if(ids==null)return ;
		 
		 String sql="delete from ProductType p where p.id";
		sql= this.getSql(sql, ids);
		Query query=this.getQuery(sql);
		this.setParamter(0, query, ids);
		query.executeUpdate();
	}

}
