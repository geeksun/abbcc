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
			HttpSession session = request.getSession(true);
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
				Hyjbxx hy = new Hyjbxx();
				BeanUtils.copyProperties(hy,registerForm);
				Date date = new Date();
				String registerTime = TimeProcess.timeFormat(date);
				
				hy.setRegistTime(registerTime);
				hy.setSfyx("0");
				hy.setMemberType("0");
				
				//保存公司基本信息
				Gsjbxx gsjbxx = new Gsjbxx();
				BeanUtils.copyProperties(gsjbxx,registerForm);
				
				int i = hyjbxxService.save(hy);
				int k = hyjbxxService.save(gsjbxx);
				
				//System.out.println("registerStatus: "+i);
				if(i>0&&k>0){
					int hyjbxxid = hyjbxxService.getIdByName((String) registerForm.get("hydlm")); 
					session = request.getSession(true);
					session.setAttribute("hyjbxxid", hyjbxxid);
					session.setAttribute("customer", registerForm.get("hydlm")); 
					return mapping.findForward("registersuccess");
				}else{
					return mapping.findForward("fail");
				}
			}else{
				return mapping.getInputForward();
			}
			
	}
	
}
