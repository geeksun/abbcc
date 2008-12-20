package com.abbcc.util.product;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class ProductUtil {
	private   Log log = LogFactory.getLog(ProductUtil.class);

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
		return "t_"+1;
	}
	public static String getTableIdFiled(){
		return "id";
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
				String[] temp=p.split(":|£º");
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
					String sss=ss[i];
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
					 ret.append(temp+",");
				}
				
			}
		}
		return ret.toString();
	}
	
	public static String[] arrayToString(String  str){
		 if(str==null)return null;
		 String[] ret=str.split(",|£¬"); 
		 return ret;
	}
}
