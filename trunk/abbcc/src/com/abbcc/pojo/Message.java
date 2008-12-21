package com.abbcc.pojo;

import java.io.Serializable;

/**
 * @author xj
 *
 */
public class Message implements Serializable {
	private long id;
	private int toid;
	private int fromid;
	private int state;
	private int type;
	private String title;
	private String content;
	
	
	public Message() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Message(int id, int toid, int fromid, int state, int type, String title, String content) {
		super();
		this.id = id;
		this.toid = toid;
		this.fromid = fromid;
		this.state = state;
		this.type = type;
		this.title = title;
		this.content = content;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getFromid() {
		return fromid;
	}
	public void setFromid(int fromid) {
		this.fromid = fromid;
	}
	 
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public int getToid() {
		return toid;
	}
	public void setToid(int toid) {
		this.toid = toid;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	
 
	
}
