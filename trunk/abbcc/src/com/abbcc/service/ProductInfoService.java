package com.abbcc.service;

import java.util.List;

import com.abbcc.exception.AppException;
import com.abbcc.pojo.Cpgqxx;
import com.abbcc.pojo.Jytj;
import com.abbcc.pojo.Product;
import com.abbcc.pojo.ProductType;
import com.abbcc.util.pagination.Pagination;
import com.abbcc.util.product.ProductInfo;
import com.abbcc.util.product.ProductObject;
 
 



public interface ProductService {

	void addProductType(ProductType productType)throws AppException;

	void updateProductType(ProductType productType)throws AppException;

	void deleteProductTypeAndChildProductTypeById(int id)throws AppException;

	ProductType getProductTypeById(int id)throws AppException;

	List getChildProductTypeById(int id)throws AppException;
	
	List getProductTypeByParentId(int parentId);
	//product
	Product getProductById(long id)throws AppException;
	
	void addProduct(Product product)throws AppException;

	Product getProductByStateAndProductTypeId(int state,String productTypeId)throws AppException ;

 	
	void addProductInfo(ProductObject obj,Cpgqxx cpgqxx,Jytj jytj)throws AppException;

 
	List getProductInfoList(int userId, String orderType, String productName, String auditType, String overdue,Pagination pagination) throws AppException;
	
	List getProductInfoList(  String orderType, String productName, String auditType, String overdue,Pagination pagination) throws AppException;

	void updateProductInfoAuditType(String auditType, long[] productInfoIds)throws AppException;

	ProductInfo getProductInfoById(long infoId);
	public List<List<ProductType>> getTextAreaProductTypeListByIds(List<Integer> ids)throws AppException;
	
}
