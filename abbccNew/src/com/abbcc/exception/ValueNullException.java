package com.abbcc.exception;

/**
 * @author geeksun
 *  会员操作异常类
 */
public class ValueNullException extends Exception {
	private static final long serialVersionUID = 2263953025604502634L;
	public ValueNullException(String message)
	{
		super(message);
	}
	public ValueNullException(String message,Exception e){
		super(message,e);
	}
	
}
