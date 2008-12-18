package com.abbcc.customer;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.DynaActionForm;

import com.abbcc.common.TimeProcess;
import com.abbcc.pojo.Gsjbxx;
import com.abbcc.pojo.Hyjbxx;
import com.abbcc.service.HyjbxxService;
import com.abbcc.struts.action.BaseAction;

/**
 * @author 姜志强
 *  会员注册
 */
public class RegisterAction extends BaseAction {
	private HyjbxxService hyjbxxService;
	public void setHyjbxxService(HyjbxxService hyjbxxService) {
		this.hyjbxxService = hyjbxxService;
	}
	public ActionForward execute(ActionMapping mapping, ActionForm form,HttpServletRequest request,
			HttpServletResponse response)	throws Exception{
			HttpSession session = request.getSession();
			String rand = (String) session.getAttribute("rand");
			String registerStatus = (String) session.getAttribute("registerStatus");
			String yzm = request.getParameter("yzm");
			
			session.removeAttribute("rand");
			session.removeAttribute("registerStatus");
			session.invalidate();
			
			//System.out.println("registerStatus: "+registerStatus);
			if(registerStatus.equals("fail")){
				return mapping.getInputForward();
			}			
			 //注册用户表和公司表
			 if(rand.equals(yzm)){
				DynaActionForm registerForm = (DynaActionForm)form;
				Hyjbxx hyjbxx = new Hyjbxx();
				BeanUtils.copyProperties(hyjbxx,registerForm);
				Date date = new Date();
				String registerTime = TimeProcess.timeFormat(date);
				
				hyjbxx.setRegistTime(registerTime);
				hyjbxx.setSfyx("0");
				hyjbxx.setMemberType("0");
				
				//保存公司基本信息
				Gsjbxx gsjbxx = new Gsjbxx();
				BeanUtils.copyProperties(gsjbxx,registerForm);
				
				/*int i = hyjbxxService.add(hyjbxx);
				int k = hyjbxxService.add(gsjbxx);*/ 
				int flag = hyjbxxService.add(hyjbxx, gsjbxx);
				
				//System.out.println("registerStatus: "+i);
				if(flag>0){
					//int hyjbxxid = hyjbxxService.getIdByName((String) registerForm.get("hydlm")); 
					String hyjbxxid = hyjbxxService.getIdByName((String) registerForm.get("hydlm"));
					if(!hyjbxxid.equals("")){
						session = request.getSession();
						session.setAttribute("hyjbxxid", hyjbxxid);
						session.setAttribute("customer", registerForm.get("hydlm")); 
						return mapping.findForward("registersuccess");
					}else{
						System.out.println("register account "+registerForm.get("hydlm")+ ":hyjbxxid is empty!");
						return mapping.getInputForward();
					}
				}else{
					return mapping.findForward("fail");
				}
			}else{
				return mapping.getInputForward();
			}
			
	}
	
}
