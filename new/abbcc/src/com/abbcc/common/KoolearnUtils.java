package com.abbcc.common;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

/**
 * @author jzq 
 * 操作Toos_Koolearn_info表的工具类
 */
public class KoolearnUtils {
	//   在构造函数中需要使用字符串常量
	public final String flag = "permit"; 
	public static HashMap<String, String> map; 
	public static HashMap processMap(){
		//  新东方课程
		map = new HashMap<String, String>(); 
		map.put("T0821", "学位英语辅导"); 
		map.put("T0822", "统考英语辅导");
		map.put("T0823", "学位英语辅导+统考英语辅导");
		
		map.put("341259", "知金统考英语辅导");
		map.put("jsj", "本院计算机辅导");
		
		/*map.put("T0011", "学位英语辅导课程");
		map.put("T1011", "统考英语辅导课程");
		
		map.put("T0811", "学位英语辅导课程");			//  repeat
		map.put("T0812", "统考英语辅导课程");			//  repeat
		
		map.put("T0012", "学位英语（三级英语）重读课");
		map.put("T1012", "统考重读课");*/
		
		return map;
	}
	public static String processKey(String key){
		map = new HashMap<String, String>(); 
		map.put("T0821", "学位英语辅导"); 
		map.put("T0822", "统考英语辅导");
		map.put("T0823", "学位英语辅导+统考英语辅导");
		
		map.put("341259", "知金统考英语辅导");
		map.put("jsj", "本院计算机辅导");
		String value = (String) map.get(key);
		map.clear();
		map = null;
		return value;
	}
	/**
	 * @param str
	 * @return boolean : 验证字符串变量是否空值
	 */
	public static boolean validateString(String str){
		String s = str.trim();
		boolean validate = false;
		if( s != null&& !s.equals("") ){
			validate = true;
		}
		return validate;
	}
	/**
	 * @param str1
	 * @param str2
	 * @return boolean: 验证两个字符串中是否有一个有效
	 */
	public static boolean validateStr(String str1, String str2){
		if(validateString(str1)||validateString(str2)){
			return true;
		}else{
			return false;
		}
	}
	/**
	 *  处理时间
	 */
	public void processTime(){
		
	}
	/**
	 * @param str
	 * @return K 值
	 */
	public static String process(String str){
		HashMap hashmap = processMap();
		Set keySet  =  hashmap.keySet();  
        for (Iterator i = keySet.iterator(); i.hasNext();) {  
            String  key = (String)i.next();  
            String  value = (String)hashmap.get(key);  
            if (value.equals(str)) {  
            	map.clear();
            	keySet.clear();
                return  key;   
            }  
        }
		return null;    
	}
	 
	/**
	 * @param date
	 * @return  日期格式化后的字符串
	 */
	public static String timeFormat(Date date){
		SimpleDateFormat sim = new SimpleDateFormat("yyyy-MM-dd");
		return sim.format(date);
	}
	/**
	 * @param str
	 * @return 格式化后的字符串
	 */
	public static String stringFormat(String str){
		String s = str;
		String[] temp = s.split("-");
		String end = "";
		for(int i=0;i<temp.length;i++){
			if(temp[i].startsWith("0")){
				temp[i] = "-" + temp[i].substring(1); 
			}
			end += temp[i];
			//System.out.println(temp[i]);
		}
		return end;
	}
	public static Date convertDate(String str) throws ParseException{
		SimpleDateFormat sim = new SimpleDateFormat("yyyy-MM-dd");
		return sim.parse(str); 
	}
	/**
	 * @param begin
	 * @return 处理开始时间
	 */
	public static String startDispose(String begin){
		String str = begin + " 00:00:00";
		return str;
	}
	/**
	 * @param end
	 * @return 处理最后时间
	 */
	public static String lastDispose(String end){
		String str = end + " 23:59:59";
		return str;
	}
	/**
	 * @param s1
	 * @param s2
	 * @param s3  操作字符串: 根据 s1,s2的值对s3的值进行操作
	 * 判断时,必须把 "" 和 null 的情况放在第一位(假想条件)
	 */
	public static void operate(String s1,String s2,String s3){
		String t1 = s1;
		String t2 = s2;
		String t3 = s3;
		if(s1==null||s1.trim().equals("")){
			t1 = "";
		}else{
			t1 = "O:" + s1;
		}
		
		if(s2 == null||s2.trim().equals("")){
			t2 = "";
		}else if((s1 == null||s1.trim().equals(""))&&(s2!=null||!s2.trim().equals(""))){ 
			t2 = "H:" + s2;
		}else{
			t2 = "\rH:" + s2;
		}
		
		if(s3 == null||s3.trim().equals("")){ 
			t3 = ""; 
		}else if(((s1 == null||s1.trim().equals(""))&&(s2==null||s2.trim().equals("")))&&(s3!=null||!s3.trim().equals(""))){  
			t3 = "M:" + s3; 
		}else if((s1 == null||s1.trim().equals(""))&&(s2!=null||!s2.trim().equals(""))&&(s3!=null||!s3.trim().equals(""))){
			t3 = "\rM:" + s3;
		}else if((s1 != null||!s1.trim().equals(""))&&(s2==null||s2.trim().equals(""))&&(s3!=null||!s3.trim().equals(""))){
			t3 = "\rM:" + s3;
		}else if((s1 != null||!s1.trim().equals(""))&&(s2!=null||!s2.trim().equals(""))&&(s3!=null||!s3.trim().equals(""))){
			t3 = "\rM:" + s3;
		}
		
		System.out.println(t1+t2+t3);
	}
	
	public static void main(String[] args) throws ParseException{
		//System.out.println(process("知金统考英语"));
		//Date d = new Date();
		System.out.println(KoolearnUtils.processMap().get("T0821"));
		System.out.println(KoolearnUtils.processKey("341259"));
		//O:我是 H:你是 M:13910822222
		/*result: O:我是
		H:你是13900000000*/
		//operate("我是","你是","13900000000");
		operate(" 33333 "," 23223 ","32423423423 ");
		System.out.println("Java 2 Runtime Environment,\nStandard Edition \rbuild 1.5.0_04-b05\\");
	}
}
