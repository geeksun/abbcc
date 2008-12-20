package com.abbcc.service.impl;

import java.util.List;

import com.abbcc.dao.ProductDAO;
import com.abbcc.dao.ProductTypeDAO;
import com.abbcc.pojo.ProductType;
import com.abbcc.service.ProductService;

public class ProductServiceImpl implements ProductService {

	private ProductDAO productDao;

	private ProductTypeDAO productTypeDao;

	public void addProductType(ProductType productType) {
		// TODO Auto-generated method stub
		
	}

	public void deleteProductTypeById(int id) {
		// TODO Auto-generated method stub
		
	}

	public List getChildProductTypeById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	public void getProductTypeById(int id) {
		// TODO Auto-generated method stub
		
	}

	public void updateProductType(ProductType productType) {
		// TODO Auto-generated method stub
		
	}

	public List getProductTypeByParentId(int parentId) {
		 
		return productTypeDao.getProductTypeByParentId(parentId);
	}

	public ProductDAO getProductDao() {
		return productDao;
	}

	public void setProductDao(ProductDAO productDao) {
		this.productDao = productDao;
	}

	public ProductTypeDAO getProductTypeDao() {
		return productTypeDao;
	}

	public void setProductTypeDao(ProductTypeDAO productTypeDao) {
		this.productTypeDao = productTypeDao;
	}

	 
}
