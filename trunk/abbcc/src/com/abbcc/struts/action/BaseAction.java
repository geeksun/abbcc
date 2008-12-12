package com.abbcc.struts.action;

import org.apache.struts.actions.DispatchAction;

import com.abbcc.service.ProductService;
import com.abbcc.servlet.StartServlet;

public class BaseAction extends DispatchAction {
	
	protected ProductService productService= (ProductService) StartServlet.getBean("productService");
	protected ProductService userService= (ProductService) StartServlet.getBean("userService");
	
	 

}
