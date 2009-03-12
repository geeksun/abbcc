package com.abbcc.common;

import javax.servlet.http.HttpServletRequest;

public class UserUtil {
	
	public static String getUserId(HttpServletRequest request){
		
		return (String)request.getSession().getAttribute( "hyjbxxid");
	}
	public static String getUserName(HttpServletRequest request){
		return "";
	}

}
