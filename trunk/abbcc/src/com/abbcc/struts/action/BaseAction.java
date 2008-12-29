package com.abbcc.struts.action;

import org.apache.struts.actions.DispatchAction;

import com.abbcc.service.HyjbxxService;
import com.abbcc.service.MessageService;
import com.abbcc.service.ProductService;
import com.abbcc.servlet.StartServlet;

public class BaseAction extends DispatchAction {
	
	protected ProductService productService= (ProductService) StartServlet.getBean("productService");
 	
	protected MessageService messageService=(MessageService)StartServlet.getBean("messageService");
	
	protected HyjbxxService hyjbxxService=(HyjbxxService)StartServlet.getBean("hyjbxxService");


}
