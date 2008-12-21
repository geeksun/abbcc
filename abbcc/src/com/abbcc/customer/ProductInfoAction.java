package com.abbcc.customer;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.abbcc.pojo.Product;
import com.abbcc.pojo.ProductType;
import com.abbcc.struts.action.BaseAction;
import com.abbcc.util.RequestUtils;
import com.abbcc.util.product.ProductObject;
import com.abbcc.util.product.ProductTemplate;
import com.abbcc.util.product.ProductUtil;

public class ProductInfoAction extends BaseAction {
	public ActionForward addProductInfo(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		try {
			
		String	productTypeId =request.getParameter("productTypeId");
		boolean hasNull=ProductUtil.hasNullParam(productTypeId);
		if(hasNull){
			 
			
		}else
		{
			Product product=this.productService.getProductByStateAndProductTypeId(Product.PRODUCT_STATE_IN_USED, productTypeId);
			if(product!=null){
				String[] formNames = ProductUtil.arrayToString(product.getFormName());
				String[] filedNames=ProductUtil.arrayToString(product.getOtherFiledName()); 
				if(formNames.length!=filedNames.length){
					
					
				}else
				{
				 
					ProductObject obj=ProductUtil.getProductObject(product,request);
					this.productService.addProductInfo(obj);
				} 
			} 
		}
		
			
		/*	String sql = ProductTemplate.getInstance()
					.getProductInsertValueSql(request,
							ProductTemplate.PRODUCT_KEY);
*/
			//productService.addProduct(null, null, sql);

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
 

	public ActionForward showProductInfo(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		
		 
		try{
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
					
					if(thirdCategory!=null&&thirdCategory.size()>0){
						ProductType thridProductType=thirdCategory.get(0);
						int id=thridProductType.getId();
						String productTypeId=String.valueOf(id);
						Product product=this.productService.getProductByStateAndProductTypeId(Product.PRODUCT_STATE_IN_USED, productTypeId);
						
						String path=request.getContextPath(); 
						product=new Product();
						product.setIdFiledName("id");
						product.setIsHidden("false,false,false,true");
						product.setIsNull("true,true,true,false");
						product.setIsShow("true,true,true,true");
						product.setOtherFiledName("f_1,f_2,f_3,f_4");
						product.setPropertyName("品牌,品牌2,类别:hehe#heihei#lala,品牌3");
						product.setRemark("ss,ss,ss,ss");
						product.setType("text,text,select,text");
						product.setUnit("mm,mm,nn,nn");
						product.setFormName("f_1,f_2,f_3,f_4"); 
						product.setProductTypeId("010101");
						product.setState(Product.PRODUCT_STATE_IN_USED);
						product.setTableName("t_010101");
						String productTemplate=ProductTemplate.getInstance().getTableStyle(product,path);
						request.setAttribute("productTemplate", productTemplate);
					}
					
					
				}  
			} 
			}catch(Exception e){
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
			
			
			result.append("<select name=\"secondCatFormKey\" size=\"8\""+
				" style=\"width: 129px;\" id=\"secondCatFormKey\""+
				" onchange=\"onChangeSecondCategory(this.value)\">");
			if (node != null) { 
				int parentId=Integer.valueOf(node);
				List secondCategory=this.productService.getProductTypeByParentId(parentId);
				if(secondCategory!=null){
					Iterator iter=secondCategory.iterator();
					while(iter.hasNext()){
						ProductType productType=(ProductType)iter.next();
						if(productType!=null){
							String name=productType.getName();
							int value = productType.getId();
							int isShow = productType.getIsShow();
							boolean able=isShow==ProductType.PRODUCT_TYPE_SHOW?true:false;
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
				" style=\"width: 129px;\" id=\"secondCatFormKey\""+
				" onchange=\"onChangeLeafCategory(this.value)\">");
			if (node != null) { 
				int parentId=Integer.valueOf(node);
				
				List secondCategory=(List)this.productService.getProductTypeByParentId(parentId);
				if(secondCategory!=null){
					Iterator iter=secondCategory.iterator();
					while(iter.hasNext()){
						ProductType productType=(ProductType)iter.next();
						if(productType!=null){
							String name=productType.getName();
							int value = productType.getId();
							int isShow = productType.getIsShow();
							boolean able=isShow==ProductType.PRODUCT_TYPE_SHOW?true:false;
						
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

}
