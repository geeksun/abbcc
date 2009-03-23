 
package com.abbcc.util;

import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

/**
 * 
 * @author dongyili
 *
 */
public class RequestUtils
{

    public RequestUtils()
    {
    }

  
    public static boolean nullParameter(String parameter){ 
    	return parameter!=null?"".equals(parameter.trim()):true;
    }
    
    public static boolean andNULLParameters(String... parameters){ 
    	if(parameters==null)return true;
    	for(int i=0;i<parameters.length;i++  )
    	{
    		String paramter=parameters[i];
    		if(nullParameter(paramter))
    		{
    			return true;
    		} 
    	}
    	return false;
    	 
    }
    public static boolean orNULLParameters(String... parameters){ 
    	if(parameters==null)return true;
    	for(int i=0;i<parameters.length;i++  )
    	{
    		String paramter=parameters[i];
    		if(nullParameter(paramter))
    		{
    			return true;
    		} 
    	}
    	return false;
    	 
    }
    public static String getParameter(HttpServletRequest request, String paramName)
    {
        return getParameter(request, paramName, false);
    }

    private static String getParameter(HttpServletRequest request, String paramName, boolean emptyString)
    {
        String temp = request.getParameter(paramName);
        if(temp != null)
        {
            if(temp.equals("") && !emptyString)
                return null;
            else
                return temp;
        } else
        {
            return null;
        }
    }
    public static String getParameter(HttpServletRequest request, String paramName, String defaultString)
    {
        String temp =  getParameter(request,paramName,false);
        if(temp != null)
        {
        	temp=defaultString;
        } 
        return temp;
    }

    public static boolean getBooleanParameter(HttpServletRequest request, String paramName)
    {
        String temp = request.getParameter(paramName);
        return temp != null && temp.equals("true");
    }

    public static Integer getIntParameter(HttpServletRequest request, String paramName, Integer defaultNum)
    {
        String temp = request.getParameter(paramName);
        if(temp != null && !temp.equals(""))
        {
            Integer num = defaultNum;
            try
            {
                num = Integer.parseInt(temp);
            }
            catch(Exception exception) { }
            return num;
        } else
        {
            return defaultNum;
        }
    }

    public static long getLongParameter(HttpServletRequest request, String paramName, long defaultNum)
    {
        String temp = request.getParameter(paramName);
        if(temp != null && !temp.equals(""))
        {
        	Long num = defaultNum;
            try
            {
                num = Long.parseLong(temp);
            }
            catch(Exception exception) { }
            return num;
        } else
        {
            return defaultNum;
        }
    }

    public static int[] getIntParameters(HttpServletRequest request, String paramName)
    {
        String temps[] = request.getParameterValues(paramName);
        if(temps == null)
            return null;
         List<Integer> list = new LinkedList<Integer>();
        for(int i = 0; i < temps.length; i++)
            try
            {
             
                Integer one = Integer.valueOf(temps[i]);
                list.add(one);
            }
            catch(Exception exception) { }

        int ret[] = new int[list.size()];
        Iterator<Integer> iter=list.iterator();
        int index=0;
        while(iter.hasNext()){
        	Integer i=iter.next();
        	ret[index]=i;
        	i++;
        }
         return ret;
    }

    public static long[] getLongParameters(HttpServletRequest request, String paramName)
    {
        String temps[] = request.getParameterValues(paramName);
        if(temps == null)
            return null;
        List<Long> list = new LinkedList<Long>();
        for(int i = 0; i < temps.length; i++)
            try
            {
                Long one = Long.valueOf(temps[i]);
                list.add(one);
            }
            catch(Exception exception) { }

        long ret[] = new long[list.size()];
        Iterator<Long> iter=list.iterator();
        int index=0;
        while(iter.hasNext()){
        	Long i=iter.next();
        	ret[index]=i;
        	i++;
        }
         return ret; 
    }
 
    public static String getAttribute(HttpServletRequest request, String attribName)
    {
        return getAttribute(request, attribName, false);
    }

    private static String getAttribute(HttpServletRequest request, String attribName, boolean emptyString)
    {
        String temp = (String)request.getAttribute(attribName);
        if(temp != null)
        {
            if(temp.equals("") && !emptyString)
                return null;
            else
                return temp;
        } else
        {
            return null;
        }
    }

    public static boolean getBooleanAttribute(HttpServletRequest request, String attribName)
    {
        String temp = (String)request.getAttribute(attribName);
        return temp != null && temp.equals("true");
    }

    public static Integer getIntAttribute(HttpServletRequest request, String attribName, int defaultNum)
    {
        String temp = (String)request.getAttribute(attribName);
        if(temp != null && !temp.equals(""))
        {
            int num = defaultNum;
            try
            {
                num = Integer.parseInt(temp);
            }
            catch(Exception exception) { }
            return num;
        } else
        {
            return defaultNum;
        }
    }
}