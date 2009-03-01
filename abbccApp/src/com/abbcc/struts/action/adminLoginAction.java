package com.abbcc.struts.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.DynaActionForm;
import org.apache.struts.actions.DispatchAction;

public class adminLoginAction extends DispatchAction {
	public ActionForward adminlogin(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		DynaActionForm df = (DynaActionForm)form;
		System.out.println("  管理员姓名: ** " + df.getString("uname"));
		System.out.println("  密码: ** " + df.getString("upass"));
		return mapping.findForward("adminlogin");
	}
}
