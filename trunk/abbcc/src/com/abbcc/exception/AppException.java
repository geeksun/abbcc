package com.abbcc.exception;

/**
 * @author rian
 *  ��Ա�����쳣��
 */
public class AppException extends Exception {
 	 
	private static final long serialVersionUID = -356082732403752254L;
	public AppException(String message)
	{
		super(message);
	}
	public AppException(String message,Exception e){
		super(message,e);
	}
	
}
