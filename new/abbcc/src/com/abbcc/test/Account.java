package com.abbcc.test;

/**
 * @author geeksun
 * º∆À„
 */
public class Account {
	public static void testArray(){
		String[] gddh = {"","",""};
		System.out.println(":"+gddh[0]);
		System.out.println(":"+gddh[1]);
		System.out.println(":"+gddh[2]);
	}
	public static void testStringBuffer(){
		StringBuffer su = new StringBuffer();
		su.append("82828").append("/").append("999").append("/").append("000");
		System.out.println(su);
	}
	public static void testAdd(){
		int i = 0;
		++i;
		System.out.println(i);
		int t = i++;
		System.out.println(i+" "+t);
	}
	public static void testNull(){
		String a = null;
		String b = "";
		System.out.println(a+"||"+b);
	}
	public static void main(String[] args) {
		testAdd();
		testStringBuffer();
		testArray();
		testNull();
	}
}
