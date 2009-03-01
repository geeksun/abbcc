package com.abbcc.exception;

/**
 * @author geeksun
 *  会员操作异常类
 */
public class CustomerException extends Exception {
	private static final long serialVersionUID = 2263953025604502634L;
	public CustomerException(String message)
	{
		super(message);
	}
	public CustomerException(String message,Exception e){
		super(message,e);
	}
	
}
