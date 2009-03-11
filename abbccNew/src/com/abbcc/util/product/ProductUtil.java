package com.abbcc.util.product;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.abbcc.pojo.Product;

public class ProductUtil {
	private   Log log = LogFactory.getLog(ProductUtil.class);

	public static final String PRODUCT_TABLE_INDEX_NAME="product_table";
	
	public static boolean isEqualLength(String[]... ss){
		if(ss==null)return false;
		int size=ss.length;
		for(int i=0;i<size-1;i++){
			String[] sss=ss[i];
			String[] ssss=ss[i+1];
			if(sss==null||ssss==null)return false;
			if(sss.length!=ssss.length)return false;
		}
		return true;
	}
	public static String getNextTableName(){
		  //ProductService productService= (ProductService) StartServlet.getBean("productService");
		 
		
		return "product_";
	}
	public static String getTableIdFiled(){
		return "id";
	}
	public static String getTableCpgqxxIdFiled(){
		return "cpgqxxid";
	}
	public static String getTableCreateTimeFiled(){
		return "createtime";
	}
 
 
	public static ProductObject getProductInsertObject(Product product ,HttpServletRequest request){
		if(product==null||request==null)return null;
		if(product.getState()==Product.PRODUCT_STATE_NO_PRODUCT)return null;
		String sql=getProductInsertSql(product);
		Object[] value=getValueByFromName(product,request);
		ProductObject obj=new ProductObject(sql,value);
		return obj;
	}
	public static ProductObject getProductUpdateObject(Product product ,HttpServletRequest request,Map objectValue){
		if(product==null||request==null)return null;
		if(product.getState()==Product.PRODUCT_STATE_NO_PRODUCT)return null;
		String sql=getProductUpdateSql(product);
		Object[] value=getValueByFromNameForUpdate(product,request,objectValue);
		ProductObject obj=new ProductObject(sql,value);
		return obj;
	}
	public static ProductObject getProductDeleteObject(Product product){
		if(product==null )return null;
		if(product.getState()==Product.PRODUCT_STATE_NO_PRODUCT)return null;
		String sql=getProductDeleteSqlById(product);
		 
		ProductObject obj=new ProductObject(  );
		obj.setSql(sql);
		return obj;
	}
	private static Object[] getValueByFromName(Product product,HttpServletRequest request){
		if(product==null)return null; 
		if(product.getState()==Product.PRODUCT_STATE_NO_PRODUCT)return null;
		String[] formName  = ProductUtil.arrayToString(product.getFormName());
		Object[] ret=new Object[formName.length+1] ;
		for(int i=0;i<formName.length;i++){
			String param=formName[i];
			String[] values=request.getParameterValues(param);
			if(values==null){
				ret[i]=""; 
				
			}else{
				if(values.length==1){
					ret[i]=values[0]; 
				}else{
					String temp="";
					for(int j=0;j<values.length-1;j++){
						
						 temp=values[j]+",";
					}
					ret[i]=temp+values[values.length-1];
				}
			}
			 
			
		}
		return ret; 
	}
	private static Object[] getValueByFromNameForUpdate(Product product,HttpServletRequest request,Map objectValue){
		if(product==null)return null; 
		if(product.getState()==Product.PRODUCT_STATE_NO_PRODUCT)return null;
		String[] formName  = ProductUtil.arrayToString(product.getFormName());
		Object[] ret=new Object[formName.length+1] ;
		for(int i=0;i<formName.length;i++){
			String param=formName[i];  
			String[] values=request.getParameterValues(param);
			if(values==null){
				ret[i]=""; 
				
			}else{
				if(values.length==1){
					ret[i]=values[0]; 
				}else{
					String temp="";
					for(int j=0;j<values.length-1;j++){
						
						 temp=temp+",";
					}
					ret[i]=temp+values[values.length-1];
				}
			}
			
		}
		String id=product.getIdFiledName();
		if(objectValue!=null){
			Integer value=(Integer)objectValue.get(id);
			 ret[ret.length-1]=value;
			  
		}
		return ret; 
	}
	private static String getProductInsertSql(Product product){
		if(product==null)return null;
		if(product.getState()==Product.PRODUCT_STATE_NO_PRODUCT)return null;
		StringBuilder builder = new StringBuilder("insert into ");
		String filedName=product.getOtherFiledName();
		String[] filedNames=arrayToString(filedName);
		String tableName=product.getTableName(); 
		builder.append(tableName + "(");
		String cpgqxxidFiled=product.getCpgqxxIdFiled();
		for (int i = 0; i < filedNames.length; i++) {
			String name = filedNames[i];
			 builder.append(name + ","); 
		}
		builder.append(cpgqxxidFiled+")");
		builder.append(" value (");
		for (int i = 0; i < filedNames.length; i++) {
			  builder.append("?,"); 
		}
		builder.append("?)");
		return builder.toString();
	}
	private static String getProductUpdateSql(Product product){
		if(product==null)return null;
		if(product.getState()==Product.PRODUCT_STATE_NO_PRODUCT)return null;
		StringBuilder builder = new StringBuilder("update ");
		String filedName=product.getOtherFiledName();
		String[] filedNames=arrayToString(filedName);
		String tableName=product.getTableName(); 
		builder.append(tableName+" set " );
		String cpgqxxidFiled=product.getIdFiledName();
		for (int i = 0; i < filedNames.length; i++) {
			String name = filedNames[i];
			if(i==filedNames.length-1){
				builder.append( name + "=? "); 
			}
			else{
				builder.append( name + "=?, "); 
			}
				
		}
		builder.append(" where "+cpgqxxidFiled+"=?");
		 
		return builder.toString();
	}
	private static String getProductDeleteSqlById(Product product){
		if(product==null)return null;
		if(product.getState()==Product.PRODUCT_STATE_NO_PRODUCT)return null;
		StringBuilder builder = new StringBuilder("delete from ");
	 
		String tableName=product.getTableName(); 
		 
		builder.append(tableName );
		builder.append(" where "+product.getIdFiledName()+"=?" );
		return builder.toString();
	}
	public static String getProductSelectSql(Product product,String cpgqxxId){
		if(product==null)return null;
		if(product.getState()==Product.PRODUCT_STATE_NO_PRODUCT)return null;
		StringBuilder builder = new StringBuilder("select * from "); 
		String tableName=product.getTableName(); 
		String cpgqxxidFiled=product.getCpgqxxIdFiled(); 
		builder.append(tableName + " where "+cpgqxxidFiled+"=?");
		  
		return builder.toString();
	}
 
