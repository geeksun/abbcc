package com.abbcc.test;

public class Split {
	/**
	 * @param args
	 */
	public static void main(String[] args) {
		String[] jyms = {"1","3","4"};
		StringBuffer su = null;
		if(jyms.length>0){
			su = new StringBuffer();
			for(int i=0;i<jyms.length;i++){
				su.append(jyms[i]+",");
			}
		}
		System.out.println(su);
		String[] jy = su.toString().split(",");
		for(int i=0;i<jy.length;i++){
			System.out.println(jy[i]);
		}
	}

}
