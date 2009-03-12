package com.abbcc.customer;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;
import org.apache.struts.action.ActionMessages;
import org.apache.struts.action.DynaActionForm;

import com.abbcc.common.AppConstants;
import com.abbcc.service.HyjbxxService;
import com.abbcc.struts.action.BaseAction;

public class CustomerLoginAction extends BaseAction {
	private HyjbxxService hyjbxxService;

	public void setHyjbxxService(HyjbxxService hyjbxxService) {
		this.hyjbxxService = hyjbxxService;
	}

	public ActionForward execute(ActionMapping actionMapping, ActionForm actionForm,HttpServletRequest request,
			HttpServletResponse response)	throws Exception{
		
		try{
		//  防止重复提交
		/*if(!isTokenValid(request)) {
	        ActionMessages messages = new ActionMessages();

	        messages.add(AppConstants.RepeatLogin,new ActionMessage("error.submit.double"));
	        saveMessages(request.getSession(), messages);
	        
	        //如果是重复提交，重新生成token
	        saveToken(request);
	        return actionMapping.getInputForward();
	    }*/
		
		DynaActionForm loginForm = (DynaActionForm)actionForm;
		String name = loginForm.getString("hydlm");    
		String pass = loginForm.getString("mm");
		
		int validate = hyjbxxService.login(name,pass);
		if(validate>0){
			HttpSession session = request.getSession(true);
			String hyjbxxid = hyjbxxService.getIdByName(name);
			session.setAttribute("customer", name);
			session.setAttribute("hyjbxxid", hyjbxxid);
			 
			return actionMapping.findForward("loginsuccess");
			
			//if(!hyjbxxid.equals("")){
			/*}else{
				System.out.println("account login " + name+ ":hyjbxxid is empty!");
				ActionMessages am = new ActionMessages();
				am.add(ActionMessages.GLOBAL_MESSAGE, new ActionMessage("hyjbxxidEmpty"));
				return actionMapping.getInputForward();
			}*/
		}else{
			/*ActionMessages am = new ActionMessages();
			am.add(ActionMessages.GLOBAL_MESSAGE, new ActionMessage("usernameError")); 
			this.saveMessages(request, am); */
			request.setAttribute(AppConstants.CUSTOMER_LOGININFO, AppConstants.CUSTOMER_LOGININFO_1);
			
			
			return actionMapping.findForward("login");
		}
		}catch(Exception e){
			e.printStackTrace();
		}
		return null;
	}
}
