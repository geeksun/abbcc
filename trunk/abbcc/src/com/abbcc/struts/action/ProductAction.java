package com.abbcc.struts.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.abbcc.util.RequestUtils;
import com.abbcc.util.product.ProductType;
import com.abbcc.util.resource.InitResource;
import com.abbcc.util.resource.ProductTemplate;
import com.abbcc.util.resource.ResourceUtil;

public class ProductAction extends BaseAction {
	public ActionForward addProduct(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		try {
			String sql = ProductTemplate.getInstance()
					.getProductInsertValueSql(request,
							ProductTemplate.PRODUCT_KEY);

			productService.addProduct(null, null, sql);

		} catch (Exception e) {
			log.error(e);
			e.printStackTrace();
		}
		return mapping.findForward("");
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

	public ActionForward productCategory(ActionMapping mapping,
			ActionForm form, HttpServletRequest request,
			HttpServletResponse response) {
		response.setContentType("text/xml;charset=UTF-8");
		response.setHeader("Pragma", "No-cache");
		response.setHeader("Cache-Control", "no-cache");
		response.setDateHeader("Expires", 0); 
		
		try {
			PrintWriter out = response.getWriter();
			String result = ""; 
			Map<String, List<ProductType>> map = InitResource.getProductType();
			String node = RequestUtils.getParameter(request, "node");
			if (node != null) {
				List<ProductType> list = map.get(node);

			}
			out.write(result);
		} catch (IOException e) {
			log.error(e);
			e.printStackTrace();
		}

		return null;

	}

	public ActionForward showProduct(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		Map<String, List<ProductType>> map = InitResource.getProductType();
		List<ProductType> productTypeList = map.get(ResourceUtil.PRODUCT_ROOT);
		request.setAttribute("productTypeList", productTypeList);
		return mapping.findForward("product");
	}

}
