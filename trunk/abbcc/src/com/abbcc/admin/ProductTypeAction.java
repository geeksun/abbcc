package com.abbcc.admin;

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

import com.abbcc.pojo.ProductType;
import com.abbcc.struts.action.BaseAction;
import com.abbcc.util.RequestUtils;
import com.abbcc.util.product.ProductUtil;
import com.abbcc.util.resource.InitResource;
import com.abbcc.util.resource.ProductTemplate;
import com.abbcc.util.resource.property.Form;

public class ProductTypeAction extends BaseAction {
	public ActionForward showProductType(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) { 
		try{
		String productTypeMenu=request.getParameter("productTypeMenu");
		if(productTypeMenu==null)productTypeMenu="3";
		request.setAttribute("productTypeMenu", productTypeMenu);
		int parentid=0;
		List<ProductType> topCategory=this.productService.getProductTypeByParentId(parentid); 
		if(topCategory!=null&&topCategory.size()>0){
			request.setAttribute("topCategory", topCategory); 
			ProductType productType=topCategory.get(0);
			List<ProductType> secondCategory=this.productService.getProductTypeByParentId(productType.getId()); 
			request.setAttribute("secondCategory", secondCategory); 
			if(secondCategory!=null&&secondCategory.size()>0){
				ProductType secondProductType=secondCategory.get(0);
				List<ProductType> thirdCategory=this.productService.getProductTypeByParentId(secondProductType.getId()); 
				request.setAttribute("thirdCategory", thirdCategory);  
			}  
		} 
		}catch(Exception e){
			e.printStackTrace();
		}
		return mapping.findForward("showProductType");
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
			
			
			result.append("<select name=\"secondCatFormKey\" size=\"8\""+
				" style=\"width: 129px;\" id=\"secondCatFormKey\""+
				" onchange=\"onChangeSecondCategory(this)\">");
			if (node != null) { 
				int parentId=Integer.valueOf(node);
				List secondCategory=this.productService.getProductTypeByParentId(parentId);
				if(secondCategory!=null){
					Iterator iter=secondCategory.iterator();
					while(iter.hasNext()){
						ProductType productType = (ProductType) iter.next();
						if (productType != null) {
							String name = productType.getName();
							int value = productType.getId();
							int isShow = productType.getIsShow();
							boolean able = isShow == ProductType.PRODUCT_TYPE_SHOW ? true
									: false;
							result.append("<option value=\"" + value + "\"");
							if (able) {
								result.append(" style=\"color: rgb(204, 204, 204);\" ");
							}
							result.append(" isShow='" + isShow + "' name='"
									+ name + "' >");
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
			  String node = RequestUtils.getParameter(request, "key");
			
			
			result.append("<select name=\"secondCatFormKey\" size=\"8\""+
					" onchange='onChangeLeafCategory(this)' "+
					" style=\"width: 129px;\" id=\"secondCatFormKey\" >" );
			if (node != null) { 
				int parentId=Integer.valueOf(node);
				
				List secondCategory=(List)this.productService.getProductTypeByParentId(parentId);
				if(secondCategory!=null){
					Iterator iter=secondCategory.iterator();
					while (iter.hasNext()) {
						ProductType productType = (ProductType) iter.next();
						if (productType != null) {
							String name = productType.getName();
							int value = productType.getId();
							int isShow = productType.getIsShow();
							boolean able = isShow == ProductType.PRODUCT_TYPE_SHOW ? true
									: false;
							result.append("<option value=\"" + value + "\"");
							if (able) {
								result.append(" style=\"color: rgb(204, 204, 204);\" ");
							}
							result.append(" isShow='" + isShow + "' name='"
									+ name + "' >");
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
	public ActionForward addProductType(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) { 
		try{
		String parentId=request.getParameter("parentId");
		String name=request.getParameter("typeName");
		String typeId=request.getParameter("typeId");
		String type=request.getParameter("type");
		type="1";
		String isShow=request.getParameter("isShow");
		if(isShow==null)isShow="1";
		
		boolean hasNullParam=ProductUtil.hasNullParam(parentId,name,type,isShow);
		
		if(!hasNullParam){
			int _parentId=Integer.valueOf(parentId);
			int _type=Integer.valueOf(type);
			int _isShow=Integer.valueOf(isShow);
			ProductType productType=new ProductType();
			productType.setName(name);
			productType.setParentId(_parentId);
			productType.setIsShow(_isShow);
			productType.setType(_type);
			productType.setTypeId(typeId); 
			this.productService.addProductType(productType);
		}
		}catch(Exception e){
			e.printStackTrace();
		}
		return this.showProductType(mapping, form, request, response);
	}
	public ActionForward deleteProductType(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) { 
		try{
			String id=request.getParameter("id");
			 
			boolean hasNummParam=ProductUtil.hasNullParam(id);
			
			if(!hasNummParam){
				 
				int _id=Integer.valueOf(id); 
				 this.productService.deleteProductTypeAndChildProductTypeById(_id);
			}
			}catch(Exception e){
				e.printStackTrace();
			}
			return this.showProductType(mapping, form, request, response);
		}
	public ActionForward updateProductType(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) { 
		try{
		String id=request.getParameter("id");
		//String parentId=request.getParameter("parentId");
		String name=request.getParameter("typeName");
		String typeId=request.getParameter("typeId");
		String type=request.getParameter("type");
		type="1";
		String isShow=request.getParameter("isShow");
		if(isShow==null||isShow.equals("")){
			isShow="2";
		}
		
		boolean hasNummParam=ProductUtil.hasNullParam(id,name,type,isShow);
		
		if(!hasNummParam){
			int _id=Integer.valueOf(id); 
			int _type=Integer.valueOf(type);
			int _isShow=Integer.valueOf(isShow);
			ProductType productType=productService.getProductTypeById(_id);
			if(productType!=null){
				productType.setName(name);
				productType.setIsShow(_isShow); 
				productType.setType(_type);
				productType.setTypeId(typeId); 
			}
			 
			 this.productService.updateProductType(productType);
		}
		}catch(Exception e){
			e.printStackTrace();
		}
		return this.showProductType(mapping, form, request, response);
	}
	

}
