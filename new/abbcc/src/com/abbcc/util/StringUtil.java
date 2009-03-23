package com.abbcc.util;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/**
 * 
 * @author dongyili
 *
 */
public class StringUtil {
	
	/**
	 * ��һ���ַ�����List ת���� �ַ���֮����,������ĸ�ʽ
	 * @param list �ַ���List.
	 * @return ����������ַ�����
	 */
	public static String setListToString(List list)
	{
		String returnString="";
		if(list!=null && list.size()>0)
		{
			Iterator iterator = list.iterator();
			while(iterator.hasNext())
			{
				String string = (String)iterator.next();
				returnString = returnString+string+",";
			}
		}
		if(returnString!=null && !returnString.equals(""))
		{
			returnString = returnString.substring(0, returnString.length()-1).trim();
		}
		return returnString;
	}
	
	/**
	 * ��һ���Զ���������ַ���ת����һ���ַ���list
	 * @param string �Զ���������ַ���
	 * @return �ַ���List
	 */
	public static List setStringToList(String string)
	{
		List returnList = new ArrayList();
		if(string!=null && !string.equals(""))
		{
			String[] operString = string.split(",");
			for(int i=0;i<operString.length;i++)
			{
				returnList.add(operString[i]);
			}
		}
		return returnList;
	}

	/**
	 * ���ݵ�ǰ���ʻ������ø��ļ�������ʵ���׺,������Ӧ���ļ���
	 * @param file
	 * @return
	 */
	public static String getLocaleFileName(String file) {
        String localInfo = Locale.getDefault().toString();
        
        String localeFile = file.replaceAll("\\.xml", "_" + localInfo + "\\.xml");
        localeFile = localeFile.replaceAll("\\.XML", "_" + localInfo + "\\.xml");
        return localeFile;
	}
}
