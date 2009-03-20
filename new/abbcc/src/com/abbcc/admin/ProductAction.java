package com.abbcc.admin;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.upload.FormFile;

import com.abbcc.common.AppConstants;
import com.abbcc.common.UploadUtil;
import com.abbcc.common.UserUtil;
import com.abbcc.exception.AppException;
import com.abbcc.pojo.Cpgqxx;
import com.abbcc.pojo.Jytj;
import com.abbcc.pojo.Product;
import com.abbcc.pojo.ProductType;
import com.abbcc.struts.action.BaseAction;
import com.abbcc.struts.form.ProductUpdateForm;
import com.abbcc.util.RequestUtils;
import com.abbcc.util.pagination.NormalPagination;
import com.abbcc.util.pagination.PageConstants;
import com.abbcc.util.pagination.Pagination;
import com.abbcc.util.product.ProductInfo;
import com.abbcc.util.product.ProductObject;
import com.abbcc.util.product.ProductTemplate;
import com.abbcc.util.product.ProductUtil;

/**
 * 产品操作类
 * @author dongyili
 *
 */
public class ProductAction extends BaseAction {

	/**
	 * 动态创建一个产品
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 */
	public ActionForward createProduct(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		try {
			
			String productName = request.getParameter("productName");
			String productType = request.getParameter("productType");
			String[] property = request.getParameterValues("property");
			String[] isNull = request.getParameterValues("isNull");
			String[] unit = request.getParameterValues("unit");
			String[] remark = request.getParameterValues("remark");
			String[] type = request.getParameterValues("type");
			String[] isShow = request.getParameterValues("isShow");
			String[] isHidden = request.getParameterValues("isHidden");

			boolean hasNull = ProductUtil.hasNullParam(productName,
					productType, property, isNull, type, isShow, isHidden);
			boolean isEqualLength = ProductUtil.isEqualLength(property, isNull,
					unit, remark, type, isShow, isHidden);
			boolean isPropertyMatchType = ProductUtil.isPropertyMatchType(type,
					property);
			
			if (hasNull || !isEqualLength || !isPropertyMatchType) {
				//没有产品时，设置默认产品的状态
				Product product = new Product();
				product.setProductName(productName);
				product.setProductType (Product.PRODUCT_TYPE_NO_PRODUCT);
				product.setProductTypeId(productType);
				product.setCreateTime(new Date());
				this.productService.addProduct(product);
				return this.productManager(mapping, form, request, response);
				
				//System.out.println("hasNull");
				//return mapping.findForward("error");
			} else {
				//产品属性验证通过，创建一个产品，默认是不使用状态
				int len = property.length;
				Product product = new Product();
				String _property = ProductUtil.arrayToString(property);
				String _isNull = ProductUtil.arrayToString(isNull);
				String _unit = ProductUtil.arrayToString(unit);
				String _remark = ProductUtil.arrayToString(remark);
				String _type = ProductUtil.arrayToString(type);
				String _isShow = ProductUtil.arrayToString(isShow);
				String _isHidden = ProductUtil.arrayToString(isHidden);
				String formName = ProductUtil.createFormName(len);
				String tableFiledName = ProductUtil.createFiled(len);

				String tableName = ProductUtil.getNextTableName();
				String id = ProductUtil.getTableIdFiled();
				String cpgqxxId = ProductUtil.getTableCpgqxxIdFiled();
				product.setIdFiledName(id);
				product.setCpgqxxIdFiled(cpgqxxId);
				product.setIsHidden(_isHidden);
				product.setIsNull(_isNull);
				product.setIsShow(_isShow);
				product.setOtherFiledName(tableFiledName);
				product.setPropertyName(_property);
				product.setRemark(_remark);
				product.setType(_type);
				product.setUnit(_unit);
				product.setFormName(formName);
				product.setCreateTime(new Date());
				product.setProductTypeId(productType);
				product.setState(Product.PRODUCT_STATE_UN_USED);
				product.setTableName(tableName);
				product.setProductName(productName); 
				this.productService.addProduct(product);
				return this.productManager(mapping, form, request, response);
			}

		} catch (Exception e) {
			log.error(e);
			e.printStackTrace();
		}
		return mapping.findForward("error");

	}
/**
 * 产品列表
 * @param mapping
 * @param form
 * @param request
 * @param response
 * @return
 */
	public ActionForward productList(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		//产品类目的Id
		String productTypeId = request.getParameter("productTypeId");
		request.setAttribute("productTypeId", productTypeId);
		if (productTypeId == null || productTypeId.equals("")) {
			return mapping.findForward("error");
		}

		try {

			List ids = new ArrayList();
			Integer id = Integer.parseInt(productTypeId);
			ids.add(id);
			List productTypeList = this.productService
					.getTextAreaProductTypeListByIds(ids);

			request.setAttribute("productTypeList", productTypeList);

			List productList = this.productService .getProductListByProductTypeId(productTypeId);
			request.setAttribute("productList", productList);

			return mapping.findForward("productList");

		} catch (AppException e) {
			log.error(e);
			e.printStackTrace();
		}

		return mapping.findForward("error");
	}
	/**
	 * 产品列表
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 */
		public ActionForward productAllList(ActionMapping mapping, ActionForm form,
				HttpServletRequest request, HttpServletResponse response) {
			 
			try {

				int state = RequestUtils.getIntParameter(request,
						"state", -1);

				List productList = this.productService.getProductList(state);
				request.setAttribute("productList", productList);

				return mapping.findForward("productList");

			} catch (AppException e) {
				log.error(e);
				e.printStackTrace();
			}

			return mapping.findForward("error");
		}
	/**
	 * 删除一个产品
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 */
	public ActionForward deleteProduct(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		try {

			long productId = RequestUtils.getLongParameter(request,
					"productId", -1);

			if (productId == -1) {
				return mapping.findForward("error");
			}

			this.productService.deleteProductById(productId);
		 
			return this.productList(mapping, form, request, response);

		} catch (Exception e) {
			log.error(e);
			e.printStackTrace();
		}
		return mapping.findForward("error");
	}

