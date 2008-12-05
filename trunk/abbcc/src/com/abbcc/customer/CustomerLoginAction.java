package com.abbcc.customer;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;
import org.apache.struts.action.ActionMessages;
import org.apache.struts.action.DynaActionForm;

import com.abbcc.service.HyjbxxService;
import com.abbcc.struts.action.BaseAction;

public class CustomerLoginAction extends BaseAction {
	private HyjbxxService hyjbxxService;

	public void setHyjbxxService(HyjbxxService hyjbxxService) {
		this.hyjbxxService = hyjbxxService;
	}

	public ActionForward execute(ActionMapping actionMapping, ActionForm actionForm,HttpServletRequest request,
			HttpServletResponse response)	throws Exception{
		DynaActionForm loginForm = (DynaActionForm)actionForm;
		String name = loginForm.getString("hydlm");
		String pass = loginForm.getString("mm");
		//UserService as = ServiceFactory.getUserService();
		/*Hyjbxx hy = new Hyjbxx();
		BeanUtils.copyProperties(hy,loginForm);*/
		
		int validate = hyjbxxService.login(name,pass);
		//System.out.println("validate: "+validate);
		if(validate>0){
			return actionMapping.findForward("loginsuccess");
		}else{
			ActionMessages am = new ActionMessages();
			//System.out.println("error ");
			am.add(ActionMessages.GLOBAL_MESSAGE, new ActionMessage("usernameError")); 
			this.saveMessages(request, am); 
			
			return actionMapping.getInputForward();
		}
	}
}
