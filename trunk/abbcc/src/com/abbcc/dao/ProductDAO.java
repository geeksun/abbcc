package com.abbcc.dao;

import com.abbcc.pojo.Product;

public interface ProductDAO extends BaseDao{
	 
	Product getProductByStateAndProductTypeId(int state, String productTypeId);

	void addProduct(Product product);

	void excetueSaveProduct(String sql, Object[] value);
	

	
}
