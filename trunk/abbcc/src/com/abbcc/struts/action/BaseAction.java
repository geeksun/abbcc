package com.abbcc.struts.action;

import org.apache.struts.actions.DispatchAction;

import com.abbcc.factory.DAOFactory;
import com.abbcc.service.ProductService;
import com.abbcc.service.ServiceFactory;

public class BaseAction extends DispatchAction {
	
	protected ProductService productService=ServiceFactory.getProductService();
	
	private static DAOFactory daofactory;
	public static DAOFactory getDAOFactory(){
		if(daofactory==null){
			daofactory=new DAOFactory();
		}
		return daofactory;
	}

}
