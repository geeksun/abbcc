package com.abbcc.customer;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.abbcc.struts.action.BaseAction;
import com.abbcc.util.product.Product;
import com.abbcc.util.product.ProductTemplate;
import com.abbcc.util.product.ProductType;
import com.abbcc.util.resource.InitResource; 
import com.abbcc.util.resource.ResourceUtil;
import com.abbcc.util.resource.property.Form;

public class ProductInfoAction extends BaseAction {
	public ActionForward addProduct(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		try {
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
				if(thirdCategory!=null&&thirdCategory.size()>0){
					ProductType thirdProductType=thirdCategory.get(0); 
				   
					Map<String, Form> formMap=InitResource.getFormMap();
					Form f=formMap.get(thirdProductType.getId());
					String path=request.getContextPath(); 
					Product product=new Product();
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
