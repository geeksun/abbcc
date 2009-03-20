package com.abbcc.customer;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.abbcc.common.AppConstants;
import com.abbcc.pojo.Hyjbxx;
import com.abbcc.pojo.Message;
import com.abbcc.struts.action.BaseAction;
import com.abbcc.util.RequestUtils;
import com.abbcc.util.pagination.NormalPagination;
import com.abbcc.util.pagination.PageConstants;
import com.abbcc.util.pagination.Pagination;

public class MessageAction extends BaseAction {

	public ActionForward addMessages(ActionMapping actionMapping,
			ActionForm actionForm, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		String title = (String) request.getParameter("title");
		String content = (String) request.getParameter("content");
		
		String hyjbxxid = (String) request.getSession()
				.getAttribute("hyjbxxid");
		String toid = request.getParameter("toid");
		String type = request.getParameter("type");
		Integer _toid = Integer.valueOf(toid);
		Integer _type = Integer.valueOf(type);
		int fromId = Integer.valueOf(hyjbxxid);

		Message message = new Message();

		message.setContent(content);
		message.setFromid(fromId);
		message.setState(AppConstants.MESSAGE_STATE_UN_READ);
		message.setTitle(title);
		message.setToid(_toid);
		message.setType(_type);
	 
		this.messageService.addMessage(message);
	 
		return this
				.messageList(actionMapping, actionForm, request, response);
	}

 
	public ActionForward messageList(ActionMapping actionMapping,
			ActionForm actionForm, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		Integer messageType=RequestUtils.getIntParameter(request,"messageType",null);

		Integer messagefrom=RequestUtils.getIntParameter(request,"messagefrom",1);
		Integer messageState =RequestUtils.getIntParameter(request, "messageState", null) ; 
		Integer timeType = RequestUtils.getIntParameter(request, "timeType", 1) ;
	 
			String action = "message.do?method=messageList";
			int currentPage = RequestUtils.getIntParameter(request,
					PageConstants.PAGINATION_CURRENT_PAGE, 1);
			int onePageSize = RequestUtils.getIntParameter(request,
					PageConstants.PAGINATION_ONE_PAGE_SIZE, 10);
			Map params = new HashMap();

			params.put("messagefrom", messagefrom);
			params.put("messageType", messageType);
			params.put("messageState", messageState);
			params.put("timeType", timeType);
			Pagination pagination = new NormalPagination(currentPage, action, onePageSize, params); 
		 
		String hyjbxxid = (String) request.getSession() .getAttribute("hyjbxxid");
		int userId = Integer.valueOf(hyjbxxid);
		List messageList =null;
		if(messagefrom==1){
			//收到的留言
			 messageList = messageService.getMessageList(null, userId, timeType, messageType, messageState, pagination);

		}else if(messagefrom==2)
		{
			//发出的留言 
			 messageList = messageService.getMessageList(userId, null, timeType, messageType, messageState, pagination);

		}
		
		List fromIdList = new ArrayList();
		if(messageList!=null){
			Iterator<Message> iter = messageList.iterator();
			while (iter.hasNext()) {
				Message message = iter.next();
				int _fromId = message.getFromid();
				fromIdList.add(_fromId);
			}
	
		}
		
		Map<Integer, Hyjbxx> userMap = this.messageService
				.getUserMap(fromIdList); 
		request.setAttribute("messageList", messageList); 

		request.setAttribute("pagination", pagination); 
		request.setAttribute("userMap", userMap);
  
		return actionMapping.findForward("messageList");
	}
 

