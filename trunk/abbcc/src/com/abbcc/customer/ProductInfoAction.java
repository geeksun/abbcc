package com.abbcc.customer;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.abbcc.common.AppConstants;
import com.abbcc.pojo.Cpgqxx;
import com.abbcc.pojo.Jytj;
import com.abbcc.pojo.Product;
import com.abbcc.pojo.ProductType;
import com.abbcc.struts.action.BaseAction;
import com.abbcc.util.RequestUtils;
import com.abbcc.util.pagination.NormalPagination;
import com.abbcc.util.pagination.PageConstants;
import com.abbcc.util.pagination.Pagination;
import com.abbcc.util.product.ProductObject;
import com.abbcc.util.product.ProductTemplate;
import com.abbcc.util.product.ProductUtil;

public class ProductInfoAction extends BaseAction {
	public ActionForward addProductInfo(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {

		try {

			String productTypeId = request.getParameter("productTypeId");
			String orderType=request.getParameter( "orderType" );
			String productName=request.getParameter("productName");
			String prodcutTitle=request.getParameter("prodcutTitle");
			String ableDate=request.getParameter("ableDate");
			String desc=request.getParameter("desc");
			
			String price=request.getParameter("price");
			String orderCount=request.getParameter("orderCount");
			String unit=request.getParameter("unit");
			String productCount=request.getParameter("productCount");
			String freightDate=request.getParameter("freightDate");
			String merchantType=request.getParameter("merchantType");
			String hyjbxxid=(String)request.getSession().getAttribute("hyjbxxid");
		 
			//校验
			boolean hasNull = ProductUtil.hasNullParam(productTypeId,productName,prodcutTitle ,hyjbxxid);
			boolean isMathValues=ProductUtil.IsMathValue(orderType,ableDate ,price,productCount,orderCount,merchantType);
			if (hasNull||!isMathValues) {
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

						ProductObject obj = ProductUtil.getProductObject(
								product, request);
						 Cpgqxx cpgqxx=new Cpgqxx();
						 
						 cpgqxx.setCpmc(productName);//产品名称 
						 cpgqxx.setHyjbxxid(Integer.valueOf(hyjbxxid));  					
						 cpgqxx.setXxbt(prodcutTitle);//信息标题
						 cpgqxx.setCpshlm(productTypeId);//产品所属类目
						 cpgqxx.setXxsm(desc);//详细说明 
						 cpgqxx.setXxyxq(ableDate);//有效时间
						 cpgqxx.setSfyx(AppConstants.CPGQXX_SFYX_2);//是否有效
						 cpgqxx.setXxlx(orderType);
						  
						 
						 Jytj jytj=new Jytj();
						 jytj.setCpdj(price);
						 jytj.setFhqx(freightDate);//发货期限
						 jytj.setGhzl(productCount);//供货总量
						 jytj.setGyslc(merchantType);
						 jytj.setHyjbxxid(Integer.valueOf(hyjbxxid));
						 jytj.setJldw(unit); 
						 jytj.setZxqdl(orderCount);
						 this.productService.addProductInfo(obj,cpgqxx,jytj);
					}
				}
			}

		} catch (Exception e) {
			log.error(e);
			e.printStackTrace();
		} 
		return this.showProductInfo(mapping, form, request, response);
	}

	public ActionForward productList(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {

		String userid = (String) request.getSession().getAttribute("hyjbxxid");

		String orderType = request.getParameter("orderType"); //信息类型
		String productName =request.getParameter("productName");//产品名称
		int _userId = Integer.valueOf(userid);
		String auditType =request.getParameter("auditType");//审核类型 
		String overdue = request.getParameter("overdue");//是否过期 
		boolean hasNull = ProductUtil.hasNullParam(userid);
		if(hasNull){
			return mapping.findForward("error");
		}
		try {
			String action="productInfo.do?method=productList";
			int currentPage=RequestUtils.getIntParameter(request,PageConstants.PAGINATION_CURRENT_PAGE,1);
			int onePageSize=RequestUtils.getIntParameter(request,PageConstants.PAGINATION_ONE_PAGE_SIZE,10);
			Map params=new HashMap();
			params.put("orderType", orderType);
			params.put("productName", productName);
			params.put("auditType", auditType);
			params.put("overdue", overdue);
			Pagination pagination=new NormalPagination(currentPage,action,onePageSize,params);
			List productInfoList = this.productService.getProductInfoList( _userId, orderType, productName, auditType, overdue,pagination);

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

		int parentid = 0;

		List<ProductType> topCategory = this.productService
				.getProductTypeByParentId(parentid);
		try {
			if (topCategory != null && topCategory.size() > 0) {
				request.setAttribute("topCategory", topCategory);
				ProductType productType = topCategory.get(0);
				List<ProductType> secondCategory = this.productService
						.getProductTypeByParentId(productType.getId());
				request.setAttribute("secondCategory", secondCategory);
				if (secondCategory != null && secondCategory.size() > 0) {
					ProductType secondProductType = secondCategory.get(0);
					List<ProductType> thirdCategory = this.productService
							.getProductTypeByParentId(secondProductType.getId());
					request.setAttribute("thirdCategory", thirdCategory);

					if (thirdCategory != null && thirdCategory.size() > 0) {
						ProductType thridProductType = thirdCategory.get(0);
						int id = thridProductType.getId();
						String productTypeId = String.valueOf(id);
						Product product = this.productService
								.getProductByStateAndProductTypeId(
										Product.PRODUCT_STATE_IN_USED,
										productTypeId);

						String path = request.getContextPath();

						String productTemplate = ProductTemplate.getInstance()
								.getTableStyle(product, path);
						request
								.setAttribute("productTemplate",
										productTemplate);
					}

				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mapping.findForward("product");

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

}
