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
import com.abbcc.pojo.Hyjbxx;
import com.abbcc.service.HyjbxxService;
import com.abbcc.struts.action.BaseAction;

/**
 * @author ��־ǿ
 *  ��Աע��
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
			 if(rand.equals(yzm)){
				DynaActionForm registerForm = (DynaActionForm)form;
				Hyjbxx hy = new Hyjbxx();
				BeanUtils.copyProperties(hy,registerForm);
				Date date = new Date();
				String registerTime = TimeProcess.timeFormat(date);
				
				hy.setRegistTime(registerTime);
				hy.setSfyx("0");
				hy.setMemberType("0");
				
				int i = hyjbxxService.save(hy);
				//System.out.println("registerStatus: "+i);
				if(i>0){
					return mapping.findForward("loginsuccess");
				}else{
					return mapping.findForward("fail");
				}
			}else{
				return mapping.getInputForward();
			}
			
	}
}
