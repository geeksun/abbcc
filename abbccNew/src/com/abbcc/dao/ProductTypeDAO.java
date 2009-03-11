package com.abbcc.dao;

import java.util.List;

import com.abbcc.pojo.ProductType;

public interface ProductTypeDAO {

	
	List getProductTypeByParentId(int parentId);

	void addProductType(ProductType productType);

	void updateProductType(ProductType productType);

	ProductType getProductTypeById(int id);

	void deleteProductTypeByIdList(List ids);

 
	List<ProductType> getProductTypeByIdList(List idsList);

}
