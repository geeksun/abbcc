package com.abbcc.service;

import java.util.List;

import com.abbcc.pojo.Message;

public interface MessageService {
	void addMessage(Message message);

	List listMessage();
	
	Message getMessage(int userid,long messageId);
	
	void deleteMessage(int fromId,long messageId);
	List getMessageListByFromId(int fromId,int start,int end);
	int getMessageSizeByFromId(int fromId);
	
}
