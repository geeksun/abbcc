package com.abbcc.common;

import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletRequest;

/**
 * �ַ���������
 * @author Csdn ��־ǿ  
 *  collective:��˼����
 *  create 2008-12-10 23:33:33
 */
public class StringUtils {	
	/**
     * ��ĳ�������Թ̶���ʽת�����ַ���
     * @param date
     * @return String
     */
    public static String dateToStr(java.util.Date date)
    {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String str = sdf.format(date);
        return str;
    }
    /**
     * �ж�����һ�������Ƿ�����
     * @param n
     * @return boolean
     */
    public static boolean isPrimes(int n)
    {
        for (int i = 2; i <= Math.sqrt(n); i++)
        {
            if (n % i == 0)
            {
                return false;
            }
        }
        return true;
    }
    /**
     * �������һ�������Ľ׳ˣ��ݹ�
     * @param n
     * @return n!
     */
    public static int factorial(int n)
    {
        if (n == 1)
        {
            return 1;
        }
        return n * factorial(n - 1);
    }
    /**
     * @param str
     * @return GBK�ַ���
     */
    public static String converse(String str) throws UnsupportedEncodingException{ 
    	return new String(str.getBytes("ISO-8859-1"),"GBK");
    }
    /**
     * ��ָ��byte������16���Ƶ���ʽ��ӡ������̨
     * @param hint String
     * @param b byte[]
     * @return void
     */
    public static void printHexString(String hint, byte[] b)
    {
        System.out.print(hint);
        for (int i = 0; i < b.length; i++)
        {
            String hex = Integer.toHexString(b[i] & 0xFF);
            if (hex.length() == 1)
            {
                hex = '0' + hex;
            }
            System.out.print(hex.toUpperCase() + " ");
        }
        System.out.println("");
    } 
    
    /**
     * �Ƿ�Ϊ�հ�,����null��""
     * @param str
     * @return
     */
    public static boolean isBlank(String str) {
        return str != null && str.trim().length() != 0;
    }
    
    /**
     * @param request
     * @param paras
     * @see  �ѱ��Ĳ�����װ��map��
     */
    public static Map getParameter(ServletRequest request, String[] paras)
    {
        Map<String, String> map = new HashMap<String, String>(); 
        if(paras == null || paras.length == 0)return map;
        for(int i = 0;i < paras.length;i++)
        {
            String para = paras[i];
            if(para == null || para.trim().length() == 0)continue;
            String value = request.getParameter(para);
            if(value == null || value.trim().length() == 0)value = "";
            else value = value.trim();
            map.put(para, value);
        }
        return map;
    } 
}
