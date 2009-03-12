 package com.abbcc.service.impl;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import com.abbcc.common.AppConstants;
import com.abbcc.common.UploadUtil;
import com.abbcc.exception.AppException;
import com.abbcc.exception.DaoException;
import com.abbcc.pojo.Cpgqxx;
import com.abbcc.pojo.Jytj;
import com.abbcc.pojo.Product;
import com.abbcc.pojo.ProductType;
import com.abbcc.pojo.Pz;
import com.abbcc.service.ProductService;
import com.abbcc.util.JdbcTemplateUtil;
import com.abbcc.util.pagination.Pagination;
import com.abbcc.util.product.ProductInfo;
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

	public Product getProductById(long id) throws AppException {
		
		try {
			return this.productDao.getProductById(id);
		} catch (DaoException e) {
			log.error(e);
			e.printStackTrace();
			throw new AppException(e);
		}
	}

	public Product getProductByStateAndProductTypeId(int state,
			String productTypeId) throws AppException {
		try {
			return this.productDao.getProductByStateAndProductTypeId(state,
					productTypeId);
		} catch (DaoException e) {
			log.error(e);
			e.printStackTrace();
			throw new AppException(e);
		}
	}

	public void addProduct(Product product) throws AppException { 
		String productTypeId = product.getProductTypeId();
		try{
			/*Product _product = productDao.getProductByStateAndProductTypeId(
				Product.PRODUCT_STATE_IN_USED, productTypeId);
		if (_product != null) {
			_product.setState(Product.PRODUCT_STATE_UN_USED);
			this.productDao.update(_product);

		}*/
		
		String productTable = ProductUtil.PRODUCT_TABLE_INDEX_NAME;
		Pz pz = this.pzDao.updateAndGetPz (productTable);
		if (pz != null) {
			long index = pz.getRecnum(); 
			product.setTableName(productTable + "_" + index);
			//product.setState(Product.PRODUCT_STATE_IN_USED); 
			this.productDao.addProduct(product);
			String table = TableUtil.getCreateTable(product);
			this.productDao.exectueSQLSql(table); 
			pz.setMaxCount(pz.getMaxCount() + 1);
			pzDao.updatePz(pz);
		}
		}catch(Exception e){
			log.error(e);
			e.printStackTrace();
			throw new AppException(e);
		}
	}

	private void addProductObj(ProductObject obj) throws DaoException {
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
	private Cpgqxx getCpgqxx(long cpgqxxId) throws DaoException{
		Cpgqxx cpgqxx=this.cpgqxxDao.getCpgqxxById(cpgqxxId);
		return cpgqxx;
	}
	private Jytj getJytj(long cpgqxxId) throws DaoException{
		Jytj jytj=this.jytjDao.getJytjById(cpgqxxId);
		return jytj;
	}
	private void addJytj(Jytj jytj) throws DaoException{
		this.jytjDao.insert(jytj);
		
	}

	private Date getCpgqxxOverdueDate(String xxyxq){
		Calendar rightNow = Calendar.getInstance();
		if(xxyxq==null)return rightNow.getTime();
		if(xxyxq.equals(AppConstants.CPGOXX_OVERDUE_10_DAY)){
			rightNow.add(Calendar.DATE, 10);
			
		}else  if(xxyxq.equals(AppConstants.CPGOXX_OVERDUE_20_DAY)){
			rightNow.add(Calendar.DATE, 20);
		}else  if(xxyxq.equals(AppConstants.CPGOXX_OVERDUE_1_MONTH)){
			rightNow.add(Calendar.MONTH, 1);
		}else  if(xxyxq.equals(AppConstants.CPGOXX_OVERDUE_3_MONTH)){
			rightNow.add(Calendar.MONTH, 3);
		}else  if(xxyxq.equals(AppConstants.CPGOXX_OVERDUE_6_MONTH)){
			rightNow.add(Calendar.MONTH, 6);
		}
		 return rightNow.getTime();
		//return new Date( );
	}

	public void addProductInfo(ProductObject obj, Cpgqxx cpgqxx, Jytj jytj) throws AppException {
		try{
		if( cpgqxx==null||jytj==null)return; 
		String xxyxq=cpgqxx.getXxyxq();
		Date xxyxsj=getCpgqxxOverdueDate(xxyxq);
		cpgqxx.setXxyxsj(xxyxsj);
		this.addCpgqxx(cpgqxx);   
		if(obj!=null){
			Object[] values=obj.getValue();
			values[values.length-1]=cpgqxx.getCpgqxxid();
			this.addProductObj(obj);
		}
	
		jytj.setCpgqxxId(cpgqxx.getCpgqxxid());
		this.addJytj(jytj); 
		  
		}catch(Exception e){
			log.error(e);
			e.printStackTrace();
			throw new AppException(e);
		}
	}

	public List getProductInfoList(int userId, String orderType, String productName, String auditType, String overdue,Pagination pagination) throws AppException {
		try { 
			int start=pagination.getFirstResult();
			int maxReults= pagination.getOnePageSize();
			return this.cpgqxxDao.getCpgqxxList(userId,orderType,productName,auditType ,null,overdue,start,maxReults);
		} catch (DaoException e) {
			log.error(e);
			e.printStackTrace();
			throw new AppException(e);
			
		}
	}

	public List getProductInfoList(String orderType, String productName, String auditType, String overdue,Pagination pagination) throws AppException {
	try {  
			int count=this.cpgqxxDao.getCpgqxxCount(null, orderType,productName,auditType ,null,overdue);
			pagination.setTotalResults(count);
			int start=pagination.getFirstResult();
			int maxReults= pagination.getOnePageSize();
			return this.cpgqxxDao.getCpgqxxList(null, orderType,productName,auditType ,null,overdue,start,maxReults);
		} catch (DaoException e) {
			log.error(e);
			e.printStackTrace();
			throw new AppException(e);
			
		}
	}

	public void updateProductInfoAuditType(String auditType, long[] productInfoId) throws AppException {
		try {
			this.cpgqxxDao.updateCpggxxAuditType(auditType,productInfoId);
		} catch (DaoException e) {
			log.error(e);
			e.printStackTrace();
			throw new AppException(e);
		}
		
	}

	public ProductInfo getProductInfoById(long infoId) {
			
		try {
			ProductInfo productInfo=new ProductInfo();
			
			Cpgqxx cpgqxx=this.getCpgqxx(infoId);
			Jytj jytj=this.getJytj(infoId);
			String productTypeId=cpgqxx.getCpshlm();
			Product _product = productDao.getProductByStateAndProductTypeId(
					Product.PRODUCT_STATE_IN_USED, productTypeId);
			if(_product.getProductType()!=Product.PRODUCT_TYPE_NO_PRODUCT){
				String sql=ProductUtil.getProductSelectSql(_product,String.valueOf(infoId));
				Object[] value=new Object[]{String.valueOf(infoId)};
				// Object objectValue=this.productDao.excetueSelectProduct(sql, value);
				List objectMapList=JdbcTemplateUtil.getProductListBySelectSql(sql,value);
				Map objecgMap=null;
				if(objectMapList!=null&&objectMapList.size()>0){
					objecgMap=(Map)objectMapList.get(0);
					
				}
				productInfo.setMapValue(objecgMap);
			}
			
				 
			productInfo.setCpggxx(cpgqxx);
			productInfo.setJytj(jytj);
			
			productInfo.setProduct(_product);
			return productInfo;
			
		} catch (DaoException e) {
			log.error(e);
			e.printStackTrace();
		}
		
		return null; 
	}
	public void updateProductInfo(ProductObject obj, Cpgqxx cpgqxx, Jytj jytj) throws AppException {
		try {
			String xxyxq=cpgqxx.getXxyxq();
			Date xxyxsj=getCpgqxxOverdueDate(xxyxq);
			cpgqxx.setXxyxsj(xxyxsj);
			this.cpgqxxDao.update(cpgqxx);
			this.jytjDao.update(jytj);
			//JdbcTemplateUtil.updateObject(obj.getSql(),obj.getValue());
			if(obj!=null)
			     this.productDao.excetueSaveProduct(obj.getSql(), obj.getValue());
		} catch (DaoException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		 
		
	}
	private ProductInfo getProductInfoByIdForDelete(long infoId) {
		
		try {
			ProductInfo productInfo=new ProductInfo();
			
			Cpgqxx cpgqxx=this.getCpgqxx(infoId);
			Jytj jytj=this.getJytj(infoId);
			String productTypeId=cpgqxx.getCpshlm();
			Product _product = productDao.getProductByStateAndProductTypeId(
					Product.PRODUCT_STATE_IN_USED, productTypeId); 
			productInfo.setCpggxx(cpgqxx);
			productInfo.setJytj(jytj);
		 
			productInfo.setProduct(_product);
			return productInfo;
			
		} catch (DaoException e) {
			log.error(e);
			e.printStackTrace();
		}
		
		return null; 
	}
	private Map<Integer ,ProductType> getProductTypeMap(List<ProductType> productTypeList){
		Map ret=new HashMap();
		if(productTypeList!=null){
			Iterator<ProductType> iter=productTypeList.iterator(); 
			while(iter.hasNext()){
				ProductType pro=iter.next();
				int id=pro.getId();
				ret.put(id, pro);
			}
		}
		return ret;
	}
	public List<List<ProductType>> getTextAreaProductTypeListByIds(List<Integer> ids) {

		List ret = new ArrayList();
		List<ProductType> productType3 = this.productTypeDao
				.getProductTypeByIdList(ids);
		List idsList = new LinkedList(); 
		if (productType3 != null&&productType3.size()>0) {
			Iterator<ProductType> iter = productType3.iterator(); 
			while (iter.hasNext()) {
				ProductType pro = iter.next();
				idsList.add(pro.getParentId());
			}
		}
		
		List<ProductType> productType2 = this.productTypeDao
				.getProductTypeByIdList(idsList);

		idsList = new LinkedList(); 
		if (productType2 != null&&productType2.size()>0) {
			Iterator<ProductType> iter = productType2.iterator();

			while (iter.hasNext()) {
				ProductType pro = iter.next();
				idsList.add(pro.getParentId());
			}
		}

		List<ProductType> productType1 = this.productTypeDao
				.getProductTypeByIdList(idsList);
		Map<Integer, ProductType> productTypeMap2 = getProductTypeMap(productType2);
		Map<Integer, ProductType> productTypeMap1 = getProductTypeMap(productType1);
		if(productType3!=null){
			Iterator<ProductType> iter = productType3.iterator();
			while (iter.hasNext()) { 
				List temp = new LinkedList();
				ProductType pro3 = iter.next();
				if(pro3!=null){ 
					temp.add(pro3);
					int id3 = pro3.getParentId(); 
					ProductType pro2 = productTypeMap2.get(id3); 
					
					if(pro2!=null){
						temp.add(pro2);
						int id2 = pro2.getParentId();

						ProductType pro1 = productTypeMap1.get(id2);

						temp.add(pro1);
					}
				}
				 
				ret.add(temp);
			}
		}

		return ret;
	}

	public void deleteProductInfoByIds(long[] productInfoIds,String productPicPath) throws AppException {
		 
		 if(productInfoIds!=null){
			 try {
				for (int i = 0; i < productInfoIds.length; i++) {
					long id = productInfoIds[i];
					ProductInfo productInfo = this.getProductInfoByIdForDelete(id);
					if (productInfo != null) {
						Cpgqxx cpgqxx = productInfo.getCpggxx();
						if (cpgqxx != null) {
							this.cpgqxxDao.delete(cpgqxx.getHyjbxxid(), cpgqxx.getCpgqxxid()); 
							String picName1=cpgqxx.getTp1();
							String picName2=cpgqxx.getTp2();
							String picName3=cpgqxx.getTp3();
							if(picName1!=null&&!picName1.equals("")){
								UploadUtil.deleteFile(productPicPath+"\\"+picName1);
							}
							if(picName2!=null&&!picName2.equals("")){
								UploadUtil.deleteFile(productPicPath+"\\"+picName2);
							}
							if(picName3!=null&&!picName3.equals("")){
								UploadUtil.deleteFile(productPicPath+"\\"+picName3);
							}
							
						}
						Jytj jytj = productInfo.getJytj();
						if(jytj!=null){
							this.jytjDao.delete(jytj.getHyjbxxid(), jytj.getJytjid());
						}
						
						Product product = productInfo.getProduct();
						if(product!=null){
							ProductObject obj=ProductUtil.getProductDeleteObject(product);
							obj.setValue(new Object[]{id});
							this.deleteProductObj(obj);
							
						} 
					}

				}
			}catch(Exception e){
				log.error(e);
				 e.printStackTrace();
				 throw new AppException(e);
			 }
			 
		 }
		
	}
	private void deleteProductObj(ProductObject obj) throws DaoException {
		if (obj == null)
			return;
		String sql = obj.getSql();
		Object[] value = obj.getValue();
		System.out.println(sql);
		this.productDao.excetueSaveProduct(sql, value);

	}

	public List<Product> getProductListByProductTypeId(String productTypeId) throws AppException {
		try {
			return this.productDao.getProductListByProductTypeId(productTypeId);
		} catch (DaoException e) {
			log.error(e);
			e.printStackTrace();
			throw new AppException(e);
		}
		 
	}

	public void updateProduct(Product product) throws AppException {
		this.productDao.update(product);
		
	}

	public void updateProductState(Product product) throws AppException {
		try {
			String productTypeId = product.getProductTypeId();
			Product _product = productDao.getProductByStateAndProductTypeId(
					Product.PRODUCT_STATE_IN_USED, productTypeId);
			
			if (_product != null) {
				long id=product.getId();
				long oldId=_product.getId();
				if(id!=oldId){
					_product.setState(Product.PRODUCT_STATE_UN_USED);
					this.productDao.update(_product);
					
				} 
			}
			this.updateProduct(product);
		} catch (DaoException e) {
			log.error(e);
			e.printStackTrace();
			throw new AppException(e);
		}
		
	}

	public void deleteProductById(long productId) throws AppException {
		this.productDao.delete(Product.class, productId);
		
	}

	public long getProductCountByType(int type) throws AppException {
		long ret=0;
		if(type==AppConstants.PRODUCT_TYPE_IN_AUDIT){
			ret=this.cpgqxxDao.getCpgqxxSfyxCount(String.valueOf(type));
		}else if(type==AppConstants.PRODUCT_TYPE_IN_NET){
			ret=this.cpgqxxDao.getCpgqxxSfyxCount(String.valueOf(type));
		}else if(type==AppConstants.PRODUCT_TYPE_UN_AUDIT){
			ret=this.cpgqxxDao.getCpgqxxSfyxCount(String.valueOf(type));
		}else if(type==AppConstants.PRODUCT_TYPE_OVERDUE){
			ret=this.cpgqxxDao.getCpgqxxOverdueCount( );
		}
		return ret;
	}
	
	public long getProductCountByType(long userId,int type) throws AppException {
		long ret=0;
		if(type==AppConstants.PRODUCT_TYPE_IN_AUDIT){
			ret=this.cpgqxxDao.getCpgqxxSfyxCount(userId,String.valueOf(type));
		}else if(type==AppConstants.PRODUCT_TYPE_IN_NET){
			ret=this.cpgqxxDao.getCpgqxxSfyxCount(userId,String.valueOf(type));
		}else if(type==AppConstants.PRODUCT_TYPE_UN_AUDIT){
			ret=this.cpgqxxDao.getCpgqxxSfyxCount(userId,String.valueOf(type));
		}else if(type==AppConstants.PRODUCT_TYPE_OVERDUE){
			ret=this.cpgqxxDao.getCpgqxxOverdueCount(userId  );
		}
		return ret;
	}
	

}
