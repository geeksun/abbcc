package com.abbcc.util.product;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.abbcc.pojo.Product;

/**
 * 产品
 * @author dongyili
 *
 */
public class ProductUtil {
	private   Log log = LogFactory.getLog(ProductUtil.class);
	
	public static final String PRODUCT_TABLE_INDEX_NAME="product_table";
	/**
	 * 二维数组长度是否相等
	 * @param ss
	 * @return
	 */
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
 
 
	/**
	 * 动态取得产品对象
	 * @param product
	 * @param request
	 * @return
	 */
	public static ProductObject getProductInsertObject(Product product ,HttpServletRequest request){
		if(product==null||request==null)return null;
		if(product.getProductType()==Product.PRODUCT_TYPE_NO_PRODUCT)return null;
		String sql=getProductInsertSql(product);
		Object[] value=getValueByFromName(product,request);
		ProductObject obj=new ProductObject(sql,value);
		return obj;
	}
	/**
	 * 动态更新取得产品对象
	 * @param product
	 * @param request
	 * @param objectValue
	 * @return
	 */
	public static ProductObject getProductUpdateObject(Product product ,HttpServletRequest request,Map objectValue){
		if(product==null||request==null)return null;
		if(product.getProductType()==Product.PRODUCT_TYPE_NO_PRODUCT)return null;
		String sql=getProductUpdateSql(product);
		Object[] value=getValueByFromNameForUpdate(product,request,objectValue);
		ProductObject obj=new ProductObject(sql,value);
		return obj;
	}
	/**
	 * 取得删除的产品对象
	 * @param product
	 * @return
	 */
	public static ProductObject getProductDeleteObject(Product product){
		if(product==null )return null;
		if(product.getProductType()==Product.PRODUCT_TYPE_NO_PRODUCT)return null;
		String sql=getProductDeleteSqlById(product);
		 
		ProductObject obj=new ProductObject(  );
		obj.setSql(sql);
		return obj;
	}
	/**
	 * 取得表单的值
	 * @param product
	 * @param request
	 * @return
	 */
	private static Object[] getValueByFromName(Product product,HttpServletRequest request){
		if(product==null)return null; 
		if(product.getProductType()==Product.PRODUCT_TYPE_NO_PRODUCT)return null;
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
					String temp=" ";
					//数组拼成字符串
					for(int j=0;j<values.length-1;j++){
						
						 temp=values[j]+",";
					}
					ret[i]=temp+values[values.length-1];
				}
			}
			 
			
		}
		return ret; 
	}
	/**
	 *  取得更新表单的值
	 * @param product
	 * @param request
	 * @param objectValue
	 * @return
	 */
	private static Object[] getValueByFromNameForUpdate(Product product,HttpServletRequest request,Map objectValue){
		if(product==null)return null; 
		if(product.getProductType()==Product.PRODUCT_TYPE_NO_PRODUCT)return null;
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
					String temp=" ";
					for(int j=0;j<values.length-1;j++){
						
						 temp=values[j]+",";
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
	/**
	 * 取得添加产品sql
	 * @param product
	 * @return
	 */
	private static String getProductInsertSql(Product product){
		if(product==null)return null;
		if(product.getProductType()==Product.PRODUCT_TYPE_NO_PRODUCT)return null;
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
	/**
	 * 取得更新产品的sql
	 * @param product
	 * @return
	 */
	private static String getProductUpdateSql(Product product){
		if(product==null)return null;
		if(product.getProductType()==Product.PRODUCT_TYPE_NO_PRODUCT)return null;
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
	/**
	 * 取得删除产品的sql 
	 * @param product
	 * @return
	 */
	private static String getProductDeleteSqlById(Product product){
		if(product==null)return null;
		if(product.getProductType()==Product.PRODUCT_TYPE_NO_PRODUCT)return null;
		StringBuilder builder = new StringBuilder("delete from ");
	 
		String tableName=product.getTableName(); 
		 
		builder.append(tableName );
		builder.append(" where "+product.getIdFiledName()+"=?" );
		return builder.toString();
	}
	/**
	 * 取得查询产品的sql
	 * @param product
	 * @param cpgqxxId
	 * @return
	 */
	public static String getProductSelectSql(Product product,String cpgqxxId){
		if(product==null)return null;
		if(product.getProductType()==Product.PRODUCT_TYPE_NO_PRODUCT)return null;
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
			}else if(t.trim().equals(Product.PRODUCT_TYPE_SELECT)||t.trim().equals(Product.PRODUCT_TYPE_CHECKBOX)){
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
	/**
	 * 是否是数字
	 * @param object
	 * @return
	 */
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
	/**
	 * @param object
	 * @return
	 */
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
	/**
	 * 创建表单名字
	 * @param len
	 * @return
	 */
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
	/**
	 * 创建字段名字
	 * @param len
	 * @return
	 */
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
	/**
	 * 数组转字符串
	 * @param array
	 * @return
	 */
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
					if(temp.equals("")){
						temp=" ";
					}
					  ret.append(temp); 
				}
				
			}else
			{
				if(temp==null){
					ret.append(",");
				}else
				{
					if(temp.equals("")){
						temp=" ";
					}
					 ret.append( ","+temp);
				}
				
			}
		}
		return ret.toString();
	}
	/**
	 * 字符串转数组
	 * @param str
	 * @return
	 */
	public static String[] arrayToString(String  str){
		 if(str==null)return null;
		 String[] ret=str.split(",|，"); 
		 return ret;
	}
	
	 
}
