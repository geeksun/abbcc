package com.abbcc.admin;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.abbcc.pojo.ProductType;
import com.abbcc.struts.action.BaseAction;
import com.abbcc.util.product.Product; 
import com.abbcc.util.product.ProductUtil;
import com.abbcc.util.resource.InitResource;
import com.abbcc.util.resource.ResourceUtil;

public class ProductAction extends BaseAction {
	 
	public ActionForward createProduct(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		try {
			
			String productName =request.getParameter("productName"); 
			String productType=request.getParameter("productType"); 
			String[] property=request.getParameterValues ("property"); 
			String[] isNull=request.getParameterValues("isNull"); 
			String[] unit =request.getParameterValues("unit"); 
			String[] remark=request.getParameterValues("remark"); 
			String[] type =request.getParameterValues("type"); 
			String[] isShow=request.getParameterValues("isShow"); 
			String[] isHidden=request.getParameterValues("isHidden"); 
			
			boolean hasNull=ProductUtil.hasNullParam(productName,productType,
					property,isNull,unit,type,isShow,isHidden);
			boolean isEqualLength=ProductUtil.isEqualLength(property,isNull,unit,remark,type,isShow,isHidden);
			boolean isPropertyMatchType=ProductUtil.isPropertyMatchType(type, property);
			if(hasNull||!isEqualLength||!isPropertyMatchType){
				System.out.println("hasNull"); 
				 
			}else
			{
				int len=property.length;
				Product product=new Product();
				String _property=ProductUtil.arrayToString(property);
				String _isNull=ProductUtil.arrayToString(isNull);
				String _unit=ProductUtil.arrayToString(unit);
				String _remark=ProductUtil.arrayToString(remark);
				String _type=ProductUtil.arrayToString(type);
				String _isShow=ProductUtil.arrayToString(isShow);
				String _isHidden=ProductUtil.arrayToString(isHidden);
				String formName=ProductUtil.createFormName(len);
				String tableFiledName=ProductUtil.createFiled(len);
				
				String tableName= ProductUtil.getNextTableName();
				String id= ProductUtil.getTableIdFiled();
				
				product.setIdFiledName(id);
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
				product.setState(Product.PRODUCT_STATE_IN_USED);
				product.setTableName(tableName);
				
				
				
				 
				
			}
		

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
	public ActionForward showProduct(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		/*Map<String, List<ProductType>> map = InitResource.getProductType();
		List<ProductType> topCategory = map.get(ResourceUtil.PRODUCT_ROOT);
		if(topCategory!=null&&topCategory.size()>0){
			ProductType productType=topCategory.get(0); 
			List<ProductType> secondCategory= map.get(productType.getId());
			request.setAttribute("secondCategory", secondCategory); 
			if(secondCategory!=null&&secondCategory.size()>0){
				
				ProductType secondProductType=secondCategory.get(0); 
				List<ProductType> thirdCategory= map.get(secondProductType.getId());
				request.setAttribute("thirdCategory", thirdCategory);
				if(thirdCategory!=null&&thirdCategory.size()>0){
					ProductType thirdProductType=thirdCategory.get(0); 
				   
					Map<String, Form> formMap=InitResource.getFormMap();
					Form f=formMap.get(thirdProductType.getId());
					String path=request.getContextPath(); 
					String productTemplate=ProductTemplate.getInstance().getProductTemplate(f,path);
					request.setAttribute("productTemplate", productTemplate);
					
				}
				
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
		return mapping.findForward("createProduct");*/
		return null;
		
	}
	public ActionForward showProductType(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) { 
		try{
		List<ProductType> topCategory=this.productService.getProductTypeByParentId(0); 
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
	public ActionForward addProductType(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) { 
		String parentId=request.getParameter("parentId");
		String name=request.getParameter("name");
		String typeId=request.getParameter("typeId");
		String type=request.getParameter("type");
		String isShow=request.getParameter("isShow");
	  
		
		boolean hasNummParam=ProductUtil.hasNullParam(parentId,name,typeId,type,isShow);
		
		if(!hasNummParam){
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
		 
		return this.showProductType(mapping, form, request, response);
	}
	public ActionForward updateProductType(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) { 
		String id=request.getParameter("id");
		String parentId=request.getParameter("parentId");
		String name=request.getParameter("name");
		String typeId=request.getParameter("typeId");
		String type=request.getParameter("type");
		String isShow=request.getParameter("isShow");
	  
		
		boolean hasNummParam=ProductUtil.hasNullParam(parentId,name,typeId,type,isShow);
		
		if(!hasNummParam){
			int _id=Integer.valueOf(id);
			int _parentId=Integer.valueOf(parentId);
			int _type=Integer.valueOf(type);
			int _isShow=Integer.valueOf(isShow);
			ProductType productType=new ProductType();
			productType.setName(name);
			productType.setParentId(_parentId);
			productType.setIsShow(_isShow);
			productType.setType(_type);
			productType.setTypeId(typeId); 
			productType.setId(_id);
			this.productService.addProductType(productType);
		}
		 
		return this.showProductType(mapping, form, request, response);
	}


}
