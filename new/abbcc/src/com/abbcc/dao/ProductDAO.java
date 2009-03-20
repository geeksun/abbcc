package com.abbcc.dao;

import java.util.List;
import java.util.Map;

import com.abbcc.exception.DaoException;
import com.abbcc.pojo.Product;


public interface ProductDAO extends BaseDao{
	 
	Product getProductByStateAndProductTypeId(int state, String productTypeId) throws DaoException;;

	void addProduct(Product product) throws DaoException;;

	void excetueSaveProduct(String sql, Object[] value) throws DaoException;;
	
	Object excetueSelectProduct(String sql, Object[] value) throws DaoException;;

	List<Product> getProductListByProductTypeId(String productTypeId) throws DaoException;

	Product getProductById(long id)throws DaoException;

	List<Product> getAllProductList() throws DaoException;

	List<Product> getProductList(int state)throws DaoException;
	
	
}
