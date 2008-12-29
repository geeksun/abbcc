package com.abbcc.service.impl;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import com.abbcc.exception.AppException;
import com.abbcc.exception.DaoException;
import com.abbcc.pojo.Cpgqxx;
import com.abbcc.pojo.Jytj;
import com.abbcc.pojo.Product;
import com.abbcc.pojo.ProductType;
import com.abbcc.pojo.Pz;
import com.abbcc.service.ProductService;
import com.abbcc.util.product.ProductObject;
import com.abbcc.util.product.ProductUtil;
import com.abbcc.util.product.TableUtil;

public class ProductServiceImpl extends BaseServiceImpl implements ProductService {

	 
	public void addProductType(ProductType productType) {
		this.productTypeDao.addProductType(productType);

	}

	public void deleteProductTypeAndChildProductTypeById(int id) {

		List ids = new ArrayList();
		ids.add(id);
		List prodcutTypeList = this.getProductTypeByParentId(id);
		if (prodcutTypeList != null && prodcutTypeList.size() > 0) {
			Iterator<ProductType> iter = prodcutTypeList.iterator();
			while (iter.hasNext()) {
				ProductType productType = iter.next();
				if (productType != null) {
					int childId = productType.getId();
					ids.add(childId);
					List childProdcutTypeList = this
							.getProductTypeByParentId(id);
					if (childProdcutTypeList != null
							&& childProdcutTypeList.size() > 0) {
						Iterator<ProductType> iterChild = childProdcutTypeList
								.iterator();
						while (iterChild.hasNext()) {
							ProductType childProductType = iterChild.next();
							if (childProductType != null) {
								ids.add(childProductType.getId());
							}
						}
					}

				}
			}
		}
		productTypeDao.deleteProductTypeByIdList(ids);

	}

	public List getChildProductTypeById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	public ProductType getProductTypeById(int id) {

		return this.productTypeDao.getProductTypeById(id);

	}

	public void updateProductType(ProductType productType) {

		productTypeDao.updateProductType(productType);

	}

	public List getProductTypeByParentId(int parentId) {

		return productTypeDao.getProductTypeByParentId(parentId);
	}

	public Product getProductById(long id) {
		// TODO Auto-generated method stub
		return null;
	}

	public Product getProductByStateAndProductTypeId(int state,
			String productTypeId) {

		return this.productDao.getProductByStateAndProductTypeId(state,
				productTypeId);
	}

	public void addProduct(Product product) { 
		String productTypeId = product.getProductTypeId();
		Product _product = productDao.getProductByStateAndProductTypeId(
				Product.PRODUCT_STATE_IN_USED, productTypeId);
		if (_product != null) {
			_product.setState(Product.PRODUCT_STATE_UN_USED);
			this.productDao.update(_product);

		}
		
		String productTable = ProductUtil.PRODUCT_TABLE_INDEX_NAME;
		Pz pz = this.pzDao.updateAndGetPz (productTable);
		if (pz != null) {
			long index = pz.getRecnum(); 
			product.setTableName(productTable + "_" + index);
			product.setState(Product.PRODUCT_STATE_IN_USED); 
			this.productDao.addProduct(product);
			String table = TableUtil.getCreateTable(product);
			this.productDao.exectueSQLSql(table); 
			pz.setMaxCount(pz.getMaxCount() + 1);
			pzDao.updatePz(pz);
		}
	}

	private void addProductObj(ProductObject obj) {
		if (obj == null)
			return;
		String sql = obj.getSql();
		Object[] value = obj.getValue();
		System.out.println(sql);
		this.productDao.excetueSaveProduct(sql, value);

	}
	private void addCpgqxx(Cpgqxx cpgqxx) throws DaoException{
		this.cpgqxxDao.insert(cpgqxx);
	
		
	}
	private void addJytj(Jytj jytj) throws DaoException{
		this.jytjDao.insert(jytj);
		
	}

	public void addProductInfo(ProductObject obj, Cpgqxx cpgqxx, Jytj jytj) throws AppException {
		try{
		if(obj==null||cpgqxx==null||jytj==null)return; 
		this.addCpgqxx(cpgqxx);   
		Object[] values=obj.getValue();
		values[values.length-1]=cpgqxx.getCpgqxxid();
		this.addProductObj(obj);
		jytj.setCpgqxxId(cpgqxx.getCpgqxxid());
		this.addJytj(jytj); 
		  
		}catch(Exception e){
			log.error(e);
			e.printStackTrace();
			throw new AppException(e);
		}
	}

	 

	public List getProductInfoList(int userId, String orderType, String productName, String auditType, String overdue) throws AppException {
		
		
		try {
			return this.cpgqxxDao.getCpgqxxList(userId,orderType,productName,auditType ,null);
		} catch (DaoException e) {
			log.error(e);
			e.printStackTrace();
			throw new AppException(e);
			
		}
	}

}
