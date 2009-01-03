package com.abbcc.dao.impl;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.hibernate.Query;

import com.abbcc.dao.MessageDAO;
import com.abbcc.pojo.Hyjbxx;
import com.abbcc.pojo.Message;

public class MessageDAOImpl extends BaseDaoImpl implements MessageDAO {

	public void addMessage(Message message) {
		this.add(message);
		
		
	}

	public List<Message> list() {
		String sql = "from Message";
		return this.getList(sql);

	}

	public Message getMessage(int userid, long messageId) {
		String sql="from Message where id=? and fromid=?";
		Serializable[] param=new Serializable[]{messageId,userid};
		return (Message)this.getObject(sql,param);
	}

	public void deleteMessage(int fromId, long messageId) {
		String sql="delete from Message where fromid="+fromId+" and id="+messageId;
		Serializable[] param=new Serializable[]{fromId,messageId};
		//this.getSession().createSQLQuery(sql).executeUpdate();
		//Query query=this.getQuery(sql);
		this.getSession().delete(sql);
		//query.executeUpdate();
		
	}

	public List getMessageList(int start, int end) {
		 String sql="from Message";
		 Query query=this.getQuery(sql);

		 query.setFirstResult(start);
		 query.setMaxResults(end-start);
		return query.list();
	}

	public List getMessageListByFromId(int fromId, int start, int end) {
		 String sql="from Message m  where m.fromid=?";
		 Query query=this.getQuery(sql);
		 query.setParameter(0, fromId);  
		 query.setFirstResult(start);
		 query.setMaxResults(end-start);
		return query.list();
	}

	public int getMessageSizeByFromId(int fromId) {
		 String sql="select count(*) from Message m  where m.fromid=?";
		 Query query=this.getQuery(sql); 
		 query.setParameter(0, fromId);
		 Object count=query.uniqueResult();
		return ((Long)count).intValue();
	}

	public List getBuyMessage(int fromId, int time, int _state, int type, int start, int end) {
		// TODO Auto-generated method stub
		return null;
	}

	public List getBuyMessageByType(int type, int start, int end) {
		// TODO Auto-generated method stub
		return null;
	}

	public int getBuySizeMessageByType(int type) {
		// TODO Auto-generated method stub
		return 0;
	}

	public List getMessageAll(int fromId, int time, int _state, int start, int end) {
		// TODO Auto-generated method stub
		return null;
	}

	public List getMessageList(Integer fromId, Integer toId, Integer state, Integer type, Date startTime, Date endTime, int start, int end) {
		// TODO Auto-generated method stub
		return null;
	}

	public int getMessageSizeByToId(int toId) {
		// TODO Auto-generated method stub
		return 0;
	}

	public List getSellMessage(int fromid, int time, int _state, int type, int start, int end) {
		// TODO Auto-generated method stub
		return null;
	}

	public int getSellSizeMessageByType(int type) {
		// TODO Auto-generated method stub
		return 0;
	}

	public List getSendMessage(int toId, int time, int start, int end) {
		// TODO Auto-generated method stub
		return null;
	}

	public List getSendMessageByToId(int toId, int start, int end) {
		// TODO Auto-generated method stub
		return null;
	}

	public Hyjbxx getUserById(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	public List getUserList() {
		// TODO Auto-generated method stub
		return null;
	}

	public Map<Integer, Hyjbxx> getUserMap(List fromIdList) {
		// TODO Auto-generated method stub
		return null;
	}

	public void huifuMessage(Message message) {
		// TODO Auto-generated method stub
		
	}

	public void updateMessage(Message message) {
		// TODO Auto-generated method stub
		
	}

}
