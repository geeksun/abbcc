package com.abbcc.exception;

/**
 * @author rian
 *  会员操作异常类
 */
public class DaoException extends Exception {
 	 
	private static final long serialVersionUID = -356082732403752254L;
	public DaoException(String message)
	{
		super(message);
	}
	 
	public DaoException(Throwable cause) {
		super(cause); 
	}
	public DaoException(String message, Throwable cause) {
		super(message, cause);
		 
	} 
	
}
