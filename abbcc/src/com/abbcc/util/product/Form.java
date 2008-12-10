package com.abbcc.util.product;

import java.util.List;



public class Form {

	private String id;

	private String name;

	private String action;

	private String method;
	
	private List<FormObject> list;

	public String getAction() {
		return action;
	}

	public void setAction(String action) {
		this.action = action;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}
 

	public List<FormObject> getList() {
		return list;
	}

	public void setList(List<FormObject> list) {
		this.list = list;
	}

	public String getMethod() {
		return method;
	}

	public void setMethod(String method) {
		this.method = method;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	    
}
