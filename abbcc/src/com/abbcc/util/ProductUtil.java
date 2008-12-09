package com.abbcc.util;
 
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.abbcc.util.product.Form;
import com.abbcc.util.product.Input;
import com.abbcc.util.product.ProductType;
import com.abbcc.util.product.Select;
import com.abbcc.util.product.Table;

public class ProductUtil {
	
	private static Map<String,Table> tableMap=new HashMap<String,Table>();
	
	private static Map<String ,Form> formMap=new HashMap<String ,Form>();
	
	
	private static Map<String,List<ProductType> > productType=new HashMap<String,List<ProductType> >();
	
	public Object[] getFormValue(Form form, HttpServletRequest request) {
		List ret = new ArrayList();
		Input[] input = form.getInput();
		if (input != null) {
			for (int i = 0; i < input.length; i++) {
				Input in = input[i];
				String value = RequestUtils.getParameter(request, in.getName());
				ret.add(value);
			}
		}
		Select[] select = form.getSelect();

		if (select != null) {
			for (int i = 0; i < select.length; i++) {
				Select se = select[i];
				String value = RequestUtils.getParameter(request, se.getName());
				ret.add(value);
			}
		} 
		return ret.toArray(); 
	}
	public String getInsertSql(Table table){
		return null;
	}
	public String getTable(Form form){
		return null;
	}
	
	
	
	
	
	
	
	
	/*private static Map<String,List<ProductMap>> productTypeMap=new HashMap<String,List<ProductMap>>();
	
	private static Product[] productList=new Product[1];
	public static List<ProductMap> getContentByProductTypeKey(String key){ 	 
		return  productTypeMap.get(key);
	}
	 
	
	public void initProductType(){
		 
		
	}
	public static String getProductStyle(int menu_index) {
		Product product = new Product();
		StringBuilder builder = new StringBuilder();
		builder.append("<table>");
		Filed[] fileds = product.getFiled();

		for (int i = 0; i < fileds.length; i++) {
			Filed filed = fileds[i];
			boolean hasValue = filed.isHasValue();
			builder.append("<tr><td>");
			builder.append(filed.getValue());

			if (hasValue) {
				Value[] values = filed.getValue();
				builder.append("<select  name='" + filed.getParam() + "' >");
				builder.append("<option value=''>«Î—°‘Ò</option>");
				for (int j = 0; j < values.length; j++) {
					Value value = values[i];
					builder.append("<option value='" + value.getValue() + "'>"
							+ value.getShow() + "</option>");
				}
				builder.append("</select>");
				builder.append("</td></tr>");
			} else {
				builder.append("</td><td>");
				builder.append("<input name='" + filed.getParam()
						+ "' value=''>");
				builder.append("</td></tr>");
			}
		} 
		builder.append("</table>"); 
		return builder.toString();
	}
	public static String getProductTableStyle(Product product) {
		if (product == null) 	return "";
		StringBuilder builder = new StringBuilder();
		builder.append("<table>");
		Filed[] fileds = product.getFiled(); 
		for (int i = 0; i < fileds.length; i++) {
			Filed filed = fileds[i];
			boolean hasValue = filed.isHasValue();
			builder.append("<tr>\n<td>");
			builder.append(filed.getShow());

			if (hasValue) {
				Value[] values = filed.getValue();
				builder.append("\n<select  name='" + filed.getParam() + "' >\n");
				builder.append("<option value=''>«Î—°‘Ò</option>\n");
				for (int j = 0; j < values.length; j++) {
					Value value = values[i];
					builder.append("<option value='" + value.getValue() + "'>"
							+ value.getShow() + "</option>\n");
				}
				builder.append("</select>\n");
				builder.append("</td>\n</tr>");
			} else {
				builder.append("</td>\n<td>");
				builder.append("\t\t<input name='" + filed.getParam()
						+ "' value=''>");
				builder.append("</td>\n</tr>");
			}
		}
		builder.append("</table>");
		return builder.toString();
	}
 
	public static void processProduct(HttpServletRequest request,int menu_index,Cpgqxx cpgqxx, Jytj jyty){
	     ProductService productService=ServiceFactory.getProductService();
	     Product product =productList[menu_index];
	     
	      
	}
	public  void setValues(Product product,HttpServletRequest request){
		 Filed[] fileds=product.getFiled(); 
	     for(int i=0;i<fileds.length;i++){
	    	 Filed filed=fileds[i];
	    	 String param=filed.getParam(); 
	    	 String value= request.getParameter(param);
	    	 filed.setShow(value);
	     }
	       
	}
	public  String[] getValues(Product product,HttpServletRequest request){
		 Filed[] fileds=product.getFiled();
		 String[] values=new String[fileds.length];
	     for(int i=0;i<fileds.length;i++){
	    	 Filed filed=fileds[i];
	    	 String param=filed.getParam(); 
	    	 String value= request.getParameter(param);
	    	 values[i]=value; 
	     }
	     return values;
	}

	public String getInsertSql(Product product){
		 StringBuilder builder=new StringBuilder();
	     String sql="insert into ";
	     builder.append(sql);
	     builder.append(product.getTable()+" (");
	     for(int i=0;i<product.filed.length;i++){
	    	 Filed filed=product.filed[i];
	    	 if(i==product.filed.length-1)
	    	 {
	    		 builder.append(filed.getName()+")");
	    	 }else
	    	 {
	    		 builder.append(filed.getName()+",");
	    	 }
	    	
	     }
	     builder.append(" value (");
	     for(int i=0;i<product.filed.length;i++){ 
	    	 if(i==product.filed.length-1)
	    	 {
	    		 builder.append("?)");
	    	 }else
	    	 {
	    		 builder.append("?,");
	    	 }
	    	
	     }
	     return builder.toString();
	}
	public static void main(String[] args){
		
		Filed filed=new Filed();
		filed.setName("aaaa");
		filed.setParam("aaaa");
		filed.setHasValue(true);
		filed.setShow("hehe");
		Value value=new Value();
		value.setShow("ok");
		value.setValue("1");
		
		Value value2=new Value();
		value2.setShow("ok2");
		value2.setValue("2");
		
		filed.setValue(new Value[]{value,value2});
		Product product=new Product();
		product.setId("010101");
		product.setTable("test"); 
		product.setFiled(new Filed[]{filed});
	  
		String table=getProductTableStyle(product);
		String sql=product.getInsertSql();
		System.out.println(table);
		System.out.println(sql);
	}
*/
}
