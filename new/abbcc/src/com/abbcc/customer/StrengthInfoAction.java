package com.abbcc.customer;

import java.net.MalformedURLException;
import java.util.Date;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.upload.FormFile;

import com.abbcc.common.AppConstants;
import com.abbcc.common.StringUtils;
import com.abbcc.common.TimeProcess;
import com.abbcc.common.UploadUtil;
import com.abbcc.pojo.CompanyLogo;
import com.abbcc.pojo.Honor;
import com.abbcc.pojo.Technology;
import com.abbcc.service.HyjbxxService;
import com.abbcc.struts.action.BaseAction;

/**
 * @author ��־ǿ
 * @see ֤ʵ��˾ʵ����Action,��������֤��,����ʵ��,��˾��־
 *  create at 2009-1-13
 */
public class StrengthInfoAction extends BaseAction {
	private HyjbxxService hyjbxxService;
	
	public void setHyjbxxService(HyjbxxService hyjbxxService) {
		this.hyjbxxService = hyjbxxService;
	}

	/**
	 * @see ������Ϣ����--> show ����֤��
	 */
	public ActionForward displayHonorCertificate(ActionMapping mapping, ActionForm form,HttpServletRequest request,
			HttpServletResponse response)	throws Exception{
			HttpSession session = request.getSession(false);
			String hyjbxxid = (String) session.getAttribute("hyjbxxid");
			
			Honor honor = hyjbxxService.findById(hyjbxxid);
			if(honor!=null){
				//Ҫ��ҳ����ʾ������
				String content = honor.getHonorInfo();
				if(StringUtils.isBlank(content))
						request.setAttribute("content", content);
			}
			
			//�ϴ�·����cookie:honor
			Cookie strength_path = new Cookie(AppConstants.FCK_UPLOADPATH, AppConstants.FCK_UPLOADDIR_1);
			response.addCookie(strength_path);
			
			return mapping.findForward("honor_certificate");
	}
	
	/**
	 * @see ������Ϣ����-->����֤��-->�ϴ���˾����֤��ͼƬ
	 */
	public ActionForward honorPictureHandle(ActionMapping mapping, ActionForm form,HttpServletRequest request,
			HttpServletResponse response)	throws Exception{
			HttpSession session = request.getSession(false);
			String hyjbxxid = (String) session.getAttribute("hyjbxxid");
			Integer intHyjbxxid = Integer.valueOf(hyjbxxid);
			
			String content = request.getParameter("content");
			
			if(!StringUtils.isBlank(content)){
				request.setAttribute(AppConstants.CHECKFILE_INFO, "�ύ������Ϊ��");
				return mapping.findForward("honor_certificate");
			}
			Honor honor = hyjbxxService.findById(hyjbxxid);
			if(honor==null){
				honor = new Honor();
				honor.setHyjbxxid(intHyjbxxid);
				honor.setHonorInfo(content);
				Date date = new Date();
				String createTime = TimeProcess.timeFormat(date);
				honor.setCreateTime(createTime);
				hyjbxxService.add(honor);
			}else{
				honor.setHyjbxxid(intHyjbxxid);
				honor.setHonorInfo(content);
				Date date = new Date();
				String createTime = TimeProcess.timeFormat(date);
				honor.setCreateTime(createTime);
				hyjbxxService.update(honor);
			}
			request.setAttribute(AppConstants.OPERA_FLAG, AppConstants.HONOR_REFER);
			return mapping.findForward("modifySuccess");
	}
	
	/**
	 * @see ������Ϣ����-->����ʵ��
	 */
	public ActionForward displayTechnology(ActionMapping mapping, ActionForm form,HttpServletRequest request,
			HttpServletResponse response)	throws Exception{
			HttpSession session = request.getSession(false);
			String hyjbxxid = (String) session.getAttribute("hyjbxxid");
			
			Technology tech = hyjbxxService.findTechById(hyjbxxid);
			if(tech!=null){
				String content = tech.getTechInfo();
				if(StringUtils.isBlank(content))
						request.setAttribute("content", content);
			}
			
			//�ļ����ϴ�·��cookie:technology
			Cookie strength_path = new Cookie(AppConstants.FCK_UPLOADPATH, AppConstants.FCK_UPLOADDIR_2);
			response.addCookie(strength_path);
			
			return mapping.findForward("technology");
	}
	