	/**
	 * 更新产品的使用状态
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 */
	public ActionForward updateProductState(ActionMapping mapping,
			ActionForm form, HttpServletRequest request,
			HttpServletResponse response) {
		try {

			long productId = RequestUtils.getLongParameter(request,
					"productId", -1);

			if (productId == -1) {
				return mapping.findForward("error");
			}

			Product product = this.productService.getProductById(productId);
			
			if(product.getState()==Product.PRODUCT_STATE_IN_USED){
				//如果是使用状态直接返回
				return this.productList(mapping, form, request, response);
			}else
			{
				product.setState(Product.PRODUCT_STATE_IN_USED);
				
				this.productService.updateProductState(product);
				 
				return this.productList(mapping, form, request, response);
			}
		

		} catch (Exception e) {
			log.error(e);
			e.printStackTrace();
		}
		return mapping.findForward("error");

	}

	/**
	 * 更新产品的属性
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 */
	public ActionForward updateProduct(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		try {

			long productId = RequestUtils.getLongParameter(request,
					"productId", -1);
			if (productId == -1) {
				return mapping.findForward("error");
			}
			String productName = request.getParameter("productName");
			String productType = request.getParameter("productType");
			String[] property = request.getParameterValues("property");
			String[] isNull = request.getParameterValues("isNull");
			String[] unit = request.getParameterValues("unit");
			String[] remark = request.getParameterValues("remark");
			String[] type = request.getParameterValues("type");
			String[] isShow = request.getParameterValues("isShow");
			String[] isHidden = request.getParameterValues("isHidden");

			boolean hasNull = ProductUtil.hasNullParam(productName,
					productType, property, isNull, type, isShow, isHidden);
			boolean isEqualLength = ProductUtil.isEqualLength(property, isNull,
					unit, remark, type, isShow, isHidden);
			boolean isPropertyMatchType = ProductUtil.isPropertyMatchType(type,
					property);
			if (hasNull || !isEqualLength || !isPropertyMatchType) {
				return mapping.findForward("error");

			} else {

				Product product = this.productService.getProductById(productId);
				
				if(product.getProductType()==Product.PRODUCT_TYPE_NO_PRODUCT){
					product.setProductName(productName);
				}else{
					String _property = ProductUtil.arrayToString(property);
					String _isNull = ProductUtil.arrayToString(isNull);
					String _unit = ProductUtil.arrayToString(unit);
					String _remark = ProductUtil.arrayToString(remark);
				 
					String _isShow = ProductUtil.arrayToString(isShow);
					String _isHidden = ProductUtil.arrayToString(isHidden);

					product.setIsHidden(_isHidden);
					product.setIsNull(_isNull);
					product.setIsShow(_isShow);
					product.setPropertyName(_property);
					product.setRemark(_remark);
					 
					product.setUnit(_unit);
					product.setProductTypeId(productType);
					 
					product.setProductName(productName);
					this.productService.updateProduct(product);
				}
				 
				return this.showProduct(mapping, form, request, response);
			}

		} catch (Exception e) {
			log.error(e);
			e.printStackTrace();
		}
		return mapping.findForward("error");

	}

