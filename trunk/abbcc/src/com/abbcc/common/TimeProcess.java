package com.abbcc.common;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @author geeksun
 *	时间的处理工具
 */
public class TimeProcess {
	/**
	 *  java.sql.Date 和 java.util.Date 互转换
	 */
	public static void convert(){
		java.util.Date date1 = new Date();
		java.sql.Date date2 = null;

		//date1 = new java.sql.Date(date2.getTime());
		date2 = new java.sql.Date(date1.getTime()); 
		
		System.out.println(date2+" "+date1);
	}
	/**
	 * @param date
	 * @return  日期格式化后的字符串:精确到秒，对应mysql中的datetime。
	 */
	public static String timeFormat(Date date){
		/*SimpleDateFormat sim = new SimpleDateFormat("yyyy-MM-dd ");
		return sim.format(date);*/
		//Date date=new Date();  
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");   
		String time = format.format(date); 
		return time;
	}
	public static void main(String[] args){
		convert();
		//java.sql.Date d = new java.sql.Date();
		Date d = new Date();
		System.out.println(timeFormat(d));
		System.out.println(new java.sql.Date(System.currentTimeMillis()));
		System.out.println(new java.sql.Time(System.currentTimeMillis()));
		System.out.println(new java.sql.Timestamp(System.currentTimeMillis()));
		/*2008-11-29
		20:26:29
		2008-11-29 20:26:29.875*/
	}
}
