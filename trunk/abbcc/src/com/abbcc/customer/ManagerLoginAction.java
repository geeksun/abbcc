package com.abbcc.customer;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.DynaActionForm;

import com.abbcc.service.ManagerService;
import com.abbcc.struts.action.BaseAction;
/**
 * @author ��־ǿ
 *  ����Ա��¼
 *  create at 2009-1-19
 */
public class ManagerLoginAction extends BaseAction{
	private ManagerService managerService;
	
	public void setManagerService(ManagerService managerService) {
		this.managerService = managerService;
	}

	public ActionForward execute(ActionMapping actionMapping, ActionForm actionForm,HttpServletRequest request,
			HttpServletResponse response)	throws Exception{
			DynaActionForm loginForm = (DynaActionForm)actionForm;
			String managerName = loginForm.getString("managerName");    
			String pass = loginForm.getString("password");	
			
			int valid = managerService.login(managerName, pass);
			if(valid>0){
				HttpSession session = request.getSession(true);
				session.setAttribute("managerName", managerName);
				 
				return actionMapping.findForward("managerLoginSuccess");				
			}else{
				return actionMapping.getInputForward();
			}
			
	}
	
	
	
	
}