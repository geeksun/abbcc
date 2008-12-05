package com.abbcc.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.DynaActionForm;

import com.abbcc.service.AdminService;
import com.abbcc.service.ServiceFactory;
import com.abbcc.vo.GlyBean;
import com.abbcc.struts.action.BaseAction;

public class AdminLoginAction extends BaseAction {
	public ActionForward execute(ActionMapping actionMapping, ActionForm actionForm,HttpServletRequest request,
			HttpServletResponse response)	throws Exception{
		DynaActionForm loginForm = (DynaActionForm)actionForm;
		String name = loginForm.getString("uname");
		String pass = loginForm.getString("upass");
		
		AdminService as = ServiceFactory.getAdminService(); 
		GlyBean gb = new GlyBean();
		BeanUtils.copyProperties(gb,loginForm);
		
		boolean validate = as.login(gb);
		if(validate){
			return actionMapping.findForward("");
		}else{
			return actionMapping.findForward("");
		}
		
	}
}
