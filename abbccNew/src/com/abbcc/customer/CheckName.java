package com.abbcc.customer;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.abbcc.service.HyjbxxService;
import com.abbcc.struts.action.BaseAction;

public class CheckName extends BaseAction {
	private HyjbxxService hyjbxxService;
	public void setHyjbxxService(HyjbxxService hyjbxxService) {
		this.hyjbxxService = hyjbxxService;
	}
	public ActionForward execute(ActionMapping mapping, ActionForm form,HttpServletRequest request,
			HttpServletResponse response)	throws Exception{
		response.setContentType("text/xml;charset=GBK");
		response.setHeader("Cache-Control", "no-cache");
		PrintWriter out = response.getWriter();
		
		HttpSession session = request.getSession(true);
		session.removeAttribute("registerStatus");
		
		String hydlm = request.getParameter("hydlm").trim();
		//  必须是>>>UTF-8
		hydlm = java.net.URLDecoder.decode(hydlm, "UTF-8").trim();

		//  少用 boolean 型变量，boolean 型变量占内存,取少量记录
		boolean i = hyjbxxService.checkName(hydlm);
		if(i){ 
			session.setAttribute("registerStatus", "fail");
			out.print("fail");
		}else{
			session.setAttribute("registerStatus", "success");
			out.print("success");
		}
		return null;
	}
}
