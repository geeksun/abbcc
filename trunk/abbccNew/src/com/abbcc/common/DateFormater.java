package com.abbcc.common;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class DateFormater
{
	/**
	 * ������ֵת��Ϊ��ʽ����ʱ��
	 */
	public static String getFormatDate(String millisecond)
	{
		
		long time = Long.valueOf(millisecond);
		Date date = new Date(time);
		SimpleDateFormat simpleDataFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
		return simpleDataFormat.format(date);
	}

	/**
	 * ��ø�ʽ������
	 */
	public static String getFormatDate(Date date)
	{
		if(date==null)return null;
		SimpleDateFormat simpleDataFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		return simpleDataFormat.format(date);
	}
	
	/**
	 * �õ����ϸ�ʽ������.���磺2007-10-18 17:26:29
	 * 
	 * @param String
	 *            date ����(���磺2007-10-18 17:26:29��
	 * @param String
	 *            format ��ʽ
	 */
	public static Calendar getCalendar1(String date, String format)
	{

		Calendar calendar = null;
		SimpleDateFormat sdf = null;
		Date d = null;
		calendar = Calendar.getInstance();
		sdf = new SimpleDateFormat(format);
	 
		try
		{
			d = sdf.parse(date);
			calendar.setTime(d);
			return calendar;
		}
		catch (ParseException e)
		{
			e.printStackTrace();
		}
		return null;
	}

	/**
	 * ����ָ���ĸ�ʽ�õ����յ�ʱ��ֵ
	 */
	public static String getCurrentDay()
	{
		DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		Calendar calendar = Calendar.getInstance();
		Calendar cpcalendar = (Calendar) calendar.clone();
		return df.format(new Date(cpcalendar.getTimeInMillis()));
	}

}
