package com.abbcc.common;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class DateFormater
{
	/**
	 * 将毫秒值转化为格式化的时间
	 */
	public static String getFormatDate(String millisecond)
	{
		
		long time = Long.valueOf(millisecond);
		Date date = new Date(time);
		SimpleDateFormat simpleDataFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
		return simpleDataFormat.format(date);
	}

	/**
	 * 获得格式化日期
	 */
	public static String getFormatDate(Date date)
	{
		if(date==null)return null;
		SimpleDateFormat simpleDataFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		return simpleDataFormat.format(date);
	}
	
	/**
	 * 得到符合格式的日历.例如：2007-10-18 17:26:29
	 * 
	 * @param String
	 *            date 日期(例如：2007-10-18 17:26:29）
	 * @param String
	 *            format 格式
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
	 * 按照指定的格式得到当日的时间值
	 */
	public static String getCurrentDay()
	{
		DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		Calendar calendar = Calendar.getInstance();
		Calendar cpcalendar = (Calendar) calendar.clone();
		return df.format(new Date(cpcalendar.getTimeInMillis()));
	}

}
