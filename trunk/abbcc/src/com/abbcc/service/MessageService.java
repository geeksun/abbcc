package com.abbcc.service;

import java.util.List;
import java.util.Map;

import com.abbcc.pojo.Hyjbxx;
import com.abbcc.pojo.Message;

public interface MessageService {
	void addMessage(Message message);

	void huifuMessage(Message message);

	List listMessage();

	Message getMessage(int userid, long messageId);

	void deleteMessage(int fromId, long messageId);

	int getMessageSizeByFromId(int fromId);

	int getSendSizeMessageByToId(int toId);

	int getSellSizeMessageByType(int type);

	List getUserList();

	Hyjbxx getUserById(Integer id);

	Map<Integer, Hyjbxx> getUserMap(List fromIdList);

	int getBuySizeMessageByType(int type);

	void updateMessage(Message message);

	List getSellMessage(int fromid, int time, int _state, int type, int start,
			int end);

	List getBuyMessage(int fromId, int time, int _state, int type, int start,
			int end);

	List getMessageAll(int fromId, int time, int _state, int start, int end);

	List getSendMessage(int toId, int time, int start, int end);

}
