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
 * @author 姜志强
 * @see 注册会员信息
 * create: 2008-11-09
 */
public class RegisterAction extends BaseAction {
	private HyjbxxService hyjbxxService;
	public void setHyjbxxService(HyjbxxService hyjbxxService) {
		this.hyjbxxService = hyjbxxService;
	}
	/* 
	 *  会员注册：注册会员基本信息和公司基本信息,公司详细信息
	 */
	public ActionForward execute(ActionMapping mapping, ActionForm form,HttpServletRequest request,
			HttpServletResponse response)	throws Exception{
			HttpSession session = request.getSession();
			String rand = (String) session.getAttribute("rand");
			String registerStatus = (String) session.getAttribute("registerStatus");
			//验证码
			String yzm = request.getParameter("yzm");
			
			session.removeAttribute("rand");
			session.removeAttribute("registerStatus");
			session.invalidate();
			
			if(registerStatus.equals("fail")){
				return mapping.getInputForward();
			}			
			 //通过验证,注册用户表和公司表
			 if(rand.equals(yzm)){
				DynaActionForm registerForm = (DynaActionForm)form;
				Hyjbxx hyjbxx = new Hyjbxx();
				BeanUtils.copyProperties(hyjbxx,registerForm);
				Date date = new Date();
				String registerTime = TimeProcess.timeFormat(date);
				String  effectiveTime =  TimeProcess.timeAfterYear(date);
				
				hyjbxx.setRegistTime(registerTime);
				hyjbxx.setSfyx("0");			// 是否有效 0:无效 1：有效
				hyjbxx.setMemberType("0");		// 会员类型 0：免费 1：付费
				hyjbxx.setScsj(effectiveTime);	// 有效时间（免费会员为1年）
				
				
				//固定电话（公司电话）
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
				
				//注册公司基本信息
				Gsjbxx gsjbxx = new Gsjbxx();
				BeanUtils.copyProperties(gsjbxx,registerForm);
				//新用户注册时，默认公司基本信息表中的主营行业(zyhy)为null
				gsjbxx.setZyhy(null);
				
				//注册公司详细信息
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
