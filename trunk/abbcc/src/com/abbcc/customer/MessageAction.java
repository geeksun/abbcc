package com.abbcc.customer;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.abbcc.common.AppConstants;
import com.abbcc.pojo.Hyjbxx;
import com.abbcc.pojo.Message;
import com.abbcc.struts.action.BaseAction;

public class MessageAction extends BaseAction{
	
	public ActionForward addMessages(ActionMapping actionMapping, ActionForm actionForm, HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String title=(String) request.getParameter("title");
		String content=(String) request.getParameter("content");
		String hyjbxxid = (String) request.getSession().getAttribute( "hyjbxxid");
		String toid=request.getParameter("toid");
		String type=request.getParameter("type");
		Integer _toid=Integer.valueOf(toid);
		Integer _type=Integer.valueOf(type);
		int fromId = Integer.valueOf(hyjbxxid);
		
		Message message=new Message();
		
		message.setContent(content);
		message.setFromid(fromId);
		message.setState(AppConstants.MESSAGE_STATE_UN_READ);
		message.setTitle(title);
		message.setToid(_toid);
		message.setType(_type);
		this.messageService.addMessage(message);
	  
		 return this.listAllMessage(actionMapping, actionForm, request, response);
	}

	public ActionForward listAllMessage(ActionMapping actionMapping, ActionForm actionForm, HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		
			String state=request.getParameter("reply");
			String messageTime=request.getParameter("messageTime");
			if(messageTime==null){
				messageTime="1";
			}
			int _state=0;
			int _messageTime=0;
			if(state!=null&&!state.equals("")){
				_state=Integer.valueOf(state);
			}
			if(messageTime!=null&&!messageTime.equals("")){
				_messageTime=Integer.valueOf(messageTime);
			}
		String currentPage=request.getParameter("currentPage");
		if(currentPage==null)currentPage="1";
		int _currentPage=Integer.parseInt(currentPage);
		int onePageSize=5;
		 
		int start=(_currentPage-1)*onePageSize;
		int end=start+onePageSize;
		String hyjbxxid=(String)request.getSession().getAttribute("hyjbxxid"); 
	 	int fromId=Integer.valueOf(hyjbxxid);
		List list=messageService.getMessageAll(fromId,_messageTime,_state, start, end);
		
		List fromIdList=new ArrayList();
		Iterator<Message> iter=list.iterator();
		while(iter.hasNext()){
			Message message=iter.next();
			int _fromId=message.getFromid();
			fromIdList.add(_fromId);
		}
		
		
		 
		Map<Integer,Hyjbxx> userMap=this.messageService.getUserMap( fromIdList);
		int count=messageService.getMessageSizeByFromId(fromId);
		request.setAttribute("listAll", list);
		request.setAttribute("currentPage", currentPage);
		request.setAttribute("userMap", userMap);
		
		int pageCount=count/onePageSize;
		if(count%onePageSize!=0){
			pageCount=pageCount+1; 
		}
		request.setAttribute("count", count);
		request.setAttribute("pageCount", pageCount);
		request.setAttribute("messageTime", messageTime);
		request.setAttribute("reply", _state);
		
		return actionMapping.findForward("allMessageList");
	}
	
