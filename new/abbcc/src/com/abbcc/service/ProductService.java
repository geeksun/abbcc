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

	//添加产品类目
	void addProductType(ProductType productType) throws AppException;

	//修改产品类目
	void updateProductType(ProductType productType) throws AppException;

	//删除产品类目，同时删除子类目
	void deleteProductTypeAndChildProductTypeById(int id) throws AppException;

	//取得一个产品类目
	ProductType getProductTypeById(int id) throws AppException;

	 
	//取得  相同parentId 产品类目列表
	List getProductTypeByParentId(int parentId);

	// 取得 产品
	Product getProductById(long id) throws AppException;
//	 取得 产品
	List<Product> getAllProductList( ) throws AppException;
	
	List<Product> getProductList(int state ) throws AppException;

	

	/**
	 * 取得所属产品类目的产品列表
	 * @param productTypeId
	 * @return
	 * @throws AppException
	 */
	List<Product> getProductListByProductTypeId(String productTypeId)
			throws AppException;

	/**
	 * 添加产品
	 * @param product
	 * @throws AppException
	 */
	void addProduct(Product product) throws AppException;

	/**
	 * 根据产品的使用状态和产品类目得到一个产品
	 * @param state
	 * @param productTypeId
	 * @return
	 * @throws AppException
	 */
	Product getProductByStateAndProductTypeId(int state, String productTypeId)
			throws AppException;

	/**
	 * 添加供求信息
	 * @param obj
	 * @param cpgqxx
	 * @param jytj
	 * @throws AppException
	 */
	void addProductInfo(ProductObject obj, Cpgqxx cpgqxx, Jytj jytj)
			throws AppException;

	/**
	 * 查询供求信息列表 
	 * @param userId 用户Id
	 * @param orderType 
	 * @param productName
	 * @param auditType
	 * @param overdue
	 * @param pagination
	 * @return
	 * @throws AppException
	 */
	List getProductInfoList(int userId, String orderType, String productName,
			String auditType, String overdue, Pagination pagination)
			throws AppException;

	
	/**
	 *  查询供求信息列表 
	 * @param orderType
	 * @param productName
	 * @param auditType
	 * @param overdue 
	 * @param pagination
	 * @return
	 * @throws AppException
	 */
	List getProductInfoList(String orderType, String productName,
			String auditType, String overdue, Pagination pagination)
			throws AppException;
	/**
	 * 更新产品的审核类型
	 * @param auditType
	 * @param productInfoIds
	 * @throws AppException
	 */
	void updateProductInfoAuditType(String auditType, long[] productInfoIds)
			throws AppException;
	
	/**
	 * 取得一条供求信息
	 * @param infoId
	 * @return
	 */
	ProductInfo getProductInfoById(long infoId);

	/**
	 * 根据productTypeId 取得级联菜单的一条记录列表
	 * @param ids
	 * @return
	 * @throws AppException
	 */
	public List<List<ProductType>> getTextAreaProductTypeListByIds(
			List<Integer> ids) throws AppException;

	/**
	 * 删除供求信息
	 * @param productInfoIds
	 * @param productPicPath
	 * @throws AppException
	 */
	void deleteProductInfoByIds(long[] productInfoIds, String productPicPath)
			throws AppException;

	/**
	 * 更新产品
	 * @param product
	 * @throws AppException
	 */
	void updateProduct(Product product) throws AppException;

	/**
	 * 更新产品状态
	 * @param product
	 * @throws AppException
	 */
	void updateProductState(Product product) throws AppException;

	/**
	 * 删除产品
	 * @param productId
	 * @throws AppException
	 */
	void deleteProductById(long productId) throws AppException;

	/**
	 * 更新供求信息
	 * @param obj
	 * @param cpgqxx
	 * @param jytj
	 * @throws AppException
	 */
	void updateProductInfo(ProductObject obj, Cpgqxx cpgqxx, Jytj jytj)
			throws AppException;

	/**
	 * 根据审核类型得到产品数量
	 * @param type
	 * @return
	 * @throws AppException
	 */
	long getProductCountByType(int type) throws AppException;

	/**
	 * 取得过期的产品数量
	 * @param userId
	 * @param type
	 * @return
	 * @throws AppException
	 */
	long getProductCountByType(long userId, int type) throws AppException;

}
