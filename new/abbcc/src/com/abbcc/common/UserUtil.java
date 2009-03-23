package com.abbcc.common;

import javax.servlet.http.HttpServletRequest;

public class UserUtil {
	
	public static String getUserId(HttpServletRequest request){
		
		return (String)request.getSession().getAttribute( "hyjbxxid");
	}
	public static Integer getIntUserId(HttpServletRequest request){
		Integer _userId=null;
		String userid=(String)request.getSession().getAttribute( "hyjbxxid");
		try{
		 _userId=Integer.parseInt(userid);
		}catch(Exception e){
			
		}
		return _userId;
	}
	public static String getUserName(HttpServletRequest request){
		return "";
	}

}