	public ActionForward deleteMessage(ActionMapping actionMapping,
			ActionForm actionForm, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		try {
			String hyjbxxid = (String) request.getSession().getAttribute(
					"hyjbxxid");
			int fromId = Integer.valueOf(hyjbxxid);
			Integer messageState =RequestUtils.getIntParameter(request, "messageState", null) ; 
			
			String[] messageIds = request.getParameterValues("messageIds");
			if(messageIds!=null){
				for(int i=0;i<messageIds.length;i++){
					try{
					long messageId = Long.valueOf(messageIds[i]);
					if(messageState!=null){
						Message message=this.messageService.getMessage(fromId, messageId);
						
						if(messageState==2){//from
							
							int delStateTo=message.getDelStateTo();
							if(delStateTo==AppConstants.MESSAGE_DELETE_STATE_TO){
								this.messageService.deleteMessage(fromId, messageId);
							}else
							{
								message.setDelStateFrom(AppConstants.MESSAGE_DELETE_STATE_FORM);
								this.messageService.updateMessage(message);
							}
							
						}else if(messageState==1){//to
							int delStateForm=message.getDelStateFrom();
						 
							if(delStateForm==AppConstants.MESSAGE_DELETE_STATE_FORM){
								this.messageService.deleteMessage(fromId, messageId);
							}else
							{
								message.setDelStateTo (AppConstants.MESSAGE_DELETE_STATE_TO);
								this.messageService.updateMessage(message);
							}
						}
						
						
					}
					
					
					
					
					//messageService.deleteMessage(fromId, messageId);
					}catch(Exception e){
						
					}
					
				}	
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}

		return this
				.messageList(actionMapping, actionForm, request, response);
	}

	public ActionForward huifuMessage(ActionMapping actionMapping,
			ActionForm actionForm, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		String title = (String) request.getParameter("title");
		String content = (String) request.getParameter("content");
		String hyjbxxid = (String) request.getSession()
				.getAttribute("hyjbxxid");
		int fromId = Integer.valueOf(hyjbxxid);

		Integer messageId = RequestUtils.getIntParameter(request,"messageId",null);
		String type = request.getParameter("type");
	 
		Integer _type = Integer.valueOf(type);
		String toid = (String) request.getParameter("toid");
		int toId = Integer.valueOf(toid); 

		Message huifuMessage = messageService.getMessage(Integer.valueOf(hyjbxxid), messageId);
		if(huifuMessage!=null){
			huifuMessage.setState(AppConstants.MESSAGE_STATE_REPLAY);
			this.messageService.updateMessage(huifuMessage);
		}
		 
		Message message = new Message();

		message.setContent(content);
		message.setFromid(fromId);
		message.setState(AppConstants.MESSAGE_STATE_UN_READ);
		message.setTitle(title);
		message.setToid(toId);
		message.setType(_type);
		this.messageService.addMessage(message);

		return this.messageList(actionMapping, actionForm, request, response);
	}

	public ActionForward showMessage(ActionMapping actionMapping,
			ActionForm actionForm, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		Integer messageId = RequestUtils.getIntParameter(request,"messageId",null);
		String hyjbxxid = (String) request.getSession() .getAttribute("hyjbxxid");
		Message message = messageService.getMessage(Integer.valueOf(hyjbxxid), messageId);
		 
		int toId=message.getToid();
	 	Hyjbxx toUser=this.messageService.getUserById(toId);
		 
		request.setAttribute("message", message);
		request.setAttribute("toUser", toUser);
 
		return actionMapping.findForward("showMessage"); 
	}
	public ActionForward showReceiveMessage(ActionMapping actionMapping,
			ActionForm actionForm, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		Integer messageId = RequestUtils.getIntParameter(request,"messageId",null);
		String hyjbxxid = (String) request.getSession() .getAttribute("hyjbxxid");
		Message message = messageService.getMessage(Integer.valueOf(hyjbxxid), messageId);
		if(message.getState()==AppConstants.MESSAGE_STATE_UN_READ){

			message.setState(AppConstants.MESSAGE_STATE_READ);
			messageService.updateMessage(message);
		}
		int toId=message.getToid();
		int fromId=message.getFromid();
		Hyjbxx toUser=this.messageService.getUserById(toId);
		//Hyjbxx fromUser=this.messageService.getUserById(fromId);
		request.setAttribute("message", message);
		request.setAttribute("toUser", toUser);
		//request.setAttribute("fromUser", fromUser);
		return actionMapping.findForward("showReceiveMessage"); 
	}


	public ActionForward getUser(ActionMapping actionMapping,
			ActionForm actionForm, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		 String type = request.getParameter("type");
		Integer toid = RequestUtils.getIntParameter(request,"toid",null);
		Hyjbxx to_hyjbxx = this.messageService.getUserById(toid);
		if(to_hyjbxx==null)return actionMapping.findForward("error");
		String hyjbxxid = (String) request.getSession() .getAttribute("hyjbxxid");
		Hyjbxx from_hyjbxx = this.messageService.getUserById(Integer.valueOf(hyjbxxid));
		request.setAttribute("from_hyjbxx", from_hyjbxx);
		request.setAttribute("to_hyjbxx", to_hyjbxx);
		request.setAttribute("type", type);

		return actionMapping.findForward("addMessage");
	}
	public ActionForward userList(ActionMapping actionMapping,
			ActionForm actionForm, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		List userList = this.messageService.getUserList();
		request.setAttribute("userList", userList);

		return actionMapping.findForward("userList");
	}
 

}
