package com.abbcc.customer;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.abbcc.common.AppConstants;
import com.abbcc.common.TimeProcess;
import com.abbcc.pojo.Gsjbxx;
import com.abbcc.pojo.Hyjbxx;
import com.abbcc.service.ManagerService;
import com.abbcc.struts.action.BaseAction;
import com.abbcc.vo.MemberPageBean;

/**
 * @author ��־ǿ
 *  ��Ա����
 *  create at 2009-1-19
 */
public class MemberManageAction extends BaseAction {
	private ManagerService managerService;
	
	public void setManagerService(ManagerService managerService) {
		this.managerService = managerService;
	}
	
	/**
	 * @see ��Ա����-->���û�ע����� 
	 */
	public ActionForward displayRegisterMember(ActionMapping mapping, ActionForm form,HttpServletRequest request,
			HttpServletResponse response)	throws Exception{
			HttpSession session = request.getSession(false);
			String managerName = (String) session.getAttribute("managerName");
			
			if(managerName!=null){
				String jumpPage = request.getParameter("jumpPage");
				if(jumpPage == null)
					jumpPage = "1";
				
				MemberPageBean page = managerService.listData(jumpPage);
			   	request.setAttribute("page",page);
				return mapping.findForward("newRegisterMember");
			}
			else{
				request.setAttribute(AppConstants.MANAGER_LOGININFO, AppConstants.MANAGER_LOGININFO_4);
				return mapping.findForward("managerLogin");
			}
	}
	
	/**
	 * @see �����ע��Ļ�Ա
	 *  �޸Ļ�Ա���ͺ��ʻ����ͣ�year��
	 */
	public ActionForward auditRegisterMember(ActionMapping mapping, ActionForm form,HttpServletRequest request,
			HttpServletResponse response)	throws Exception{
			HttpSession session = request.getSession(false);
			String managerName = (String) session.getAttribute("managerName");
			
			if(managerName!=null){
				String hyjbxxid = request.getParameter("hyjbxxid");
				String memberType = request.getParameter("memberType");
				String accountType = request.getParameter("accountType");
				int count = Integer.parseInt(accountType);
				
				if(hyjbxxid!=null){
					Hyjbxx hyjbxx = managerService.findById(hyjbxxid);
					if(hyjbxx!=null){
						Integer intHyjbxxid = Integer.valueOf(hyjbxxid);
						hyjbxx.setHyjbxxid(intHyjbxxid);
						hyjbxx.setMemberType(memberType);					//��Ա����
						Date registTime = hyjbxx.getRegistTime();	
						Date newScsj = TimeProcess.specifyTime(registTime, count);
						hyjbxx.setScsj(newScsj);							//��Чʱ��
						
						managerService.auditRegisterMember(hyjbxx);
						request.setAttribute(AppConstants.OPERA_FLAG, AppConstants.AUDIT_REGISTER_MEMBER);
						return mapping.findForward("prompt");
					}else{
						request.setAttribute(AppConstants.OPERA_FLAG, AppConstants.AUDIT_REGISTER_INFO_3);
						return mapping.findForward("prompt");
					}
				}else{
					request.setAttribute(AppConstants.OPERA_FLAG, AppConstants.AUDIT_REGISTER_INFO_2);
					return mapping.findForward("prompt");
				}
			}
			request.setAttribute(AppConstants.OPERA_FLAG, AppConstants.AUDIT_REGISTER_INFO_1);
			return mapping.findForward("prompt");
	}
	
	/**
	 * @see ��Ա����-->�����Ա����(sfyxΪ0)
	 */
	public ActionForward displayPendMember(ActionMapping mapping, ActionForm form,HttpServletRequest request,
			HttpServletResponse response)	throws Exception{
			HttpSession session = request.getSession(false);
			String managerName = (String) session.getAttribute("managerName");
			
			if(managerName!=null){
				String jumpPage = request.getParameter("jumpPage");
				if(jumpPage == null)
					jumpPage = "1";
				
				MemberPageBean page = managerService.listPendMemberData(jumpPage);
			   	request.setAttribute("page",page);
				return mapping.findForward("displayPendMember");
			}
			else{
				request.setAttribute(AppConstants.MANAGER_LOGININFO, AppConstants.MANAGER_LOGININFO_4);
				return mapping.findForward("managerLogin");
			}
	}
	
	/**
	 * @see ��Ա����-->�����Ա����-->�쿴��Ա��ϸ��Ϣ
	 */
	public ActionForward detailMemberInfo(ActionMapping mapping, ActionForm form,HttpServletRequest request,
			HttpServletResponse response)	throws Exception{
			HttpSession session = request.getSession(false);
			String managerName = (String) session.getAttribute("managerName");	
			String hyjbxxid = request.getParameter("hyjbxxid");
			
			Hyjbxx hyjbxx = managerService.getCustomerById(hyjbxxid);
			if(hyjbxx!=null)
				request.setAttribute("hyjbxx", hyjbxx);
			
			List list = managerService.getMemberById(hyjbxxid);
			if(list.size()==1){
				Gsjbxx gsjbxx = (Gsjbxx) list.get(0); 
				request.setAttribute("gsjbxx", gsjbxx);
			}
				
			return mapping.findForward("detailMemberInfo");	 
	}
	
	/**
	 * @see ��Ա����-->���շѻ�Ա-->�쿴���շѻ�Ա��ϸ��Ϣ
	 */
	public ActionForward displayChargedMember(ActionMapping mapping, ActionForm form,HttpServletRequest request,
			HttpServletResponse response)	throws Exception{
			HttpSession session = request.getSession(false);
			String managerName = (String) session.getAttribute("managerName");	
			String hyjbxxid = request.getParameter("hyjbxxid");
			
			if(managerName!=null){
				String jumpPage = request.getParameter("jumpPage");
				if(jumpPage == null)
					jumpPage = "1";
				
				MemberPageBean page = managerService.listChargedMemberData(jumpPage);
			   	request.setAttribute("page",page);
				return mapping.findForward("displayChargedMember");
			}
			else{
				request.setAttribute(AppConstants.MANAGER_LOGININFO, AppConstants.MANAGER_LOGININFO_4);
				return mapping.findForward("managerLogin");
			}
	}
	
	
	
}
