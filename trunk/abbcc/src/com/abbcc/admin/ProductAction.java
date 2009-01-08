package com.abbcc.admin;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.abbcc.common.AppConstants;
import com.abbcc.pojo.Product;
import com.abbcc.pojo.ProductType;
import com.abbcc.struts.action.BaseAction;
import com.abbcc.util.RequestUtils;
import com.abbcc.util.pagination.NormalPagination;
import com.abbcc.util.pagination.PageConstants;
import com.abbcc.util.pagination.Pagination;
import com.abbcc.util.product.ProductInfo;
import com.abbcc.util.product.ProductTemplate;
import com.abbcc.util.product.ProductUtil;

public class ProductAction extends BaseAction {

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
				System.out.println("hasNull");

			} else {
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

				product.setProductTypeId(productType);
				// product.setState(Product.PRODUCT_STATE_IN_USED);
				product.setTableName(tableName);
				product.setProductName(productName);

				this.productService.addProduct(product);

			}

		} catch (Exception e) {
			log.error(e);
			e.printStackTrace();
		}
		return this.showProduct(mapping, form, request, response);
	}

	public ActionForward productList(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {

		return mapping.findForward("");
	}

	public ActionForward deleteProduct(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {

		return mapping.findForward("");
	}

	public ActionForward updateProduct(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {

		return mapping.findForward("");
	}

	public ActionForward showProduct(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		try {
			int parentid = AppConstants.PRODUCT_TYPE_TOP_ID;
			List<ProductType> topCategory = this.productService
					.getProductTypeByParentId(parentid);
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
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mapping.findForward("createProduct");
	}

	public ActionForward productInfoList(ActionMapping mapping,
			ActionForm form, HttpServletRequest request,
			HttpServletResponse response) {

		String userid = (String) request.getSession().getAttribute("hyjbxxid");

		String orderType = RequestUtils.getParameter(request, "orderType"); // 信息类型
		String productName = RequestUtils.getParameter(request, "productName");// 产品名称

		int _userId = Integer.valueOf(userid);
		String auditType = RequestUtils.getParameter(request, "auditType");// 审核类型
		String overdue = RequestUtils.getParameter(request, "overdue");// 是否过期
		boolean hasNull = ProductUtil.hasNullParam(userid);
		if (hasNull) {
			return mapping.findForward("error");
		}
		try {
			String action = "product.do?method=productInfoList";
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
		} catch (Exception e) {
			e.printStackTrace();
			log.error(e);
		}

		return mapping.findForward("productInfoList");
	}

	public ActionForward updateProductInfoAuditType(ActionMapping mapping,
			ActionForm form, HttpServletRequest request,
			HttpServletResponse response) {

		String userid = (String) request.getSession().getAttribute("hyjbxxid");
		// String[] productInfoId =
		// request.getParameterValues("productInfoIds");//是否过期
		long[] productInfoIds = RequestUtils.getLongParameters(request,
				"productInfoIds");

		boolean hasNull = ProductUtil.hasNullParam(userid, productInfoIds);
		if (hasNull) {
			return mapping.findForward("error");
		}
		int _userId = Integer.valueOf(userid);
		String auditType = AppConstants.CPGQXX_SFYX_1;// 审核类型

		try {
			this.productService.updateProductInfoAuditType(auditType,
					productInfoIds);

		} catch (Exception e) {
			e.printStackTrace();
			log.error(e);
		}

		return this.productInfoList(mapping, form, request, response);
	}

	public ActionForward showProductInfo(ActionMapping mapping,
			ActionForm form, HttpServletRequest request,
			HttpServletResponse response) {
		try {

			String productInfoId = RequestUtils.getParameter(request,
					"productInfoId");
			long _productInfoId = Long.valueOf(productInfoId);
			ProductInfo productInfo = productService
					.getProductInfoById(_productInfoId);
			request.setAttribute("productInfo", productInfo);
			if (productInfo != null) {
				int parentid = AppConstants.PRODUCT_TYPE_TOP_ID;

				List<ProductType> topCategory = this.productService
						.getProductTypeByParentId(parentid);

				if (topCategory != null && topCategory.size() > 0) {
					request.setAttribute("topCategory", topCategory);
					ProductType productType = topCategory.get(0);
					List<ProductType> secondCategory = this.productService
							.getProductTypeByParentId(productType.getId());
					request.setAttribute("secondCategory", secondCategory);
					if (secondCategory != null && secondCategory.size() > 0) {
						ProductType secondProductType = secondCategory.get(0);
						List<ProductType> thirdCategory = this.productService
								.getProductTypeByParentId(secondProductType
										.getId());
						request.setAttribute("thirdCategory", thirdCategory);

						if (thirdCategory != null && thirdCategory.size() > 0) {
							ProductType thridProductType = thirdCategory.get(0);
							int id = thridProductType.getId();
							String productTypeId = String.valueOf(id);
							Product product = productInfo.getProduct();

							String path = request.getContextPath();

							String productTemplate = ProductTemplate
									.getInstance().getTableStyle(product, path,
											productInfo.getMapValue());
							request.setAttribute("productTemplate",
									productTemplate);
						}

					}
				}
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return mapping.findForward("showProduct");
	}

}
