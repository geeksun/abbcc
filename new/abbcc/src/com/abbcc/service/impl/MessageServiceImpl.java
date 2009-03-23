package com.abbcc.service.impl;

import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Map;

import com.abbcc.pojo.Hyjbxx;
import com.abbcc.pojo.Message;
import com.abbcc.service.MessageService;
import com.abbcc.util.pagination.Pagination;

public class MessageServiceImpl extends BaseServiceImpl implements MessageService {

 
	public void addMessage(Message message) {
		messageDao.addMessage(message);

	} 
 
	public Message getMessage(int userid, long messageId) {
		Message message=messageDao.getMessage(userid, messageId);
		return message;
	}

	public void deleteMessage(int fromId, long messageId) {
		
		 	 
		messageDao.deleteMessage(fromId, messageId);
		
	} 

	 
	 
	public Hyjbxx getUserById(Integer id) {
		return messageDao.getUserById(id);
		
	}

	public Map<Integer, Hyjbxx> getUserMap(List fromIdList) {
		if(fromIdList==null||fromIdList.size()==0)return null;
		 
		return messageDao.getUserMap(fromIdList);
	}

 
	public void updateMessage(Message message) {
		messageDao.updateMessage(message);
		
	} 
 
	private Date messageStartTime(int messageType){ 
		Calendar rightNow = Calendar.getInstance();
		if (messageType == 1) {  
			rightNow.add(Calendar.DATE, -7); 
		}else if (messageType == 2) {  
			rightNow.add(Calendar.MONTH, -1); 
		}
		else if (messageType == 3) {  
			rightNow.add(Calendar.MONTH, -3); 
		}
		else if (messageType ==4) {  
			rightNow.add(Calendar.YEAR, -1); 
		}
		else if (messageType == 5) {  
			return null;
		}
		 return rightNow.getTime();
	}
	private Date messageEndTime(int messageType){
		Calendar rightNow = Calendar.getInstance();
		if (messageType == 1) {  
			return null;
		}else if (messageType == 2) {  
			return null;
		}
		else if (messageType == 3) {  
			return null;
		}
		else if (messageType ==4) {  
			rightNow.add(Calendar.MONTH, -3); 
			 
		}
		else if (messageType == 5) {  
			rightNow.add(Calendar.YEAR, -1); 
		}
		 return rightNow.getTime();
	}
	public List getMessageList(Integer fromId, Integer toId, int timeType,Integer messageType,Integer state, Pagination pagination) {
		int start=pagination.getFirstResult();
		int maxReults= pagination.getOnePageSize();
		Date startTime=this.messageStartTime(timeType);
		Date endTime=this.messageEndTime(timeType);
		int count=messageDao.getMessageListSize(fromId, toId, state, messageType, startTime, endTime );
		pagination.setTotalResults(count);
		return messageDao.getMessageList(fromId,toId,   state,messageType,startTime ,endTime ,start,maxReults);
	}

	public List getUserList() {
	 
		return messageDao.getUserList();
	}

	public int getAllMessageListCount(Integer userId) {
		 
		return this.messageDao.getAllMessageListCount(userId);
	}

	public int getMessageListCount(Integer userId, int state) {
		 
		return this.messageDao.getMessageListCount(userId,state);
	}

 
 

	

}
