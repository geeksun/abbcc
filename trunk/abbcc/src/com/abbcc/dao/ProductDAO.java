package com.abbcc.dao;

import com.abbcc.pojo.Product;

public interface ProductDAO {
	 
	Product getProductByStateAndProductTypeId(int state, String productTypeId);

	void addProduct(Product product);

	void excetueSaveProduct(String sql, String[] value);
	
}
