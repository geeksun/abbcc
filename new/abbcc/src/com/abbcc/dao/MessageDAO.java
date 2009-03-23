package com.abbcc.dao;

import java.util.Date;
import java.util.List;
import java.util.Map;


import com.abbcc.pojo.Hyjbxx;
import com.abbcc.pojo.Message;

public interface MessageDAO {

	void addMessage(Message message);

 

	Message getMessage(int userid, long messageId);

	void deleteMessage(int fromId, long messageId);
 
 
	List getUserList();

	Hyjbxx getUserById(Integer id);

	Map<Integer, Hyjbxx> getUserMap(List fromIdList);
 
 
	void updateMessage(Message message);
 
 
	int getMessageListSize(Integer fromId,Integer toId,Integer state,Integer messageType,Date startTime,Date endTime );

	List getMessageList(Integer fromId,Integer toId,Integer state,Integer messageType,Date startTime,Date endTime, int start, int maxReults);



	int getAllMessageListCount(Integer userId);



	int getMessageListCount(Integer userId, int state);
 }
