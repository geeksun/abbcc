package com.abbcc.customer;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.ActionForm; 
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.abbcc.service.HyjbxxService;
import com.abbcc.struts.action.BaseAction;
import com.jspsmart.upload.SmartUpload;

/**
 * @author 姜志强
 * @see 证实公司实力的Action,包括荣誉证书,技术实力,公司标志
 *  create at 2009-1-13
 */
public class StrengthInfoAction extends BaseAction {
	private HyjbxxService hyjbxxService;
	private SmartUpload smartUpload;

	public void setSmartUpload(SmartUpload smartUpload) {
		this.smartUpload = smartUpload;
	}
	public void setHyjbxxService(HyjbxxService hyjbxxService) {
		this.hyjbxxService = hyjbxxService;
	}

	/**
	 * @see 基本信息设置-->荣誉证书
	 */
	public ActionForward displayHonorCertificate(ActionMapping mapping, ActionForm form,HttpServletRequest request,
			HttpServletResponse response)	throws Exception{
			HttpSession session = request.getSession(false);
			String hyjbxxid = (String) session.getAttribute("hyjbxxid");
			
			
			//要传到页面显示的内容
			String content = null;
			request.setAttribute("content", content);
			
			return mapping.findForward("honor_certificate");
	}
	
	/**
	 * @see 基本信息设置-->荣誉证书-->上传公司荣誉证书图片
	 */
	public ActionForward honorPictureHandle(ActionMapping mapping, ActionForm form,HttpServletRequest request,
			HttpServletResponse response)	throws Exception{
			HttpSession session = request.getSession(false);
			String hyjbxxid = (String) session.getAttribute("hyjbxxid");
			
			String honorPicture = request.getParameter("honorPicture");
			System.out.println(honorPicture);
			
			//smartUpload.initialize(pageContext);
			
			return mapping.findForward("honor_certificate");
	}
}
