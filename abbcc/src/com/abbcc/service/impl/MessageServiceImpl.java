package com.abbcc.service.impl;

import java.util.List;

import com.abbcc.dao.MessageDAO;
import com.abbcc.dao.impl.MessageDAOImpl;
import com.abbcc.pojo.Message;
import com.abbcc.service.MessageService;

public class MessageServiceImpl implements MessageService {

	MessageDAO messageDao;

	public void addMessage(Message message) {
		messageDao.addMessage(message);

	}

	public MessageDAO getMessageDao() {
		return messageDao;
	}

	public void setMessageDao(MessageDAO messageDao) {
		this.messageDao = messageDao;
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

	public List getMessageListByFromId(int fromId,int start, int end) {
		 
		return messageDao.getMessageListByFromId(fromId,start,end);
	}

	public int getMessageSizeByFromId(int fromId) {
		 
		return messageDao.getMessageSizeByFromId(fromId);
	}

}
