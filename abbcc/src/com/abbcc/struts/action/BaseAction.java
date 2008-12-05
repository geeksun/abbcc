package com.abbcc.struts.action;

import org.apache.struts.actions.DispatchAction;

import com.abbcc.factory.DAOFactory;

public class BaseAction extends DispatchAction {
	private static DAOFactory daofactory;
	public static DAOFactory getDAOFactory(){
		if(daofactory==null){
			daofactory=new DAOFactory();
		}
		return daofactory;
	}

}
