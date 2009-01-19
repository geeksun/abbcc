package com.abbcc.customer;

import com.abbcc.service.ManagerService;
import com.abbcc.struts.action.BaseAction;

/**
 * @author 姜志强
 *  会员管理
 *  create at 2009-1-19
 */
public class MemberManageAction extends BaseAction {
private ManagerService managerService;
	
	public void setManagerService(ManagerService managerService) {
		this.managerService = managerService;
	}
	
	
}
