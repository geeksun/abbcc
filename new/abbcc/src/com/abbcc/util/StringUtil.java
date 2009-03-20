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
	 * 将一个字符串了List 转换成 字符串之间已,号相隔的格式
	 * @param list 字符串List.
	 * @return ，号相隔的字符串。
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
	 * 将一个以逗号相隔的字符串转换成一个字符串list
	 * @param string 以逗号相隔的字符串
	 * @return 字符串List
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
	 * 根据当前国际化环境得给文件名添加适当后缀,返回相应的文件名
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
