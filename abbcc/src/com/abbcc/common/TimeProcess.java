package com.abbcc.common;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @author geeksun
 *	ʱ��Ĵ�����
 */
public class TimeProcess {
	/**
	 *  java.sql.Date �� java.util.Date ��ת��
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
	 * @return  ���ڸ�ʽ������ַ���:��ȷ���룬��Ӧmysql�е�datetime��
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
