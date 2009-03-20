package com.abbcc.dao.impl;

import java.io.Serializable;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
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
		String sql = "from Message where id=? and fromid=?";
		Serializable[] param = new Serializable[] { messageId, userid };
		return (Message) this.getObject(sql, param);
	}

	public void deleteMessage(int fromId, long messageId) {
		String sql = "delete from Message where id=?";
		Query query = this.getQuery(sql);
		//query.setParameter(0, fromId);
		query.setParameter(0, messageId);
		query.executeUpdate();

	}

	 

	 

	 
	public List getUserList() {
		String sql = "from Hyjbxx";
		Query query = this.getQuery(sql);

		return query.list();
	}

	public Hyjbxx getUserById(Integer id) {
		String sql = "from Hyjbxx h where h.hyjbxxid=?";
		Query query = this.getQuery(sql);
		query.setParameter(0, id);

		return (Hyjbxx) query.uniqueResult();
	} 

	public Map<Integer, Hyjbxx> getUserMap(List fromIdList) {
		String sql = "from Hyjbxx h where h.hyjbxxid";

		sql = this.getSql(sql, fromIdList);

		System.out.println(sql);
		Query query = this.getQuery(sql);

		this.setParamter(0, query, fromIdList);
		List list = query.list();

		Map map = new HashMap();

		Iterator<Hyjbxx> iter = list.iterator();
		while (iter.hasNext()) {
			Hyjbxx hyjbxx = iter.next();

			int id = hyjbxx.getHyjbxxid();
			map.put(id, hyjbxx);

		}

		return map;
	}

	public void updateMessage(Message message) {

		this.update(message);

	}

 
 
	private String getMessageListHql(Integer fromId, Integer toId, Integer state,
			Integer type, Date startTime, Date endTime){
		String hql = "from Message m where 1=1 ";
		if (fromId != null) {
			hql += " and m.fromid=? and m.delStateFrom!=2 ";
		}
		if (toId != null) {
			hql += " and m.toid=? and m.delStateTo!=2 ";
		}
		if (state != null) {
			hql += " and m.state=?";
		}
		if (type != null) {
			hql += " and m.type=?";
		}
		if (startTime != null) {
			hql += " and m.createTime>=?";
		}
		if (endTime != null) {
			hql += " and m.createTime<=?";
		}
		return hql;
	}
	public Query getMessageListQuery(String hql,Integer fromId, Integer toId, Integer state,
			Integer type, Date startTime, Date endTime){
		Query query = this.getQuery(hql);
		int index = 0;
		if (fromId != null) {
			query.setParameter(index, fromId);
			index++;
		}
		if (toId != null) {
			query.setParameter(index, toId);
			index++;
		}
		if (state != null) {
			query.setParameter(index, state);
			index++;
		}
		if (type != null) {
			query.setParameter(index, type);
			index++;
		}
		if (startTime != null) {
			query.setTimestamp(index, startTime);
			index++;
		}
		if (endTime != null) {
			query.setTimestamp(index, endTime);
			index++;
		}
		return query;

	}
	public List getMessageList(Integer fromId, Integer toId, Integer state,
			Integer type, Date startTime, Date endTime, int start, int maxReults) {
		try {
			String hql = this.getMessageListHql(fromId, toId, state, type, startTime, endTime);
			 Query query = this.getMessageListQuery(hql, fromId, toId, state, type, startTime, endTime);
			 
			query.setFirstResult(start);
			query.setMaxResults(maxReults);
			return query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public int getMessageListSize(Integer fromId, Integer toId, Integer state, Integer type, Date startTime, Date endTime ) {
		try {
			String hql = this.getMessageListHql(fromId, toId, state, type, startTime, endTime);
			hql="select count(*) "+hql;
			 Query query = this.getMessageListQuery(hql, fromId, toId, state, type, startTime, endTime);
			 
		 	return ((Long)query.uniqueResult()).intValue();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}

	 
}
