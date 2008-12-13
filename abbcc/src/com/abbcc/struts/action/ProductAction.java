package com.abbcc.struts.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
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
import com.abbcc.util.resource.property.Form;

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
			Map<String, List<ProductType>> map = InitResource.getProductType();
			String node = RequestUtils.getParameter(request, "key");
			
			
			result.append("<select name=\"secondCatFormKey\" size=\"8\""+
				" style=\"width: 129px;\" id=\"secondCatFormKey\""+
				" onchange=\"onChangeSecondCategory(this.value)\">");
			if (node != null) { 
				List secondCategory=(List) map.get(node);
				if(secondCategory!=null){
					Iterator iter=secondCategory.iterator();
					while(iter.hasNext()){
						ProductType productType=(ProductType)iter.next();
						if(productType!=null){
							String name=productType.getName();
							String value=productType.getId();
							boolean able=productType.isAble();
							result.append("<option value='"+value+"'");
							if(able){
								result.append(" style=\"color: rgb(204, 204, 204);\" ");
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
		} catch (IOException e) {
			log.error(e);
			e.printStackTrace();
		}

		return null;

	}
	public ActionForward productTemplate(ActionMapping mapping,
			ActionForm form, HttpServletRequest request,
			HttpServletResponse response) {
		response.setContentType("text/xml;charset=UTF-8");
		response.setHeader("Pragma", "No-cache");
		response.setHeader("Cache-Control", "no-cache");
		response.setDateHeader("Expires", 0);  
		String node = RequestUtils.getParameter(request, "key");
		Map<String, Form> map=InitResource.getFormMap();
		Form f=map.get(node);
		String path=request.getContextPath();
		
		
		String template=ProductTemplate.getInstance().getProductTemplate(f,path);
		try {  
			PrintWriter out = response.getWriter();
			out.write(template);
		} catch (IOException e) {
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
			Map<String, List<ProductType>> map = InitResource.getProductType();
			String node = RequestUtils.getParameter(request, "key");
			
			
			result.append("<select name=\"secondCatFormKey\" size=\"8\""+
				" style=\"width: 129px;\" id=\"secondCatFormKey\""+
				" onchange=\"onChangeLeafCategory(this.value)\">");
			if (node != null) { 
				List secondCategory=(List) map.get(node);
				if(secondCategory!=null){
					Iterator iter=secondCategory.iterator();
					while(iter.hasNext()){
						ProductType productType=(ProductType)iter.next();
						if(productType!=null){
							String name=productType.getName();
							String value=productType.getId();
							boolean able=productType.isAble();
							result.append("<option value='"+value+"'");
							if(able){
								result.append(" style=\"color: rgb(204, 204, 204);\" ");
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
		} catch (IOException e) {
			log.error(e);
			e.printStackTrace();
		}

		return null;

	}

	public ActionForward showProduct(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		Map<String, List<ProductType>> map = InitResource.getProductType();
		List<ProductType> topCategory = map.get(ResourceUtil.PRODUCT_ROOT);
		if(topCategory!=null&&topCategory.size()>0){
			ProductType productType=topCategory.get(0); 
			List<ProductType> secondCategory= map.get(productType.getId());
			request.setAttribute("secondCategory", secondCategory); 
			if(secondCategory!=null&&secondCategory.size()>0){
				
				ProductType secondProductType=secondCategory.get(0); 
				List<ProductType> thirdCategory= map.get(secondProductType.getId());
				request.setAttribute("thirdCategory", thirdCategory);
				
			}
		} 
		InitResource initResource=new InitResource();
		try {
			String path=request.getRealPath("/");
			initResource.init(path );
		} catch ( Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		request.setAttribute("topCategory", topCategory);  
		return mapping.findForward("product");
	}

}
