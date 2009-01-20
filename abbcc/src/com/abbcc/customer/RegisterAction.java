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
import com.abbcc.pojo.Gsxxxx;
import com.abbcc.pojo.Hyjbxx;
import com.abbcc.service.HyjbxxService;
import com.abbcc.struts.action.BaseAction;

/**
 * @author ��־ǿ
 * @see ע���Ա��Ϣ
 * create: 2008-11-09
 */
public class RegisterAction extends BaseAction {
	private HyjbxxService hyjbxxService;
	public void setHyjbxxService(HyjbxxService hyjbxxService) {
		this.hyjbxxService = hyjbxxService;
	}
	/* 
	 *  ��Աע�᣺ע���Ա������Ϣ�͹�˾������Ϣ,��˾��ϸ��Ϣ
	 */
	public ActionForward execute(ActionMapping mapping, ActionForm form,HttpServletRequest request,
			HttpServletResponse response)	throws Exception{
			HttpSession session = request.getSession();
			String rand = (String) session.getAttribute("rand");
			String registerStatus = (String) session.getAttribute("registerStatus");
			//��֤��
			String yzm = request.getParameter("yzm");
			
			session.removeAttribute("rand");
			session.removeAttribute("registerStatus");
			session.invalidate();
			
			if(registerStatus.equals("fail")){
				return mapping.getInputForward();
			}			
			 //ͨ����֤,ע���û���͹�˾��
			 if(rand.equals(yzm)){
				DynaActionForm registerForm = (DynaActionForm)form;
				Hyjbxx hyjbxx = new Hyjbxx();
				BeanUtils.copyProperties(hyjbxx,registerForm);
				Date date = new Date();
				String registerTime = TimeProcess.timeFormat(date);
				String  effectiveTime =  TimeProcess.timeAfterYear(date);
				
				hyjbxx.setRegistTime(registerTime);
				hyjbxx.setSfyx("0");			// �Ƿ���Ч 0:��Ч 1����Ч
				hyjbxx.setMemberType("0");		// ��Ա���� 0����� 1������
				hyjbxx.setScsj(effectiveTime);	// ��Чʱ�䣨��ѻ�ԱΪ1�꣩
				
				
				//�̶��绰����˾�绰��
				String area = request.getParameter("area");
				String phone = request.getParameter("phone");
				String extension = request.getParameter("extension");
				StringBuffer sf;
				if(!extension.trim().equals("")){
					sf = new StringBuffer();
					sf.append(area).append("/").append(phone).append("/").append(extension);
					hyjbxx.setGddh(sf.toString());
				}else{
					sf = new StringBuffer();
					sf.append(area).append("/").append(phone);
					hyjbxx.setGddh(sf.toString()); 
				}
				
				//ע�ṫ˾������Ϣ
				Gsjbxx gsjbxx = new Gsjbxx();
				BeanUtils.copyProperties(gsjbxx,registerForm);
				//���û�ע��ʱ��Ĭ�Ϲ�˾������Ϣ���е���Ӫ��ҵ(zyhy)Ϊnull
				gsjbxx.setZyhy(null);
				
				//ע�ṫ˾��ϸ��Ϣ
				Gsxxxx gsxxxx = new Gsxxxx();
				
				int flag = hyjbxxService.add(hyjbxx, gsjbxx, gsxxxx);
				
				if(flag>0){
					String hyjbxxid = hyjbxxService.getIdByName((String) registerForm.get("hydlm"));
					if(!hyjbxxid.equals("")){
						session = request.getSession();
						session.setAttribute("hyjbxxid", hyjbxxid);
						session.setAttribute("customer", registerForm.get("hydlm")); 
						return mapping.findForward("registersuccess");
					}else{
						log.info("register account "+registerForm.get("hydlm")+ ":hyjbxxid is empty!");
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
