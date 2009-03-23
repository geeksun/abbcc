package com.abbcc.common;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

/**
 * @author jzq 
 * ����Toos_Koolearn_info��Ĺ�����
 */
public class KoolearnUtils {
	//   �ڹ��캯������Ҫʹ���ַ�������
	public final String flag = "permit"; 
	public static HashMap<String, String> map; 
	public static HashMap processMap(){
		//  �¶����γ�
		map = new HashMap<String, String>(); 
		map.put("T0821", "ѧλӢ�︨��"); 
		map.put("T0822", "ͳ��Ӣ�︨��");
		map.put("T0823", "ѧλӢ�︨��+ͳ��Ӣ�︨��");
		
		map.put("341259", "֪��ͳ��Ӣ�︨��");
		map.put("jsj", "��Ժ���������");
		
		/*map.put("T0011", "ѧλӢ�︨���γ�");
		map.put("T1011", "ͳ��Ӣ�︨���γ�");
		
		map.put("T0811", "ѧλӢ�︨���γ�");			//  repeat
		map.put("T0812", "ͳ��Ӣ�︨���γ�");			//  repeat
		
		map.put("T0012", "ѧλӢ�����Ӣ��ض���");
		map.put("T1012", "ͳ���ض���");*/
		
		return map;
	}
	public static String processKey(String key){
		map = new HashMap<String, String>(); 
		map.put("T0821", "ѧλӢ�︨��"); 
		map.put("T0822", "ͳ��Ӣ�︨��");
		map.put("T0823", "ѧλӢ�︨��+ͳ��Ӣ�︨��");
		
		map.put("341259", "֪��ͳ��Ӣ�︨��");
		map.put("jsj", "��Ժ���������");
		String value = (String) map.get(key);
		map.clear();
		map = null;
		return value;
	}
	/**
	 * @param str
	 * @return boolean : ��֤�ַ��������Ƿ��ֵ
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
	 * @return boolean: ��֤�����ַ������Ƿ���һ����Ч
	 */
	public static boolean validateStr(String str1, String str2){
		if(validateString(str1)||validateString(str2)){
			return true;
		}else{
			return false;
		}
	}
	/**
	 *  ����ʱ��
	 */
	public void processTime(){
		
	}
	/**
	 * @param str
	 * @return K ֵ
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
	 * @return  ���ڸ�ʽ������ַ���
	 */
	public static String timeFormat(Date date){
		SimpleDateFormat sim = new SimpleDateFormat("yyyy-MM-dd");
		return sim.format(date);
	}
	/**
	 * @param str
	 * @return ��ʽ������ַ���
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
	 * @return ����ʼʱ��
	 */
	public static String startDispose(String begin){
		String str = begin + " 00:00:00";
		return str;
	}
	/**
	 * @param end
	 * @return �������ʱ��
	 */
	public static String lastDispose(String end){
		String str = end + " 23:59:59";
		return str;
	}
	/**
	 * @param s1
	 * @param s2
	 * @param s3  �����ַ���: ���� s1,s2��ֵ��s3��ֵ���в���
	 * �ж�ʱ,����� "" �� null ��������ڵ�һλ(��������)
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
		//System.out.println(process("֪��ͳ��Ӣ��"));
		//Date d = new Date();
		System.out.println(KoolearnUtils.processMap().get("T0821"));
		System.out.println(KoolearnUtils.processKey("341259"));
		//O:���� H:���� M:13910822222
		/*result: O:����
		H:����13900000000*/
		//operate("����","����","13900000000");
		operate(" 33333 "," 23223 ","32423423423 ");
		System.out.println("Java 2 Runtime Environment,\nStandard Edition \rbuild 1.5.0_04-b05\\");
	}
}
