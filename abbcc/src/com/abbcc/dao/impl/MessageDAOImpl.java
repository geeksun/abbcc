package com.abbcc.dao.impl;

import java.io.Serializable;
import java.util.List;

import org.hibernate.Query;

import com.abbcc.dao.MessageDAO;
import com.abbcc.pojo.Message;

public class MessageDAOImpl extends BaseDaoImpl implements MessageDAO {

	public void addMessage(Message message) {
		this.save(message);
		
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

}
