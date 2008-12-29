package com.abbcc.service.impl;

import java.util.Date;
import java.util.List;
import java.util.Map;

import com.abbcc.pojo.Hyjbxx;
import com.abbcc.pojo.Message;
import com.abbcc.service.MessageService;

public class MessageServiceImpl extends BaseServiceImpl implements MessageService {

 
	public void addMessage(Message message) {
		messageDao.addMessage(message);

	}
  
	public List listMessage() {
		List list=messageDao.list();
		return list;
	}

	public Message getMessage(int userid, long messageId) {
		Message message=messageDao.getMessage(userid, messageId);
		return message;
	}

	public void deleteMessage(int fromId, long messageId) {
		messageDao.deleteMessage(fromId, messageId);
		
	}


	public int getMessageSizeByFromId(int fromId) {
		 
		return messageDao.getMessageSizeByFromId(fromId);
	}

	public void huifuMessage(Message message) {
		messageDao.huifuMessage(message);
		
	}

	public int getSendSizeMessageByToId(int toId) {
		
		return messageDao.getMessageSizeByToId(toId);
	}

	
	public int getSellSizeMessageByType(int type) {
		
		return messageDao.getSellSizeMessageByType(type);
	}

	public List getUserList() {
		 
		return messageDao.getUserList();
	}

	public Hyjbxx getUserById(Integer id) {
		return messageDao.getUserById(id);
		
	}

	public Map<Integer, Hyjbxx> getUserMap(List fromIdList) {
		if(fromIdList==null||fromIdList.size()==0)return null;
		 
		return messageDao.getUserMap(fromIdList);
	}

	public int getBuySizeMessageByType(int type) {
		
		return messageDao.getBuySizeMessageByType(type);
	}

	public void updateMessage(Message message) {
		messageDao.updateMessage(message);
		
	}

	public List getSellMessage(int fromid, int time, int _state, int type, int start, int end) {
		
		long currentTime=new Date().getTime();
		Date startTime=this.StartTime(currentTime, time);
		Date endTime=this.endTime(currentTime, time);
		/*if(time==1){
			long temp=1000*60*60*24*7;
			startTime=new Date(currentTime-temp);
		}else if(time==2){
			long temp=1000*60*60*24*30;
			startTime=new Date(currentTime-temp);
		}else if(time==3){
			long temp=1000*60*60*24*3*30;
			startTime=new Date(currentTime-temp);
		}else if(time==4){
			long temp=1000*60*60*24*3*30;
			long temp2=1000*60*60*24*360;
			
			startTime=new Date(currentTime-temp2);
			endTime=new Date(currentTime-temp);
		}else if(time==5){
			long temp=1000*60*60*24*360;
			endTime=new Date(currentTime-temp);
		}  */
		if(_state==0)
		{
			return this.messageDao.getMessageList(fromid, null, null, type, startTime, endTime, start, end);
		}else
		{
			return this.messageDao.getMessageList(fromid, null, _state, type, startTime, endTime, start, end);
		}
		
		 
		 
	}
	private Date StartTime(long currentTime,int time){
		Date startTime=null;
		if(time==1){
			long temp=1000*60*60*24*7;
			startTime=new Date(currentTime-temp);
		}else if(time==2){
			long temp=1000*60*60*24*25;
			startTime=new Date(currentTime-temp);
		}else if(time==3){
			long temp=1000*60*60*24*3*30;
			startTime=new Date(currentTime-temp);
		}else if(time==4){ 
			long temp2=1000*60*60*24*360;
			
			startTime=new Date(currentTime-temp2);
			 
		} 
		return startTime;
	}
	private Date endTime(long currentTime, int time) {
		Date endTime = null;
		if (time == 4) {
			long temp = 1000 * 60 * 60 * 24 * 3 * 30;
			endTime = new Date(currentTime - temp);
		} else if (time == 5) {
			long temp = 1000 * 60 * 60 * 24 * 360;
			endTime = new Date(currentTime - temp);
		}
		return endTime;
	}

	public List getBuyMessage(int fromId, int time, int _state, int type, int start, int end) {
		
		return messageDao.getBuyMessage(fromId,time,_state,type, start, end);
	}

	public List getMessageAll(int fromId, int time, int _state, int start, int end) {
		
		return messageDao.getMessageAll(fromId,time,_state,start,end);
	}

	public List getSendMessage(int toId, int time, int start, int end) {
		
		return messageDao.getSendMessage(toId,time,start,end);
	}

 

	

}
