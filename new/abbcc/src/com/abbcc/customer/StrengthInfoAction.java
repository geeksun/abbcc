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
 * @author 姜志强
 * @see 证实公司实力的Action,包括荣誉证书,技术实力,公司标志
 *  create at 2009-1-13
 */
public class StrengthInfoAction extends BaseAction {
	private HyjbxxService hyjbxxService;
	
	public void setHyjbxxService(HyjbxxService hyjbxxService) {
		this.hyjbxxService = hyjbxxService;
	}

	/**
	 * @see 基本信息设置--> show 荣誉证书
	 */
	public ActionForward displayHonorCertificate(ActionMapping mapping, ActionForm form,HttpServletRequest request,
			HttpServletResponse response)	throws Exception{
			HttpSession session = request.getSession(false);
			String hyjbxxid = (String) session.getAttribute("hyjbxxid");
			
			Honor honor = hyjbxxService.findById(hyjbxxid);
			if(honor!=null){
				//要在页面显示的内容
				String content = honor.getHonorInfo();
				if(StringUtils.isBlank(content))
						request.setAttribute("content", content);
			}
			
			//上传路径的cookie:honor
			Cookie strength_path = new Cookie(AppConstants.FCK_UPLOADPATH, AppConstants.FCK_UPLOADDIR_1);
			response.addCookie(strength_path);
			
			return mapping.findForward("honor_certificate");
	}
	
	/**
	 * @see 基本信息设置-->荣誉证书-->上传公司荣誉证书图片
	 */
	public ActionForward honorPictureHandle(ActionMapping mapping, ActionForm form,HttpServletRequest request,
			HttpServletResponse response)	throws Exception{
			HttpSession session = request.getSession(false);
			String hyjbxxid = (String) session.getAttribute("hyjbxxid");
			Integer intHyjbxxid = Integer.valueOf(hyjbxxid);
			
			String content = request.getParameter("content");
			
			if(!StringUtils.isBlank(content)){
				request.setAttribute(AppConstants.CHECKFILE_INFO, "提交的内容为空");
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
	 * @see 基本信息设置-->技术实力
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
			
			//文件的上传路径cookie:technology
			Cookie strength_path = new Cookie(AppConstants.FCK_UPLOADPATH, AppConstants.FCK_UPLOADDIR_2);
			response.addCookie(strength_path);
			
			return mapping.findForward("technology");
	}
	
	/**
	 * @see 基本信息设置-->技术实力-->修改技术实力信息
	 */
	public ActionForward technologyHandle(ActionMapping mapping, ActionForm form,HttpServletRequest request,
			HttpServletResponse response)	throws Exception{
			HttpSession session = request.getSession(false);
			String hyjbxxid = (String) session.getAttribute("hyjbxxid");
			Integer intHyjbxxid = Integer.valueOf(hyjbxxid);
			
			String content = request.getParameter("content");
			
			if(!StringUtils.isBlank(content)){
				request.setAttribute(AppConstants.CHECKFILE_INFO, "提交的内容为空");
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
	 * @see 基本信息设置-->公司标志Logo
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
			
			//上传路径的cookie:companylogo
			Cookie strength_path = new Cookie(AppConstants.FCK_UPLOADPATH, AppConstants.FCK_UPLOADDIR_3);
			response.addCookie(strength_path);
			
			return mapping.findForward("company_logo");
	}
	
	/**
	 * @see 基本信息设置-->公司标志-->修改公司 Logo信息
	 */
	public ActionForward companyLogoHandle(ActionMapping mapping, ActionForm form,HttpServletRequest request,
			HttpServletResponse response)	throws Exception{
			HttpSession session = request.getSession(false);
			String hyjbxxid = (String) session.getAttribute("hyjbxxid");
			Integer intHyjbxxid = Integer.valueOf(hyjbxxid);
			
			String content = request.getParameter("content");
			
			if(!StringUtils.isBlank(content)){
				request.setAttribute(AppConstants.CHECKFILE_INFO, "提交的内容为空");
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
	 * @return 文件名字,
	 *  将文件保存在指定文件夹里
	 * @throws MalformedURLException 
	 */
    public String getFielName(FormFile file,HttpServletRequest request){
		String fname = null;    //临时图片变量
		UploadUtil uutil = new UploadUtil();
		
		//绝对路径
		//String dir=servlet.getServletContext().getRealPath("/StrengthFiles/honor");
		String dir=request.getSession().getServletContext().getRealPath("/StrengthFiles/honor");
		 
		System.out.println("dir:"+dir);
		String checkfile = uutil.checkFile(file);//检查文件类型
		
		if(checkfile.equals("ok")){
			fname = uutil.uploadutil(file,dir);
			fname = "/StrengthFiles/honor"+"/"+fname;
			System.out.println("frame:"+fname);
		}
		return fname;
	}
	
		
	
}
