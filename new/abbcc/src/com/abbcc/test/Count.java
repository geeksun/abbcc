package com.abbcc.test;

import java.util.ArrayList;
import java.util.List;

public class Count {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		List list = new ArrayList();
		list.add("0");
		
		int i = Integer.parseInt((String) list.get(0));  
		System.out.println(i); 
	}

}
