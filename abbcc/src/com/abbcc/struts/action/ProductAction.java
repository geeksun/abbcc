package com.abbcc.struts.action;

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
	public ActionForward productCategory(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		Map<String, List<ProductType>> map=InitResource.getProductType();
		String node=	RequestUtils.getParameter(request, "node");
		if(node!=null){
			List<ProductType> list=map.get(node);  
			request.setAttribute("list", list);
			return mapping.findForward("product");
		} 
		return null;
	
	}
	public ActionForward showProduct(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		Map<String, List<ProductType>> map=InitResource.getProductType(); 
		List<ProductType> list=map.get(ResourceUtil.PRODUCT_ROOT);  
		request.setAttribute("list", list);
		return mapping.findForward("product");
	}
	
}
