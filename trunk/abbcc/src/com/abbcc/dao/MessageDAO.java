package com.abbcc.dao;



import java.util.List;

import com.abbcc.pojo.Message;

public interface MessageDAO {

	void addMessage(Message message);
	List list();
	Message getMessage(int userid,long messageId);
	void deleteMessage(int fromId,long messageId);
	List getMessageListByFromId(int fromId,int start, int end);
	int getMessageSizeByFromId(int fromId);
}
