package com.abbcc.service;

import java.util.List;

import com.abbcc.pojo.ProductType;
 


public interface ProductService {

	void addProductType(ProductType productType);

	void updateProductType(ProductType productType);

	void deleteProductTypeAndChildProductTypeById(int id);

	ProductType getProductTypeById(int id);

	List getChildProductTypeById(int id);
	
	List getProductTypeByParentId(int parentId);

}
