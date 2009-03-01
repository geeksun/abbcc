package com.abbcc.exception;

/**
 * @author geeksun
 *  会员操作异常类
 */
public class XmlException extends Exception {
	private static final long serialVersionUID = 2263953025604502634L;
	public XmlException(String message)
	{
		super(message);
	}
	public XmlException(String message,Exception e){
		super(message,e);
	}
	
}