	/**
	 * 显示一个产品 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 */
	public ActionForward showProduct(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {

		try {

			long productId = RequestUtils.getLongParameter(request,
					"productId", -1);
			if (productId == -1) {
				return mapping.findForward("error");
			}
			Product product = this.productService.getProductById(productId);

			if (product != null) {
				request.setAttribute("product", product);
				String productTypeId = product.getProductTypeId();
				Integer _productTypeId = Integer.parseInt(productTypeId);
				//产品所属类目
				ProductType productType = this.productService
						.getProductTypeById(_productTypeId);
				if (productType != null) {
					int parentId = productType.getParentId();
					 
					List<ProductType> thirdCategory = this.productService
							.getProductTypeByParentId(parentId);
					
					ProductType secondProductType = this.productService
							.getProductTypeById(parentId);
					request.setAttribute("thirdCategory", thirdCategory);
					request.setAttribute("thirdProductType", productType);
					
					if (secondProductType != null) {
						int secondParentId = secondProductType.getParentId();
						List<ProductType> secondCategory = this.productService
								.getProductTypeByParentId(secondParentId);
						ProductType topProductType = this.productService
								.getProductTypeById(secondParentId);
						int parentid = topProductType.getParentId();
						
						
						List<ProductType> topCategory = this.productService
								.getProductTypeByParentId(parentid);
						request.setAttribute("secondCategory", secondCategory);
						request.setAttribute("secondProductType",
								secondProductType);

						request.setAttribute("topCategory", topCategory);
						request.setAttribute("topProductType", topProductType);
					}
				}

				return mapping.findForward("createProduct");
			}

		 
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mapping.findForward("error");

	}
/**
 * 产品管理
 * @param mapping
 * @param form
 * @param request
 * @param response
 * @return
 */
	public ActionForward productManager(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		try {
			//顶级product type ID
			int parentid = AppConstants.PRODUCT_TYPE_TOP_ID;
			//一级菜单
			List<ProductType> topCategory = this.productService
					.getProductTypeByParentId(parentid);
			if (topCategory != null && topCategory.size() > 0) {
				request.setAttribute("topCategory", topCategory);
				ProductType productType = topCategory.get(0);
				//二级菜单
				List<ProductType> secondCategory = this.productService
						.getProductTypeByParentId(productType.getId());
				request.setAttribute("secondCategory", secondCategory);
				if (secondCategory != null && secondCategory.size() > 0) {
					ProductType secondProductType = secondCategory.get(0);
					//三级菜单
					List<ProductType> thirdCategory = this.productService
							.getProductTypeByParentId(secondProductType.getId());
					request.setAttribute("thirdCategory", thirdCategory);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mapping.findForward("productManager");
	}
	//添加产品页面
	public ActionForward addProduct(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		String productTypeId = request.getParameter("productTypeId");
		request.setAttribute("productTypeId", productTypeId);
		if (productTypeId == null || productTypeId.equals("")) {
			return mapping.findForward("error");
		}

		try {
			List ids = new ArrayList();
			Integer id = Integer.parseInt(productTypeId);
			ids.add(id);
			List productTypeList = this.productService .getTextAreaProductTypeListByIds(ids);

			request.setAttribute("productTypeList", productTypeList);
			return mapping.findForward("addProduct");
		} catch (Exception e) {
			log.error(e);
			e.printStackTrace();
		}
		return mapping.findForward("error");

	}

	/**
	 * 后台管理 产品信息列表
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 */
	public ActionForward productInfoList(ActionMapping mapping,
			ActionForm form, HttpServletRequest request,
			HttpServletResponse response) {

		String userid = UserUtil.getUserId(request);
		String orderType = RequestUtils.getParameter(request, "orderType",
				AppConstants.CPGQXX_SFYX_All); // 信息类型
		String productName = RequestUtils.getParameter(request, "productName");// 产品名称

		String auditType = RequestUtils.getParameter(request, "auditType");// 审核类型
		String overdue = RequestUtils.getParameter(request, "overdue");// 是否过期
		boolean hasNull = ProductUtil.hasNullParam(userid);
		if (hasNull) {
			return mapping.findForward("login");
		}
		try {
			String action = "product.do?method=productInfoList";
			int currentPage = RequestUtils.getIntParameter(request,
					PageConstants.PAGINATION_CURRENT_PAGE, 1);
			int onePageSize = RequestUtils.getIntParameter(request,
					PageConstants.PAGINATION_ONE_PAGE_SIZE, 10);
			Map params = new HashMap();
			//添加查询参数
			params.put("orderType", orderType);
			params.put("productName", productName);
			params.put("auditType", auditType);
			params.put("overdue", overdue);

			Pagination pagination = new NormalPagination(currentPage, action,
					onePageSize, params);
			//查询列表
			List productInfoList = this.productService.getProductInfoList(
					orderType, productName, auditType, overdue, pagination);

			request.setAttribute("productInfoList", productInfoList);
			request.setAttribute("pagination", pagination);
			request.setAttribute("auditType", auditType);
			request.setAttribute("overdue", overdue);
			//统计个数
			long inAuditCount=this.productService.getProductCountByType(AppConstants.PRODUCT_TYPE_IN_AUDIT);
			long inNetCount=this.productService.getProductCountByType(AppConstants.PRODUCT_TYPE_IN_NET);
			long unAuditCount=this.productService.getProductCountByType(AppConstants.PRODUCT_TYPE_UN_AUDIT);
			long overCount=this.productService.getProductCountByType(AppConstants.PRODUCT_TYPE_OVERDUE);
			request.setAttribute("inAuditCount", inAuditCount);
			request.setAttribute("inNetCount", inNetCount);
			request.setAttribute("unAuditCount", unAuditCount);
			request.setAttribute("overCount", overCount);
			
			
			
			return mapping.findForward("productInfoList");
		} catch (Exception e) {
			e.printStackTrace();
			log.error(e);
		}

		return mapping.findForward("error");
	}
	//审核产品信息
	public ActionForward updateProductInfoAuditType(ActionMapping mapping,
			ActionForm form, HttpServletRequest request,
			HttpServletResponse response) {

		String userid = UserUtil.getUserId(request);

		long[] productInfoIds = RequestUtils.getLongParameters(request,
				"productInfoIds");
		String auditType = RequestUtils.getParameter(request, "newAuditType");// 审核类型
		boolean hasNull = ProductUtil.hasNullParam(userid);
		//未登录
		if (hasNull) {
			return mapping.findForward("login");
		}
		//参数为空
		hasNull = ProductUtil.hasNullParam(productInfoIds, auditType);
		if (hasNull) {
			return mapping.findForward("error");
		}

		try {
			this.productService.updateProductInfoAuditType(auditType,
					productInfoIds);
			return this.productInfoList(mapping, form, request, response);
		} catch (Exception e) {
			e.printStackTrace();
			log.error(e);
		}
		return mapping.findForward("error");

	}

	/**
	 * 后台管理 删除产品信息
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 */
	public ActionForward deleteProductInfo(ActionMapping mapping,
			ActionForm form, HttpServletRequest request,
			HttpServletResponse response) {

		String userid = UserUtil.getUserId(request);

		long[] productInfoIds = RequestUtils.getLongParameters(request,
				"productInfoIds");

		boolean hasNull = ProductUtil.hasNullParam(userid);
		if (hasNull) {
			return mapping.findForward("login");
		}
		hasNull = ProductUtil.hasNullParam(productInfoIds);
		if (hasNull) {
			return mapping.findForward("error");
		}
		String filePath=UploadUtil.getLocalProductPicPath(request);
		try {
			this.productService.deleteProductInfoByIds(productInfoIds,filePath);
			return this.productInfoList(mapping, form, request, response);
		} catch (Exception e) {
			e.printStackTrace();
			log.error(e);
		}

		return mapping.findForward("error");
	}

	/**
	 * 查看产品信息
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 */
	public ActionForward showProductInfo(ActionMapping mapping,
			ActionForm form, HttpServletRequest request,
			HttpServletResponse response) {
		try {

			String productInfoId = RequestUtils.getParameter(request,
					"productInfoId");
			long _productInfoId = Long.valueOf(productInfoId);
			ProductInfo productInfo = productService .getProductInfoById(_productInfoId);
			request.setAttribute("productInfo", productInfo);
			if (productInfo != null) {
				Product product = productInfo.getProduct();
				if (product != null) {
					request.setAttribute("product", product);
					String productTypeId = product.getProductTypeId();
					Integer _productTypeId = Integer.parseInt(productTypeId);
					ProductType productType = this.productService
							.getProductTypeById(_productTypeId);
					if (productType != null) {
						int parentId = productType.getParentId();
						List<ProductType> thirdCategory = this.productService
								.getProductTypeByParentId(parentId);
						ProductType secondProductType = this.productService
								.getProductTypeById(parentId);
						request.setAttribute("thirdCategory", thirdCategory);
						request.setAttribute("thirdProductType", productType);
						if (secondProductType != null) {
							int secondParentId = secondProductType
									.getParentId();
							List<ProductType> secondCategory = this.productService
									.getProductTypeByParentId(secondParentId);
							ProductType topProductType = this.productService
									.getProductTypeById(secondParentId);
							int parentid = topProductType.getParentId();
							List<ProductType> topCategory = this.productService
									.getProductTypeByParentId(parentid);
							request.setAttribute("secondCategory",
									secondCategory);
							request.setAttribute("secondProductType",
									secondProductType);

							request.setAttribute("topCategory", topCategory);
							request.setAttribute("topProductType", topProductType);

						}

					}

					String path = request.getContextPath();
					//得到产品模板
					String productTemplate = ProductTemplate.getInstance()
							.getTableStyle(product, path, productInfo.getMapValue());
					request.setAttribute("productTemplate", productTemplate);

				} 

			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return mapping.findForward("showProduct");
	}
	/**
	 * 更新产品信息
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 */
	public ActionForward updateProductInfo(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {

		try {
		 
			long productInfoId = RequestUtils.getLongParameter(request, "productInfoId", -1) ;//产品id
			if(productInfoId==-1){
				return mapping.findForward("error");
			}
		 	String productTypeId = request.getParameter("productTypeId");//产品所属类目
			String orderType = request.getParameter("orderType");//订购类型
			String productName = request.getParameter("productName");//产品名称
			String prodcutTitle = request.getParameter("prodcutTitle");//产品标题
			String ableDate = request.getParameter("ableDate");//有效期
			String desc = request.getParameter("desc");//详细信息

			String unit = request.getParameter("unit");// 计量单位
			String price = request.getParameter("price");// 产品单价
			String orderCount = request.getParameter("minCount");//最小起订量 
			String productCount = request.getParameter("productCount");// 供货总量
			String freightDate = request.getParameter("freightDate");// 发货期限
			String merchantType = request.getParameter("merchantType");// 供应商类型

			
			String uploadPicState1 = request.getParameter("uploadPicState1");//图片状态
			String uploadPicState2= request.getParameter("uploadPicState2");//图片状态
			String uploadPicState3 = request.getParameter("uploadPicState3");//图片状态 
			ProductUpdateForm theForm = (ProductUpdateForm) form;
			FormFile updatePic1 = theForm.getUpdatePic1(); //上传图片1
			FormFile updatePic2 = theForm.getUpdatePic2(); //上传图片2
			FormFile updatePic3 = theForm.getUpdatePic3();//上传图片3
			String updatePic1Name=UploadUtil.getGUIDFileName(updatePic1,request);
			String updatePic2Name=UploadUtil.getGUIDFileName(updatePic2,request);
			String updatePic3Name=UploadUtil.getGUIDFileName(updatePic3,request); 
			
			String hyjbxxid = UserUtil.getUserId(request);
			if(hyjbxxid==null||hyjbxxid.equals("")){
				return mapping.findForward("login"); 
			}
			// 校验
			boolean hasNull = ProductUtil.hasNullParam(productTypeId,
					productName, prodcutTitle );
			boolean isMathValues = ProductUtil.IsMathValue(orderType, ableDate,
					price, productCount, orderCount, merchantType);
			if (hasNull || !isMathValues) {
				return mapping.findForward("error");
			} else {
				
				ProductInfo productInfo = productService .getProductInfoById( productInfoId);
				if(productInfo!=null){
					Product product = productInfo.getProduct();
			if (product != null) {
				int state = product.getProductType();
				//使用的产品 进行验证
				if (state != Product.PRODUCT_TYPE_NO_PRODUCT) {
					String[] formNames = ProductUtil
							.arrayToString(product.getFormName());
					String[] filedNames = ProductUtil
							.arrayToString(product.getOtherFiledName());
					if (formNames.length != filedNames.length) {
						return mapping.findForward("error");
					}
				}
					//得到一个产品对象
					ProductObject obj = ProductUtil.getProductUpdateObject(
							product, request,productInfo.getMapValue());
					 
					Cpgqxx cpgqxx =productInfo.getCpggxx(); 
					cpgqxx.setCpmc(productName);// 产品名称
					cpgqxx.setHyjbxxid(Integer.valueOf(hyjbxxid));
					cpgqxx.setXxbt(prodcutTitle);// 信息标题
					cpgqxx.setCpshlm(productTypeId);// 产品所属类目
					cpgqxx.setXxsm(desc);// 详细说明
					cpgqxx.setXxyxq(ableDate);// 有效时间
					//cpgqxx.setSfyx(AppConstants.CPGQXX_SFYX_2);// 是否有效
					cpgqxx.setXxlx(orderType);
					String oldPicName1=cpgqxx.getTp1();
					String oldPicName2=cpgqxx.getTp2();
					String oldPicName3=cpgqxx.getTp3();
					if(!uploadPicState1.equals("none")){
						cpgqxx.setTp1(updatePic1Name);
					}
					if(!uploadPicState2.equals("none")){
						cpgqxx.setTp2(updatePic2Name);
					}
					if(!uploadPicState3.equals("none")){
						cpgqxx.setTp3(updatePic3Name);
					}
				 
					Jytj jytj = productInfo.getJytj();
					jytj.setCpdj(price);
					jytj.setFhqx(freightDate);
					jytj.setGhzl(productCount);
					jytj.setGyslc(merchantType);
					jytj.setHyjbxxid(Integer.valueOf(hyjbxxid));
					jytj.setJldw(unit);
					jytj.setZxqdl(orderCount);
				
					//上传图片
					if(uploadPicState1.equals("upload")){ 
						//先删除旧的图片
						if(oldPicName1!=null){
							UploadUtil.deleteProductPic(oldPicName1, request); 
						}
						UploadUtil.saveProductPic(updatePic1,updatePic1Name,request);
					}else if(uploadPicState1.equals("delete")){
						 
						if(oldPicName1!=null){
							UploadUtil.deleteProductPic(oldPicName1, request); 
						} 
						cpgqxx.setTp1(null);
					}
					
					
					
					if(uploadPicState2.equals("upload")){
						 
						if(oldPicName2!=null){
							UploadUtil.deleteProductPic(oldPicName2, request); 
						}
						UploadUtil.saveProductPic(updatePic2,updatePic2Name,request);
					}else if(uploadPicState2.equals("delete")){
						 
						if(oldPicName2!=null){
							UploadUtil.deleteProductPic(oldPicName2, request); 
						} 
						cpgqxx.setTp2(null);
					}
					
					
					
					if(uploadPicState3.equals("upload")){
						 
						if(oldPicName3!=null){
							UploadUtil.deleteProductPic(oldPicName3, request); 
						}
						UploadUtil.saveProductPic(updatePic3,updatePic3Name,request);
					}else if(uploadPicState3.equals("delete")){
						 
						if(oldPicName3!=null){
							UploadUtil.deleteProductPic(oldPicName3, request); 
						} 
						cpgqxx.setTp3(null);
					}
					this.productService.updateProductInfo(obj, cpgqxx, jytj);
					return this.showProductInfo(mapping, form, request, response);
				    }
			 
					
				}
				
				
			}

		} catch (Exception e) {
			log.error(e);
			e.printStackTrace();
		}
		return mapping.findForward("error");
	}
}
