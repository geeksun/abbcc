package com.abbcc.service.impl;

import com.abbcc.service.CheckService;

public class CheckSerivceImpl implements CheckService {
	private static CheckService cs;
	public static CheckService getInstance(){
		if(cs==null){
			cs = new CheckSerivceImpl();
		}
		return  cs;   
	}
}
