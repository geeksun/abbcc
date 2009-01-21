package com.abbcc.common;

import java.text.Format;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @author geeksun
 *	时间处理工具
 *  create at 2008-11-18
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
	 * @return  日期格式化后的字符串:精确到秒，对应 mysql中的datetime。
	 */
	public static String timeFormat(Date date){
		/*SimpleDateFormat sim = new SimpleDateFormat("yyyy-MM-dd ");
		return sim.format(date);*/
		//Date date=new Date();  
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");   
		String time = format.format(date); 
		return time;
	}
	
	/**
	 * @param date
	 * @return 一年后的时间
	 */
	public static String timeAfterYear(Date date){
		Format formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"); 
		long afterTime = (date.getTime()/1000) + 60*60*24*365; 
		date.setTime(afterTime*1000); 
		String afterDate = formatter.format(date); 
		
		return afterDate;
	}
	
	/**
	 * @param date
	 * @return 一年后的同一（same）时间
	 */
	public static Date sameTimeAfterYear(Date date){
		long afterTime = (date.getTime()/1000) + 60*60*24*365; 
		date.setTime(afterTime*1000); 
		
		return date;
	}
	
	/**
	 * @param date
	 * @return 几年后的同一（same）时间
	 */
	public static Date specifyTime(Date date, int value){
		long afterTime = (date.getTime()/1000) + 60*60*24*365*value; 
		date.setTime(afterTime*1000); 
		
		return date;
	}
	
	/**
	 * @return 指定时间的字符串,用来改变时间的有效期,如1年，2年
	 */
	public static String specifyTime(String time, int value){
		String year = time.substring(0, 4);
		int i = Integer.parseInt(year) + value;
		String purpose = String.valueOf(i);
		StringBuffer sf = new StringBuffer();
		sf.append(purpose);
		sf.append(time.substring(4));
		return sf.toString();
	}
	
	public static void main(String[] args){
		convert();
		//java.sql.Date d = new java.sql.Date();
		Date d = new Date();
		System.out.println(d);
		Date tt = new Date();
		System.out.println(d+"/"+sameTimeAfterYear(tt)+"/"+d); 
		System.out.println(timeFormat(d));
		System.out.println(new java.sql.Date(System.currentTimeMillis()));
		System.out.println(new java.sql.Time(System.currentTimeMillis()));
		System.out.println(new java.sql.Timestamp(System.currentTimeMillis()));
		/*2008-11-29
		20:26:29
		2008-11-29 20:26:29.875*/
		System.out.println(timeAfterYear(d)); 
		
	}
}