	/**
	 * @see ������Ϣ����-->����ʵ��-->�޸ļ���ʵ����Ϣ
	 */
	public ActionForward technologyHandle(ActionMapping mapping, ActionForm form,HttpServletRequest request,
			HttpServletResponse response)	throws Exception{
			HttpSession session = request.getSession(false);
			String hyjbxxid = (String) session.getAttribute("hyjbxxid");
			Integer intHyjbxxid = Integer.valueOf(hyjbxxid);
			
			String content = request.getParameter("content");
			
			if(!StringUtils.isBlank(content)){
				request.setAttribute(AppConstants.CHECKFILE_INFO, "�ύ������Ϊ��");
				return mapping.findForward("technology");
			}
			Technology tech = hyjbxxService.findTechById(hyjbxxid);
			if(tech==null){
				tech = new Technology();
				tech.setHyjbxxid(intHyjbxxid);
				tech.setTechInfo(content);
				Date date = new Date();
				String handleTime = TimeProcess.timeFormat(date);
				tech.setHandleTime(handleTime);
				hyjbxxService.add(tech);
			}else{
				tech.setHyjbxxid(intHyjbxxid);
				tech.setTechInfo(content);
				Date date = new Date();
				String handleTime = TimeProcess.timeFormat(date);
				tech.setHandleTime(handleTime);
				hyjbxxService.update(tech);
			}
			request.setAttribute(AppConstants.OPERA_FLAG, AppConstants.TECHNOLOGY_REFER); 
			return mapping.findForward("modifySuccess");
	}
	
	/**
	 * @see ������Ϣ����-->��˾��־Logo
	 */
	public ActionForward displayCompanyLogo(ActionMapping mapping, ActionForm form,HttpServletRequest request,
			HttpServletResponse response)	throws Exception{
			HttpSession session = request.getSession(false);
			String hyjbxxid = (String) session.getAttribute("hyjbxxid");
			
			CompanyLogo company = hyjbxxService.findLogoById(hyjbxxid);
			if(company!=null){
				String content = company.getLogoInfo();
				if(StringUtils.isBlank(content))
						request.setAttribute("content", content);
			}
			
			//�ϴ�·����cookie:companylogo
			Cookie strength_path = new Cookie(AppConstants.FCK_UPLOADPATH, AppConstants.FCK_UPLOADDIR_3);
			response.addCookie(strength_path);
			
			return mapping.findForward("company_logo");
	}
	
	/**
	 * @see ������Ϣ����-->��˾��־-->�޸Ĺ�˾ Logo��Ϣ
	 */
	public ActionForward companyLogoHandle(ActionMapping mapping, ActionForm form,HttpServletRequest request,
			HttpServletResponse response)	throws Exception{
			HttpSession session = request.getSession(false);
			String hyjbxxid = (String) session.getAttribute("hyjbxxid");
			Integer intHyjbxxid = Integer.valueOf(hyjbxxid);
			
			String content = request.getParameter("content");
			
			if(!StringUtils.isBlank(content)){
				request.setAttribute(AppConstants.CHECKFILE_INFO, "�ύ������Ϊ��");
				return mapping.findForward("company_logo");
			}
			CompanyLogo company = hyjbxxService.findLogoById(hyjbxxid);
			if(company==null){
				company = new CompanyLogo();
				company.setHyjbxxid(intHyjbxxid);
				company.setLogoInfo(content);
				Date date = new Date();
				String handleTime = TimeProcess.timeFormat(date);
				company.setHandleTime(handleTime);
				hyjbxxService.add(company);
			}else{
				company.setHyjbxxid(intHyjbxxid);
				company.setLogoInfo(content);
				Date date = new Date();
				String handleTime = TimeProcess.timeFormat(date);
				company.setHandleTime(handleTime);
				hyjbxxService.update(company);
			}
			request.setAttribute(AppConstants.OPERA_FLAG, AppConstants.COMPANYLOGO_REFER);
			return mapping.findForward("modifySuccess");
	}
	
	
	/** 
	 * @return �ļ�����,
	 *  ���ļ�������ָ���ļ�����
	 * @throws MalformedURLException 
	 */
    public String getFielName(FormFile file,HttpServletRequest request){
		String fname = null;    //��ʱͼƬ����
		UploadUtil uutil = new UploadUtil();
		
		//����·��
		//String dir=servlet.getServletContext().getRealPath("/StrengthFiles/honor");
		String dir=request.getSession().getServletContext().getRealPath("/StrengthFiles/honor");
		 
		System.out.println("dir:"+dir);
		String checkfile = uutil.checkFile(file);//����ļ�����
		
		if(checkfile.equals("ok")){
			fname = uutil.uploadutil(file,dir);
			fname = "/StrengthFiles/honor"+"/"+fname;
			System.out.println("frame:"+fname);
		}
		return fname;
	}
	
		
	
}
