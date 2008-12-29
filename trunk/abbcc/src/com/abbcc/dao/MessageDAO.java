package com.abbcc.dao;

import java.util.Date;
import java.util.List;
import java.util.Map;

import com.abbcc.pojo.Hyjbxx;
import com.abbcc.pojo.Message;

public interface MessageDAO {

	void addMessage(Message message);

	void huifuMessage(Message message);

	List list();

	Message getMessage(int userid, long messageId);

	void deleteMessage(int fromId, long messageId);

	int getMessageSizeByFromId(int fromId);

	List getSendMessageByToId(int toId, int start, int end);

	int getMessageSizeByToId(int toId);

	List getUserList();

	Hyjbxx getUserById(Integer id);

	Map<Integer, Hyjbxx> getUserMap(List fromIdList);

	List getBuyMessageByType(int type, int start, int end);

	int getBuySizeMessageByType(int type);

	void updateMessage(Message message);

	List getSellMessage(int fromid, int time, int _state, int type, int start,
			int end);

	int getSellSizeMessageByType(int type);

	List getBuyMessage(int fromId, int time, int _state, int type, int start,
			int end);

	List getMessageAll(int fromId, int time, int _state, int start, int end);

	List getSendMessage(int toId, int time, int start, int end);
	
	List getMessageList(Integer fromId,Integer toId,Integer state,Integer type,Date startTime,Date endTime, int start, int end);
}
