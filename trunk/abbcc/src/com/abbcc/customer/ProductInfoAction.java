package com.abbcc.customer;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.PrintWriter;
import java.net.URL;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.upload.FormFile;
import org.apache.struts.upload.MultipartRequestWrapper;
import org.apache.struts2.dispatcher.multipart.MultiPartRequestWrapper;

import com.abbcc.common.AppConstants;
import com.abbcc.common.UploadUtil;
import com.abbcc.common.UserUtil;
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

public class ProductInfoAction extends BaseAction {

	public ActionForward addProductInfo(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {

		try {
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
				Product product = this.productService
						.getProductByStateAndProductTypeId(
								Product.PRODUCT_STATE_IN_USED, productTypeId);
				if (product != null) {
					String[] formNames = ProductUtil.arrayToString(product
							.getFormName());
					String[] filedNames = ProductUtil.arrayToString(product
							.getOtherFiledName());
					if (formNames.length != filedNames.length) {
						return mapping.findForward("error");
					} else {

						ProductObject obj = ProductUtil.getProductInsertObject(
								product, request);
						Cpgqxx cpgqxx = new Cpgqxx();

						cpgqxx.setCpmc(productName);// 产品名称
						cpgqxx.setHyjbxxid(Integer.valueOf(hyjbxxid));
						cpgqxx.setXxbt(prodcutTitle);// 信息标题
						cpgqxx.setCpshlm(productTypeId);// 产品所属类目
						cpgqxx.setXxsm(desc);// 详细说明
						cpgqxx.setXxyxq(ableDate);// 有效时间
						cpgqxx.setSfyx(AppConstants.CPGQXX_SFYX_2);// 是否有效
						cpgqxx.setXxlx(orderType);
						cpgqxx.setTp1(updatePic1Name);
						cpgqxx.setTp2(updatePic2Name);
						cpgqxx.setTp3(updatePic3Name);

						Jytj jytj = new Jytj();
						jytj.setCpdj(price);
						jytj.setFhqx(freightDate);
						jytj.setGhzl(productCount);
						jytj.setGyslc(merchantType);
						jytj.setHyjbxxid(Integer.valueOf(hyjbxxid));
						jytj.setJldw(unit);
						jytj.setZxqdl(orderCount);
						this.productService.addProductInfo(obj, cpgqxx, jytj);
						UploadUtil.saveProductPic(updatePic1,updatePic1Name,request);
						UploadUtil.saveProductPic(updatePic2,updatePic2Name,request);
						UploadUtil.saveProductPic(updatePic3,updatePic3Name,request);
						
						
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
			String action = "productInfo.do?method=productInfoList";
			int currentPage = RequestUtils.getIntParameter(request,
					PageConstants.PAGINATION_CURRENT_PAGE, 1);
			int onePageSize = RequestUtils.getIntParameter(request,
					PageConstants.PAGINATION_ONE_PAGE_SIZE, 10);
			Map params = new HashMap();
			params.put("orderType", orderType);
			params.put("productName", productName);
			params.put("auditType", auditType);
			params.put("overdue", overdue);

			Pagination pagination = new NormalPagination(currentPage, action,
					onePageSize, params);
			List productInfoList = this.productService.getProductInfoList(
					orderType, productName, auditType, overdue, pagination);

			request.setAttribute("productInfoList", productInfoList);
			request.setAttribute("pagination", pagination);
			request.setAttribute("auditType", auditType);
			request.setAttribute("overdue", overdue);
			return mapping.findForward("productInfoList");
		} catch (Exception e) {
			e.printStackTrace();
			log.error(e);
		}

		return mapping.findForward("error");
	}
	/**
	 * @deprecated
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 */
	public ActionForward productList(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {

		String userid = (String) request.getSession().getAttribute("hyjbxxid");

		String orderType = request.getParameter("orderType"); // 信息类型
		String productName = request.getParameter("productName");// 产品名称
		int _userId = Integer.valueOf(userid);
		String auditType = request.getParameter("auditType");// 审核类型
		String overdue = request.getParameter("overdue");// 是否过期
		boolean hasNull = ProductUtil.hasNullParam(userid);
		if (hasNull) {
			return mapping.findForward("error");
		}
		try {
			String action = "productInfo.do?method=productList";
			int currentPage = RequestUtils.getIntParameter(request,
					PageConstants.PAGINATION_CURRENT_PAGE, 1);
			int onePageSize = RequestUtils.getIntParameter(request,
					PageConstants.PAGINATION_ONE_PAGE_SIZE, 10);
			Map params = new HashMap();
			params.put("orderType", orderType);
			params.put("productName", productName);
			params.put("auditType", auditType);
			params.put("overdue", overdue);
			Pagination pagination = new NormalPagination(currentPage, action,
					onePageSize, params);
			List productInfoList = this.productService.getProductInfoList(
					_userId, orderType, productName, auditType, overdue,
					pagination);

			request.setAttribute("productInfoList", productInfoList);
			request.setAttribute("pagination", pagination);

		} catch (Exception e) {
			e.printStackTrace();
			log.error(e);
		}

		return mapping.findForward("productInfoList");
	}

	public ActionForward deleteProduct(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {

		return mapping.findForward("");
	}

	public ActionForward updateProduct(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {

		return mapping.findForward("");
	}

	public ActionForward productTemplate(ActionMapping mapping,
			ActionForm form, HttpServletRequest request,
			HttpServletResponse response) {
		response.setContentType("text/xml;charset=UTF-8");
		response.setHeader("Pragma", "No-cache");
		response.setHeader("Cache-Control", "no-cache");
		response.setDateHeader("Expires", 0);
		String node = RequestUtils.getParameter(request, "key");
		try {
			if (node != null) {
				Product product = this.productService
						.getProductByStateAndProductTypeId(
								Product.PRODUCT_STATE_IN_USED, node);

				String path = request.getContextPath();

				String productTemplate = ProductTemplate.getInstance()
						.getTableStyle(product, path);

				PrintWriter out = response.getWriter();

				out.write(productTemplate);

			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public ActionForward showProductInfo(ActionMapping mapping,
			ActionForm form, HttpServletRequest request,
			HttpServletResponse response) {
		try {

			String productInfoId = RequestUtils.getParameter(request,
					"productInfoId");
			if(productInfoId!=null){
				long _productInfoId = Long.valueOf(productInfoId);
				ProductInfo productInfo = productService
						.getProductInfoById(_productInfoId);
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
								request.setAttribute("topProductType",
										topProductType);

							}
						}

						String path = request.getContextPath();

						String productTemplate = ProductTemplate.getInstance()
								.getTableStyle(product, path, productInfo.getMapValue());
						request.setAttribute("productTemplate", productTemplate);

					}

				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return mapping.findForward("showProductInfo");
	}

	public ActionForward productSecondCategory(ActionMapping mapping,
			ActionForm form, HttpServletRequest request,
			HttpServletResponse response) {
		response.setContentType("text/xml;charset=UTF-8");
		response.setHeader("Pragma", "No-cache");
		response.setHeader("Cache-Control", "no-cache");
		response.setDateHeader("Expires", 0);

		try {
			PrintWriter out = response.getWriter();
			StringBuilder result = new StringBuilder();

			String node = RequestUtils.getParameter(request, "key");

			result.append("<select name=\"secondCatFormKey\" size=\"8\""
					+ " style=\"width: 129px;\" id=\"secondCatFormKey\""
					+ " onchange=\"onChangeSecondCategory(this.value)\">");

			if (node != null) {
				int parentId = Integer.valueOf(node);
				List secondCategory = this.productService
						.getProductTypeByParentId(parentId);
				if (secondCategory != null) {
					Iterator iter = secondCategory.iterator();
					while (iter.hasNext()) {
						ProductType productType = (ProductType) iter.next();
						if (productType != null) {
							String name = productType.getName();
							int value = productType.getId();
							int isShow = productType.getIsShow();
							boolean able = isShow == ProductType.PRODUCT_TYPE_SHOW ? true
									: false;
							result.append("<option value='" + value + "'");
							if (able) {
								result
										.append(" style=\"color: rgb(204, 204, 204);\" ");
							}
							result.append(" >");
							result.append(name);
							result.append("</option>");

						}
					}
				}

			}
			result.append("</select>");
			out.write(result.toString());
		} catch (Exception e) {
			log.error(e);
			e.printStackTrace();
		}

		return null;

	}

	public ActionForward productThirdCategory(ActionMapping mapping,
			ActionForm form, HttpServletRequest request,
			HttpServletResponse response) {
		response.setContentType("text/xml;charset=UTF-8");
		response.setHeader("Pragma", "No-cache");
		response.setHeader("Cache-Control", "no-cache");
		response.setDateHeader("Expires", 0);

		try {
			PrintWriter out = response.getWriter();
			StringBuilder result = new StringBuilder();
			String node = RequestUtils.getParameter(request, "key");

			result.append("<select name=\"secondCatFormKey\" size=\"8\""
					+ " style=\"width: 129px;\" id=\"secondCatFormKey\""
					+ " onchange=\"onChangeLeafCategory(this.value)\">");
			if (node != null) {
				int parentId = Integer.valueOf(node);

				List secondCategory = (List) this.productService
						.getProductTypeByParentId(parentId);
				if (secondCategory != null) {
					Iterator iter = secondCategory.iterator();
					while (iter.hasNext()) {
						ProductType productType = (ProductType) iter.next();
						if (productType != null) {
							String name = productType.getName();
							int value = productType.getId();
							int isShow = productType.getIsShow();
							boolean able = isShow == ProductType.PRODUCT_TYPE_SHOW ? true
									: false;

							result.append("<option value='" + value + "'");
							if (able) {
								result
										.append(" style=\"color: rgb(204, 204, 204);\" ");
							}
							result.append(" >");
							result.append(name);
							result.append("</option>");

						}
					}
				}

			}
			result.append("</select>");
			out.write(result.toString());
		} catch (Exception e) {
			log.error(e);
			e.printStackTrace();
		}

		return null;

	}

	public ActionForward uploadFile(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		MultipartRequestWrapper partRequest = (MultipartRequestWrapper) request;
		MultiPartRequestWrapper multiPart = (MultiPartRequestWrapper) partRequest
				.getRequest();
		File[] files = multiPart.getFiles("uploadFile");
		String fileName = multiPart.getParameter("fileName");
		String[] sss = multiPart.getFileNames("uploadFile");
		String[] dd = multiPart.getFileSystemNames("uploadFile");

		String name = files[0].getName();
		String path = files[0].getPath();
		long size = files[0].length();
		//FormFile formFile=new FormFile();

		if (size > 2048000) {

		}
		return null;
	}

	public static void main(String[] args) {
		String dd = "http://b13.photo.store.qq.com/http_imgload.cgi?/rurl4_b=146916496eff73710064759d0e65dd83a2805a913f97a5c463cb50f2db5f0a297da00adb6dfa7d05a982d478163b5a7aa788647bc524186574da9b972e313d7b14471c786f091dbf35e7fad11afa09745837eac6";
		try {
			// URL url = new
			// URL("http://www.javaworld.com/images/012407-tipsbox.jpg");
			URL url = new URL(dd);

			BufferedImage image = ImageIO.read(url);
			image.getData();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println(dd.length());
		for (int i = 0; i < dd.length(); i = i + 32) {
			System.out.println(dd.substring(i, i + 32));
		}
	}
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
				String[] formNames = ProductUtil.arrayToString(product
						.getFormName());
				String[] filedNames = ProductUtil.arrayToString(product
						.getOtherFiledName());
				if (formNames.length != filedNames.length) {
					return mapping.findForward("error");
				} else {

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
					this.productService.updateProductInfo(obj, cpgqxx, jytj);
					
					if(uploadPicState1.equals("upload")){
						String oldPicName=cpgqxx.getTp1();
						if(oldPicName!=null){
							UploadUtil.deleteProductPic(oldPicName, request); 
						}
						UploadUtil.saveProductPic(updatePic1,updatePic1Name,request);
					}else if(uploadPicState1.equals("delete")){
						String oldPicName=cpgqxx.getTp1();
						if(oldPicName!=null){
							UploadUtil.deleteProductPic(oldPicName, request); 
						}
						
						cpgqxx.setTp1(null);
					}
					
					if(uploadPicState2.equals("upload")){
						String oldPicName=cpgqxx.getTp2();
						if(oldPicName!=null){
							UploadUtil.deleteProductPic(oldPicName, request); 
						}
						UploadUtil.saveProductPic(updatePic2,updatePic2Name,request);
					}else if(uploadPicState1.equals("delete")){
						String oldPicName=cpgqxx.getTp2();
						if(oldPicName!=null){
							UploadUtil.deleteProductPic(oldPicName, request); 
						} 
						cpgqxx.setTp2(null);
					}
					if(uploadPicState1.equals("upload")){
						String oldPicName=cpgqxx.getTp3();
						if(oldPicName!=null){
							UploadUtil.deleteProductPic(oldPicName, request); 
						}
						UploadUtil.saveProductPic(updatePic3,updatePic3Name,request);
					}else if(uploadPicState1.equals("delete")){
						String oldPicName=cpgqxx.getTp3();
						if(oldPicName!=null){
							UploadUtil.deleteProductPic(oldPicName, request); 
						} 
						cpgqxx.setTp3(null);
					}
				  
					return this.showProductInfo(mapping, form, request, response);
				}
			}
					
				}
				
				
			}

		} catch (Exception e) {
			log.error(e);
			e.printStackTrace();
		}
		return mapping.findForward("error");
	}
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
	
}
