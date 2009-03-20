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

	//��Ӳ�Ʒ��Ŀ
	void addProductType(ProductType productType) throws AppException;

	//�޸Ĳ�Ʒ��Ŀ
	void updateProductType(ProductType productType) throws AppException;

	//ɾ����Ʒ��Ŀ��ͬʱɾ������Ŀ
	void deleteProductTypeAndChildProductTypeById(int id) throws AppException;

	//ȡ��һ����Ʒ��Ŀ
	ProductType getProductTypeById(int id) throws AppException;

	 
	//ȡ��  ��ͬparentId ��Ʒ��Ŀ�б�
	List getProductTypeByParentId(int parentId);

	// ȡ�� ��Ʒ
	Product getProductById(long id) throws AppException;
//	 ȡ�� ��Ʒ
	List<Product> getAllProductList( ) throws AppException;
	
	List<Product> getProductList(int state ) throws AppException;

	

	/**
	 * ȡ��������Ʒ��Ŀ�Ĳ�Ʒ�б�
	 * @param productTypeId
	 * @return
	 * @throws AppException
	 */
	List<Product> getProductListByProductTypeId(String productTypeId)
			throws AppException;

	/**
	 * ��Ӳ�Ʒ
	 * @param product
	 * @throws AppException
	 */
	void addProduct(Product product) throws AppException;

	/**
	 * ���ݲ�Ʒ��ʹ��״̬�Ͳ�Ʒ��Ŀ�õ�һ����Ʒ
	 * @param state
	 * @param productTypeId
	 * @return
	 * @throws AppException
	 */
	Product getProductByStateAndProductTypeId(int state, String productTypeId)
			throws AppException;

	/**
	 * ��ӹ�����Ϣ
	 * @param obj
	 * @param cpgqxx
	 * @param jytj
	 * @throws AppException
	 */
	void addProductInfo(ProductObject obj, Cpgqxx cpgqxx, Jytj jytj)
			throws AppException;

	/**
	 * ��ѯ������Ϣ�б� 
	 * @param userId �û�Id
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
	 *  ��ѯ������Ϣ�б� 
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
	 * ���²�Ʒ���������
	 * @param auditType
	 * @param productInfoIds
	 * @throws AppException
	 */
	void updateProductInfoAuditType(String auditType, long[] productInfoIds)
			throws AppException;
	
	/**
	 * ȡ��һ��������Ϣ
	 * @param infoId
	 * @return
	 */
	ProductInfo getProductInfoById(long infoId);

	/**
	 * ����productTypeId ȡ�ü����˵���һ����¼�б�
	 * @param ids
	 * @return
	 * @throws AppException
	 */
	public List<List<ProductType>> getTextAreaProductTypeListByIds(
			List<Integer> ids) throws AppException;

	/**
	 * ɾ��������Ϣ
	 * @param productInfoIds
	 * @param productPicPath
	 * @throws AppException
	 */
	void deleteProductInfoByIds(long[] productInfoIds, String productPicPath)
			throws AppException;

	/**
	 * ���²�Ʒ
	 * @param product
	 * @throws AppException
	 */
	void updateProduct(Product product) throws AppException;

	/**
	 * ���²�Ʒ״̬
	 * @param product
	 * @throws AppException
	 */
	void updateProductState(Product product) throws AppException;

	/**
	 * ɾ����Ʒ
	 * @param productId
	 * @throws AppException
	 */
	void deleteProductById(long productId) throws AppException;

	/**
	 * ���¹�����Ϣ
	 * @param obj
	 * @param cpgqxx
	 * @param jytj
	 * @throws AppException
	 */
	void updateProductInfo(ProductObject obj, Cpgqxx cpgqxx, Jytj jytj)
			throws AppException;

	/**
	 * ����������͵õ���Ʒ����
	 * @param type
	 * @return
	 * @throws AppException
	 */
	long getProductCountByType(int type) throws AppException;

	/**
	 * ȡ�ù��ڵĲ�Ʒ����
	 * @param userId
	 * @param type
	 * @return
	 * @throws AppException
	 */
	long getProductCountByType(long userId, int type) throws AppException;

}