	public ActionForward listSendMessage(ActionMapping actionMapping, ActionForm actionForm, HttpServletRequest request, HttpServletResponse response) throws Exception {
		String messageTime=request.getParameter("messageTime");
		if(messageTime==null){
			messageTime="1";
		}
		int _messageTime=0;
		if(messageTime!=null&&!messageTime.equals("")){
			_messageTime=Integer.valueOf(messageTime);
		}
		String currentPage=request.getParameter("currentPage");
		if(currentPage==null)currentPage="1";
		int _currentPage=Integer.parseInt(currentPage);
		int onePageSize=5;
		 
		int start=(_currentPage-1)*onePageSize;
		int end=start+onePageSize;
		String hyjbxxid=(String)request.getSession().getAttribute("hyjbxxid");
		int toId=Integer.valueOf(hyjbxxid);
		List list=messageService.getSendMessage(toId,_messageTime, start, end);
		int count=messageService.getSendSizeMessageByToId(toId);
		request.setAttribute("listSend", list);
		request.setAttribute("currentPage", currentPage);
		int pageCount=count/onePageSize;
		if(count%onePageSize!=0){
			pageCount=pageCount+1;
		}
		request.setAttribute("count", count);
		request.setAttribute("pageCount", pageCount);
		request.setAttribute("messageTime", messageTime);
		return actionMapping.findForward("listSendMess");
	}
	public ActionForward listSellMessage(ActionMapping actionMapping, ActionForm actionForm, HttpServletRequest request, HttpServletResponse response) throws Exception {
		String sellType=request.getParameter("type");
		String state=request.getParameter("reply");
		String messageTime=request.getParameter("messageTime");
		if(messageTime==null){
			messageTime="1";
		}
		int _state=0;
		int _messageTime=0;
		if(state!=null&&!state.equals("")){
			_state=Integer.valueOf(state);
		}
		if(messageTime!=null&&!messageTime.equals("")){
			_messageTime=Integer.valueOf(messageTime);
		}
		int type=Integer.valueOf(sellType);
		String currentPage=request.getParameter("currentPage");
		if(currentPage==null)currentPage="1";
		int _currentPage=Integer.parseInt(currentPage);
		int onePageSize=5;
		 
		int start=(_currentPage-1)*onePageSize;
		int end=start+onePageSize;
		String hyjbxxid = (String) request.getSession().getAttribute(
		"hyjbxxid");
		int fromId = Integer.valueOf(hyjbxxid);
		List list=messageService.getSellMessage(  fromId,_messageTime,_state,type, start, end);
		
		int count=messageService.getSellSizeMessageByType(type);
		request.setAttribute("listSell", list);
		request.setAttribute("currentPage", currentPage);
		int pageCount=count/onePageSize;
		if(count%onePageSize!=0){
			pageCount=pageCount+1;
		}
		request.setAttribute("count", count);
		request.setAttribute("pageCount", pageCount);
		request.setAttribute("messageTime", messageTime);
		request.setAttribute("reply", _state);
		return actionMapping.findForward("listSellMess");
	}
	public ActionForward listBuyMessage(ActionMapping actionMapping, ActionForm actionForm, HttpServletRequest request, HttpServletResponse response) throws Exception {
		String buyType=request.getParameter("type");
		int type=Integer.valueOf(buyType);
		String state=request.getParameter("reply");
		String messageTime=request.getParameter("messageTime");
		if(messageTime==null){
			messageTime="1";
		}
		int _state=0;
		int _messageTime=0;
		if(state!=null&&!state.equals("")){
			_state=Integer.valueOf(state);
		}
		if(messageTime!=null&&!messageTime.equals("")){
			_messageTime=Integer.valueOf(messageTime);
		}
		String currentPage=request.getParameter("currentPage");
		if(currentPage==null||currentPage.equals(""))currentPage="1";
		int _currentPage=Integer.parseInt(currentPage);
		int onePageSize=5;
		int start=(_currentPage-1)*onePageSize;
		int end=start+onePageSize;
		String hjbxxid=(String)request.getSession().getAttribute("hyjbxxid");
		int fromId=Integer.valueOf(hjbxxid);
		List list=messageService.getBuyMessage(fromId,_messageTime,_state,type,start,end);
		int count=messageService.getBuySizeMessageByType(type);
		request.setAttribute("listBuy", list);
		request.setAttribute("currentPage", currentPage);
		int pageCount=count/onePageSize;
		if(count%onePageSize!=0){
			pageCount=pageCount+1;
		}
		request.setAttribute("count", count);
		request.setAttribute("pageCount", pageCount);
		request.setAttribute("messageTime", messageTime);
		request.setAttribute("reply", _state);
		return actionMapping.findForward("listBuyMess");
	}
	public ActionForward showMessage(ActionMapping actionMapping, ActionForm actionForm, HttpServletRequest request, HttpServletResponse response) throws Exception {
		String id=request.getParameter("id");
		long messageId=Long.valueOf(id);
		String hyjbxxid = (String) request.getSession().getAttribute(
		"hyjbxxid");
        int fromId = Integer.valueOf(hyjbxxid);
		Message message=messageService.getMessage(fromId, messageId);
		int state=message.getState();
		if(state==AppConstants.MESSAGE_STATE_UN_READ){
			message.setState(AppConstants.MESSAGE_STATE_READ);
			messageService.updateMessage(message);
			
		}
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
public ActionForward huifuMessage(ActionMapping actionMapping, ActionForm actionForm, HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String title=(String) request.getParameter("huifutitle");
		String content=(String) request.getParameter("huifucontent");
		String hyjbxxid = (String) request.getSession().getAttribute(
		"hyjbxxid");
		int fromId = Integer.valueOf(hyjbxxid);
		String toid=(String)request.getParameter("fromid");
		int toId = Integer.valueOf(toid);
		
		//request.setAttribute("huifut", title);
		//request.setAttribute("huifuc", content);
		Message message=new Message();
		
		message.setContent(content);
		message.setFromid(fromId);
		message.setState(1);
		message.setTitle(title);
		message.setToid(toId);
		message.setType(1);
		this.messageService.huifuMessage(message);
	
		 
		
		 return this.showMessage(actionMapping, actionForm, request, response);
	}
public ActionForward userList(ActionMapping actionMapping, ActionForm actionForm, HttpServletRequest request, HttpServletResponse response) throws Exception {
	
	List userList=this.messageService.getUserList(); 
	request.setAttribute("userList", userList);
	
	 return   actionMapping.findForward("userList"); 
}
public ActionForward getUser(ActionMapping actionMapping, ActionForm actionForm, HttpServletRequest request, HttpServletResponse response) throws Exception {
	
	String toid=request.getParameter("toid");
	String type=request.getParameter("type");
	Integer id= Integer.valueOf(toid);
	Hyjbxx hyjbxx=this.messageService.getUserById(id);
	request.setAttribute("hyjbxx", hyjbxx);
	request.setAttribute("type", type);
	
	 return   actionMapping.findForward("addMessage"); 
}
public static void main(String[] args){
	
	Map  map =new HashMap();
	
	List list=new ArrayList();
	Hyjbxx hy=new Hyjbxx();
	hy.setHyjbxxid(6);
	hy.setHydlm("wwwwwwww");
	
	Hyjbxx hy2=new Hyjbxx();
	hy2.setHyjbxxid(4);
	hy2.setHydlm("sssssss");
	
	
	list.add(hy);
	list.add(hy2);
	
	
	
	
	 
	for(int i=0;i<list.size();i++){
		Hyjbxx ccc=(Hyjbxx)list.get(i);
		//System.out.println(ccc.getHyjbxxid());
		//System.out.println(ccc.getHydlm());
		 map.put(ccc.getHyjbxxid(),ccc);
	}
	 
	
	
	Set  enterSet=map.entrySet();
	Iterator iter=enterSet.iterator();
	while(iter.hasNext()){
		 Map.Entry  entry=	(	 Map.Entry )iter.next();
		 		
		 	int key=(Integer)entry.getKey();
		 	Hyjbxx hyjbxx=(Hyjbxx)entry.getValue();
			System.out.println(key);
			System.out.println(hyjbxx.getHyjbxxid()+ "     "+hyjbxx.getHydlm());
			 
	}
 
	
	//System.out.println(map.get("1"));
//	System.out.println(map.get(2));
	
}

}
