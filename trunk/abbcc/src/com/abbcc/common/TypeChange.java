package com.abbcc.common;

/**
 * @author 姜志强
 *  数据类型转换,String,int,Integer,Date之间
 *  create by 2009-1-12
 */
public class TypeChange {
	public TypeChange() {
	}

	//change the string type to the int type
	public static int stringToInt(String intstr) {
		Integer integer;
		integer = Integer.valueOf(intstr);
		//integer.valueOf(i)
		return integer.intValue();
	}

	//change int type to the string type
	public static String intToString(int value) {
		//Integer integer = new Integer(value);
		Integer integer = Integer.valueOf(value);
		return integer.toString();
	}

	//change the string type to the int type
	public static int stringToInteger(String intstr) {
		Integer integer;
		integer = Integer.valueOf(intstr);
		return integer;
	}
	
	//change int type to the string type
	public static String integerToString(Integer value) {
		//Integer integer = new Integer(value);
		
		return value.toString();
	}
	
	//change the string type to the float type
	public static float stringToFloat(String floatstr) {
		Float floatee;
		floatee = Float.valueOf(floatstr);
		return floatee.floatValue();
	}

	//change the float type to the string type
	public static String floatToString(float value) {
		//Float floate = new Float(value);
		Float floate = Float.valueOf(value);
		return floate.toString();
	}

	//change the string type to the sqlDate type
	public static java.sql.Date stringToDate(String dateStr) {
		return java.sql.Date.valueOf(dateStr);
	}

	//change the sqlDate type to the string type
	public static String dateToString(java.sql.Date date) {
		return date.toString();
	}

	public static void main(String[] args) {
		java.sql.Date day;
		day = TypeChange.stringToDate("2003-11-3");
		String strday = TypeChange.dateToString(day);
		System.out.println(strday);
	}
	
	
}
