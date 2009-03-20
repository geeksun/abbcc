package com.abbcc.service;

import java.util.List;
import java.util.Map;

import com.abbcc.pojo.Hyjbxx;
import com.abbcc.pojo.Message;
import com.abbcc.util.pagination.Pagination;

public interface MessageService {
	void addMessage(Message message);

 
	Message getMessage(int userid, long messageId);

	void deleteMessage(int fromId, long messageId);
 
	Hyjbxx getUserById(Integer id);

	Map<Integer, Hyjbxx> getUserMap(List fromIdList);

	 
	void updateMessage(Message message);
 
	List getMessageList(Integer fromId,Integer toId,int timeType,Integer messageType,Integer state,Pagination pagination);

	List getUserList();

}