	public static boolean isPropertyMatchType(String[] type,String[] property){
		if(type==null||property==null||type.length!=property.length)return false;
		for(int i=0;i<type.length;i++){
			String t=type[i];
			String p=property[i];
			if(t==null||p==null)return false;
			if(t.trim().equals(Product.PRODUCT_TYPE_TEXT)){
				if(p.trim().equals("")){
					return false;
				}
			}else if(t.trim().equals(Product.PRODUCT_TYPE_SELECT)){
				String[] temp=p.split(":|：");
				if(temp.length!=2){
					return false;
				}
				String temp2=temp[1];
				if(temp2.trim().equals("")){
					return false;
				} 
			}
		}
		return true;
	}
	public static boolean IsMathValue(Object...object){
		if(object==null)
		{
			return false; 
		}
		for(int i=0;i<object.length;i++){
			Object o=object[i];
			if(o==null)return false;
			if(o instanceof String){
				String s=(String)o;
				try{
					Integer.parseInt(s);
				} catch (Exception e) {
					try {
						Float.parseFloat(s);
					} catch (Exception e1) {
						return false;
					}
					 
				} 
			}else if(o instanceof String[]){
				String[] ss=(String[])o;
				for(int j=0;j<ss.length;j++){
					String sss=ss[j];
					if(sss==null)return false;
					try{
						Integer.parseInt(sss);
					} catch (Exception e) {
						try {
							Float.parseFloat(sss);
						} catch (Exception e1) {
							return false;
						}
						 
					} 
				}
			}
		}
		 
		 return true;
		
	}
	public static boolean hasNullParam(Object...object){
		if(object==null)
		{
			return true;
			
		}
		for(int i=0;i<object.length;i++){
			Object o=object[i];
			if(o==null)return true;
			if(o instanceof String){
				String s=(String)o;
				if(s.trim().equals("")){
					return true;
				}
			}else if(o instanceof String[]){
				String[] ss=(String[])o;
				for(int j=0;j<ss.length;j++){
					String sss=ss[j];
					if(sss==null)return true;
					if(sss.trim().equals("")){
						return true;
					}
				}
			}
		}
		 
		 return false;
	}
	public static String createFormName(int len){
		String  ret="";
		for(int i=0;i<len;i++){
			if(i==0){
				ret+="f_"+i;
			}else
			{
				ret+=",f_"+i;
			} 
		}
		return ret;
	}
	public static String createFiled(int len){
		String  ret="";
		for(int i=0;i<len;i++){
			if(i==0){
				ret+="f_"+i;
			}else
			{
				ret+=",f_"+i;
			} 
		}
		return ret;
	}
	public static String arrayToString(String[] array){
		if(array==null)return null;
		StringBuilder ret=new StringBuilder();
		for(int i=0;i<array.length;i++){
			String temp=array[i]; 
			
			if(i==0){
				if(temp==null){
					ret.append(",");
				}else
				{
					  ret.append(temp); 
				}
				
			}else
			{
				if(temp==null){
					ret.append(",");
				}else
				{
					 ret.append( ","+temp);
				}
				
			}
		}
		return ret.toString();
	}
	
	public static String[] arrayToString(String  str){
		 if(str==null)return null;
		 String[] ret=str.split(",|，"); 
		 return ret;
	}
	private void test(){
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
	}
}
