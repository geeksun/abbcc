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
 * @author ��־ǿ
 * @see ֤ʵ��˾ʵ����Action,��������֤��,����ʵ��,��˾��־
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
	 * @see ������Ϣ����-->����֤��
	 */
	public ActionForward displayHonorCertificate(ActionMapping mapping, ActionForm form,HttpServletRequest request,
			HttpServletResponse response)	throws Exception{
			HttpSession session = request.getSession(false);
			String hyjbxxid = (String) session.getAttribute("hyjbxxid");
			
			
			//Ҫ����ҳ����ʾ������
			String content = null;
			request.setAttribute("content", content);
			
			return mapping.findForward("honor_certificate");
	}
	
	/**
	 * @see ������Ϣ����-->����֤��-->�ϴ���˾����֤��ͼƬ
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
