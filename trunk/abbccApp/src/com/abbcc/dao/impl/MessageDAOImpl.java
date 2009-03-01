package com.abbcc.dao.impl;

import java.io.Serializable;
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
		String sql = "delete from Message where fromid=? and id=?";
		Query query = this.getQuery(sql);
		query.setParameter(0, fromId);
		query.setParameter(1, messageId);
		query.executeUpdate();

	}

	public List getMessageList(int start, int end) {
		String sql = "from Message";
		Query query = this.getQuery(sql);

		query.setFirstResult(start);
		query.setMaxResults(end - start);
		return query.list();
	}



	public int getMessageSizeByFromId(int fromId) {
		String sql = "select count(*) from Message m  where m.fromid=?";
		Query query = this.getQuery(sql);
		query.setParameter(0, fromId);
		Object count = query.uniqueResult();
		return ((Long) count).intValue();
	}

	public void huifuMessage(Message message) {
		this.add(message);

	}

	public int getMessageSizeByToId(int toId) {
		String sql = "select count(*) from Message m where m.toid=?";
		Query query = this.getQuery(sql);
		query.setParameter(0, toId);
		Object count = query.uniqueResult();
		return ((Long) count).intValue();
	}

	public List getSendMessageByToId(int toId, int start, int end) {
		String sql = "from Message m where m.toid=?";
		Query query = this.getQuery(sql);
		query.setParameter(0, toId);
		query.setFirstResult(start);
		query.setMaxResults(end - start);
		return query.list();
	}

	public int getSellSizeMessageByType(int type) {
		String sql = "select count(*) from Message m where m.type=?";
		Query query = this.getQuery(sql);
		query.setParameter(0, type);
		Object count = query.uniqueResult();
		return ((Long) count).intValue();
	}
	

	public List getBuyMessageByType(int type, int start, int end) {
		String sql = "from Message m where m.type=?";
		Query query = this.getQuery(sql);
		query.setParameter(0, type);
		query.setFirstResult(start);
		query.setMaxResults(end - start);
		return query.list();
	}

	public int getBuySizeMessageByType(int type) {
		String sql = "select count(*) from Message m where m.type=?";
		Query query = this.getQuery(sql);
		query.setParameter(0, type);
		Object count = query.uniqueResult();
		return ((Long) count).intValue();
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

	public List getSellMessage(int fromid, int time, int _state, int type,
			int start, int end) {
		String sql = "from Message m where m.fromid=?"
				+ "and m.type=? ";
		int temptime = 1000 * 60 * 60 * 24;
		long currentTime = System.currentTimeMillis();

		if (time == 1) {
			Date startTime = new Date(currentTime - temptime * 7);
			sql += " and m.createTime>=?";
			if(_state!=0){
				sql+=" and m.state=?";
			}
			Query query = this.getQuery(sql);
			query.setParameter(0, fromid);  
			query.setParameter(1, type);
			query.setTime(2, startTime);
			if(_state!=0){
				query.setParameter(3, _state);
				
			}
			query.setFirstResult(start);
			query.setMaxResults(end - start);
			return query.list();
		} else if (time == 2) {
			Date startTime = new Date(currentTime - temptime * 30);
			sql += " and m.createTime>=?";
			if(_state!=0){
				sql+=" and m.state=?";
			}
			Query query = this.getQuery(sql);
			query.setParameter(0, fromid); 
			query.setParameter(1, type);
			query.setTime(2, startTime );
			 
			if(_state!=0){
				query.setParameter(3, _state);
				
			}
			query.setFirstResult(start);
			query.setMaxResults(end - start);
			return query.list();
		} else if (time == 3) {
			Date startTime = new Date(currentTime - temptime * 30 * 3);
			sql += " and m.createTime>=?";
			if(_state!=0){
				sql+=" and m.state=?";
			}
			Query query = this.getQuery(sql);
			query.setParameter(0, fromid);
			 
			query.setParameter(1, type);
		 
			query.setTime(2, startTime);
			if(_state!=0){
				query.setParameter(3, _state);
				
			}
			query.setFirstResult(start);
			query.setMaxResults(end - start);
			return query.list();

		} else if (time == 4) {
			Date startTime = new Date(currentTime - temptime * 30 * 12);
			Date endTime = new Date(currentTime - temptime * 30 * 3);
			sql += " and m.createTime>=? and m.createTime<=?";
			if(_state!=0){
				sql+=" and m.state=?";
			}
			Query query = this.getQuery(sql);
			query.setParameter(0, fromid); 
			query.setParameter(1, type);
			query.setTime(2, startTime);
			query.setTime(3, endTime);
			if(_state!=0){
				query.setParameter(4, _state);
				
			}
			query.setFirstResult(start);
			query.setMaxResults(end - start);
			return query.list();

		} else if (time == 5) {
			Date endTime = new Date(currentTime - temptime * 30 * 12);

			sql += "and  m.createTime<=?";
			if(_state!=0){
				sql+=" and m.state=?";
			}
			Query query = this.getQuery(sql);
			query.setParameter(0, fromid); 
			query.setParameter(1, type);
			query.setTime(2, endTime);
			if(_state!=0){
				query.setParameter(3, _state);
				
			}
			query.setFirstResult(start);
			query.setMaxResults(end - start);
			return query.list();
		}else {
			Query query = this.getQuery(sql);
			if(_state!=0){
				sql+=" and m.state=?";
			}
			query.setParameter(0, fromid); 
			query.setParameter(1, type); 
			if(_state!=0){
				query.setParameter(2, _state);
				
			}
			query.setFirstResult(start);
			query.setMaxResults(end - start);
			return query.list();
		}

		
	}

	public List getBuyMessage(int fromId, int time, int _state, int type, int start, int end) {
		String sql = "from Message m where m.fromid=?"
			+ "and m.type=? ";
	int temptime = 1000 * 60 * 60 * 24;
	long currentTime = System.currentTimeMillis();

	if (time == 1) {
		Date startTime = new Date(currentTime - temptime * 7);
		sql += " and m.createTime>=?";
		if(_state!=0){
			sql+=" and m.state=?";
		}
		Query query = this.getQuery(sql);
		query.setParameter(0, fromId);  
		query.setParameter(1, type);
		query.setTime(2, startTime);
		if(_state!=0){
			query.setParameter(3, _state);
			
		}
		query.setFirstResult(start);
		query.setMaxResults(end - start);
		return query.list();
	} else if (time == 2) {
		Date startTime = new Date(currentTime - temptime * 30);
		sql += " and m.createTime>=?";
		if(_state!=0){
			sql+=" and m.state=?";
		}
		Query query = this.getQuery(sql);
		query.setParameter(0, fromId); 
		query.setParameter(1, type);
		query.setTime(2, startTime );
		 
		if(_state!=0){
			query.setParameter(3, _state);
			
		}
		query.setFirstResult(start);
		query.setMaxResults(end - start);
		return query.list();
	} else if (time == 3) {
		Date startTime = new Date(currentTime - temptime * 30 * 3);
		sql += " and m.createTime>=?";
		if(_state!=0){
			sql+=" and m.state=?";
		}
		Query query = this.getQuery(sql);
		query.setParameter(0, fromId);
		 
		query.setParameter(1, type);
	 
		query.setTime(2, startTime);
		if(_state!=0){
			query.setParameter(3, _state);
			
		}
		query.setFirstResult(start);
		query.setMaxResults(end - start);
		return query.list();

	} else if (time == 4) {
		Date startTime = new Date(currentTime - temptime * 30 * 12);
		Date endTime = new Date(currentTime - temptime * 30 * 3);
		sql += " and m.createTime>=? and m.createTime<=?";
		if(_state!=0){
			sql+=" and m.state=?";
		}
		Query query = this.getQuery(sql);
		query.setParameter(0, fromId); 
		query.setParameter(1, type);
		query.setTime(2, startTime);
		query.setTime(3, endTime);
		if(_state!=0){
			query.setParameter(4, _state);
			
		}
		query.setFirstResult(start);
		query.setMaxResults(end - start);
		return query.list();

	} else if (time == 5) {
		Date endTime = new Date(currentTime - temptime * 30 * 12);

		sql += "and  m.createTime<=?";
		if(_state!=0){
			sql+=" and m.state=?";
		}
		Query query = this.getQuery(sql);
		query.setParameter(0, fromId); 
		query.setParameter(1, type);
		query.setTime(2, endTime);
		if(_state!=0){
			query.setParameter(3, _state);
			
		}
		query.setFirstResult(start);
		query.setMaxResults(end - start);
		return query.list();
	}else {
		Query query = this.getQuery(sql);
		if(_state!=0){
			sql+=" and m.state=?";
		}
		query.setParameter(0, fromId); 
		query.setParameter(1, type); 
		if(_state!=0){
			query.setParameter(2, _state);
			
		}
		query.setFirstResult(start);
		query.setMaxResults(end - start);
		return query.list();
	}
	}

	public List getMessageAll(int fromId, int time, int _state, int start, int end) {
		
		String sql = "from Message m where m.fromid=?";
	int temptime = 1000 * 60 * 60 * 24;
	long currentTime = System.currentTimeMillis();

	if (time == 1) {
		Date startTime = new Date(currentTime - temptime * 7);
		sql += " and m.createTime>=?";
		if(_state!=0){
			sql+=" and m.state=?";
		}
		Query query = this.getQuery(sql);
		query.setParameter(0, fromId);  
		query.setTime(1, startTime);
		if(_state!=0){
			query.setParameter(2, _state);
			
		}
		query.setFirstResult(start);
		query.setMaxResults(end - start);
		return query.list();
	} else if (time == 2) {
		Date startTime = new Date(currentTime - temptime * 30);
		sql += " and m.createTime>=?";
		if(_state!=0){
			sql+=" and m.state=?";
		}
		Query query = this.getQuery(sql);
		query.setParameter(0, fromId); 
		query.setTime(1, startTime );
		 
		if(_state!=0){
			query.setParameter(2, _state);
			
		}
		query.setFirstResult(start);
		query.setMaxResults(end - start);
		return query.list();
	} else if (time == 3) {
		Date startTime = new Date(currentTime - temptime * 30 * 3);
		sql += " and m.createTime>=?";
		if(_state!=0){
			sql+=" and m.state=?";
		}
		Query query = this.getQuery(sql);
		query.setParameter(0, fromId);
		query.setTime(1, startTime);
		if(_state!=0){
			query.setParameter(2, _state);
			
		}
		query.setFirstResult(start);
		query.setMaxResults(end - start);
		return query.list();

	} else if (time == 4) {
		Date startTime = new Date(currentTime - temptime * 30 * 12);
		Date endTime = new Date(currentTime - temptime * 30 * 3);
		sql += " and m.createTime>=? and m.createTime<=?";
		if(_state!=0){
			sql+=" and m.state=?";
		}
		Query query = this.getQuery(sql);
		query.setParameter(0, fromId); 
		query.setTime(1, startTime);
		query.setTime(2, endTime);
		if(_state!=0){
			query.setParameter(3, _state);
			
		}
		query.setFirstResult(start);
		query.setMaxResults(end - start);
		return query.list();

	} else if (time == 5) {
		Date endTime = new Date(currentTime - temptime * 30 * 12);

		sql += "and  m.createTime<=?";
		if(_state!=0){
			sql+=" and m.state=?";
		}
		Query query = this.getQuery(sql);
		query.setParameter(0, fromId); 
		query.setTime(1, endTime);
		if(_state!=0){
			query.setParameter(2, _state);
			
		}
		query.setFirstResult(start);
		query.setMaxResults(end - start);
		return query.list();
	}else {
		Query query = this.getQuery(sql);
		if(_state!=0){
			sql+=" and m.state=?";
		}
		query.setParameter(0, fromId); 
		if(_state!=0){
			query.setParameter(1, _state);
			
		}
		query.setFirstResult(start);
		query.setMaxResults(end - start);
		return query.list();
	}
	}

	public List getSendMessage(int toId, int time, int start, int end) {
		String sql = "from Message m where m.toid=?";
		int temptime = 1000 * 60 * 60 * 24;
		long currentTime = System.currentTimeMillis();

		if (time == 1) {
			Date startTime = new Date(currentTime - temptime * 7);
			sql += " and m.createTime>=?";
			Query query = this.getQuery(sql);
			query.setParameter(0, toId);  
			query.setTime(1, startTime);
			query.setFirstResult(start);
			query.setMaxResults(end - start);
			return query.list();
		} else if (time == 2) {
			Date startTime = new Date(currentTime - temptime * 30);
			sql += " and m.createTime>=?";
			Query query = this.getQuery(sql);
			query.setParameter(0, toId); 
			query.setTime(1, startTime );
			query.setFirstResult(start);
			query.setMaxResults(end - start);
			return query.list();
		} else if (time == 3) {
			Date startTime = new Date(currentTime - temptime * 30 * 3);
			sql += " and m.createTime>=?";
			Query query = this.getQuery(sql);
			query.setParameter(0, toId);
			query.setTime(1, startTime);
			query.setFirstResult(start);
			query.setMaxResults(end - start);
			return query.list();

		} else if (time == 4) {
			Date startTime = new Date(currentTime - temptime * 30 * 12);
			Date endTime = new Date(currentTime - temptime * 30 * 3);
			sql += " and m.createTime>=? and m.createTime<=?";
			Query query = this.getQuery(sql);
			query.setParameter(0, toId); 
			query.setTime(1, startTime);
			query.setTime(2, endTime);
			query.setFirstResult(start);
			query.setMaxResults(end - start);
			return query.list();

		} else if (time == 5) {
			Date endTime = new Date(currentTime - temptime * 30 * 12);

			sql += "and  m.createTime<=?";
			Query query = this.getQuery(sql);
			query.setParameter(0, toId); 
			query.setTime(1, endTime);
			query.setFirstResult(start);
			query.setMaxResults(end - start);
			return query.list();
		}else {
			Query query = this.getQuery(sql);
			query.setParameter(0, toId); 
			query.setFirstResult(start);
			query.setMaxResults(end - start);
			return query.list();
		}
	}

	public List getMessageList(Integer fromId, Integer toId, Integer state, Integer type, Date startTime, Date endTime, int start, int end) {
		try{
		String hql="from Message m where 1=1 ";
		if(fromId!=null){
			hql+=" and m.fromid=?";
		}
		if(toId!=null){
			hql+=" and m.toid=?";
		}
		if(state!=null){
			hql+=" and m.state=?";
		}
		if(type!=null){
			hql+=" and m.type=?";
		}
		if(startTime!=null){
			 hql+=" and m.createTime>=?";
		}
		if(endTime!=null){
			hql+=" and m.createTime<=?";
		}
		  
		Query query = this.getQuery(hql);
		int index=0;
		if(fromId!=null){
			query.setParameter(index, fromId);  
			index++;
		}
		if(toId!=null){
			query.setParameter(index, toId);
			index++;
		}
		if(state!=null){
			query.setParameter(index, state);
			index++;
		}
		if(type!=null){
			query.setParameter(index, type);
			index++;
		}
		if(startTime!=null){
			 query.setTimestamp (index, startTime);
			 index++;
		}
		if(endTime!=null){
			query.setTimestamp(index, endTime);
			index++;
		}
		 
		query.setFirstResult(start);
		query.setMaxResults(end - start);
		return query.list();
		}catch(Exception e){
			e.printStackTrace();
		}
		return null;
	}

}
