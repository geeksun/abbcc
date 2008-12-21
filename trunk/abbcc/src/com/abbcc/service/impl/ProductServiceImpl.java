package com.abbcc.service.impl;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import com.abbcc.dao.ProductDAO;
import com.abbcc.dao.ProductTypeDAO;
import com.abbcc.dao.PzDAO;
import com.abbcc.pojo.Product;
import com.abbcc.pojo.ProductType;
import com.abbcc.pojo.Pz;
import com.abbcc.service.ProductService;
import com.abbcc.util.product.ProductObject;
import com.abbcc.util.product.ProductUtil;
import com.abbcc.util.product.TableUtil;

public class ProductServiceImpl implements ProductService {

	private ProductDAO productDao;

	private ProductTypeDAO productTypeDao;

	private PzDAO pzDao;

	public ProductDAO getProductDao() {
		return productDao;
	}

	public void setProductDao(ProductDAO productDao) {
		this.productDao = productDao;
	}

	public ProductTypeDAO getProductTypeDao() {
		return productTypeDao;
	}

	public void setProductTypeDao(ProductTypeDAO productTypeDao) {
		this.productTypeDao = productTypeDao;
	}

	public PzDAO getPzDao() {
		return pzDao;
	}

	public void setPzDao(PzDAO pzDao) {
		this.pzDao = pzDao;
	}

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
		product.setState(Product.PRODUCT_STATE_IN_USED);
		this.productDao.addProduct(product);
		String productTable = ProductUtil.PRODUCT_TABLE_INDEX_NAME;
		Pz pz = this.pzDao.getPzByTableName(productTable);
		if (pz != null) {
			long index = pz.getRecnum();
			index = index + 1;
			product.setTableName(productTable + "_" + index);
			String table = TableUtil.getCreateTable(product);
			this.productDao.exectueSQLSql(table);
			pz.setRecnum(index);
			pz.setMaxCount(pz.getMaxCount() + 1);
			pzDao.updatePz(pz);
		}
	}

	public void addProductInfo(ProductObject obj) {
		if (obj == null)
			return;
		String sql = obj.getSql();
		String[] value = obj.getValue();
		this.productDao.excetueSaveProduct(sql, value);

	}

}
