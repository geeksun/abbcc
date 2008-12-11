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
		//CheckService cs = ServiceFactory.getCheckService();
		
		HttpSession session = request.getSession(true);
		session.removeAttribute("registerStatus");
		
		String hydlm = request.getParameter("hydlm").trim();
		//  ������>>>UTF-8
		hydlm = java.net.URLDecoder.decode(hydlm, "UTF-8").trim();

		//System.out.println("hydlm>>>> " + hydlm);
		//  ���� boolean �ͱ�����boolean �ͱ���ռ�ڴ�,ȡ������¼
		boolean i = hyjbxxService.checkName(hydlm);
		/*if(name == null||name.equals("")){
			out.print("<font color=red>������ʹ�ÿ��û���</font>");
		}
		else if(i){
			out.print("<font color=red>�û����Ѵ���</font>");			
		}
		else{
			out.print("<font color=blue>��ϲ,����ע��</font>");*/
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
