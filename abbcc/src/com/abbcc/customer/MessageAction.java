package com.abbcc.customer;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.abbcc.pojo.Message;
import com.abbcc.struts.action.BaseAction;
import com.abbcc.util.pagination.NormalPagination;
import com.abbcc.util.pagination.Pagination;

public class MessageAction extends BaseAction{
	
	public ActionForward addMessages(ActionMapping actionMapping, ActionForm actionForm, HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String title=(String) request.getParameter("title");
		String content=(String) request.getParameter("content");
		
		Message message=new Message();
		
		message.setContent(content);
		message.setFromid(1);
		message.setState(1);
		message.setTitle(title);
		message.setToid(2);
		message.setType(1);
		this.messageService.addMessage(message);
	
		 
		
		 return this.listAllMessage(actionMapping, actionForm, request, response);
	}

	public ActionForward listAllMessage(ActionMapping actionMapping, ActionForm actionForm, HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		try{
		String currentPage=request.getParameter("currentPage");
		if(currentPage==null)currentPage="1";
		int _currentPage=Integer.parseInt(currentPage);
		int onePageSize=5;
		 
		int start=(_currentPage-1)*onePageSize;
		int end=start+onePageSize;
		String hyjbxxid=(String)request.getSession().getAttribute("hyjbxxid"); 
	 	int fromId=Integer.valueOf(hyjbxxid);
		List list=messageService.getMessageListByFromId(fromId, start, end);
		int count=messageService.getMessageSizeByFromId(fromId);
		request.setAttribute("listAll", list);
		request.setAttribute("currentPage", currentPage);
		 
		int pageCount=count/onePageSize;
		if(count%onePageSize!=0){
			pageCount=pageCount+1; 
		}
		request.setAttribute("count", count);
		request.setAttribute("pageCount", pageCount);
		}catch(Exception e){
			e.printStackTrace();
		}
		return actionMapping.findForward("allMessageList");
	}
	public ActionForward showMessage(ActionMapping actionMapping, ActionForm actionForm, HttpServletRequest request, HttpServletResponse response) throws Exception {
		String id=request.getParameter("id");
		long messageId=Long.valueOf(id);
		Message message=messageService.getMessage(1, messageId);
		request.setAttribute("showOne", message);
		return actionMapping.findForward("showMessage");
	}
	public ActionForward deleteMessage(ActionMapping actionMapping, ActionForm actionForm, HttpServletRequest request, HttpServletResponse response) throws Exception {
		try {
			String hyjbxxid = (String) request.getSession().getAttribute(
					"hyjbxxid");
			int fromId = Integer.valueOf(hyjbxxid);
			String id = request.getParameter("id");

			long messageId = Long.valueOf(id);
			messageService.deleteMessage(fromId, messageId);
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return this.listAllMessage(actionMapping, actionForm, request, response);
	}
}
