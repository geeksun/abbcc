package com.abbcc.service;

import java.util.List;

import com.abbcc.pojo.Product;
import com.abbcc.pojo.ProductType;
import com.abbcc.util.product.ProductObject;
 
 


public interface ProductService {

	void addProductType(ProductType productType);

	void updateProductType(ProductType productType);

	void deleteProductTypeAndChildProductTypeById(int id);

	ProductType getProductTypeById(int id);

	List getChildProductTypeById(int id);
	
	List getProductTypeByParentId(int parentId);
	//product
	Product getProductById(long id);
	
	void addProduct(Product product);

	Product getProductByStateAndProductTypeId(int state,String productTypeId);

	void addProductInfo(ProductObject obj);
	
	
}
