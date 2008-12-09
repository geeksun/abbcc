package com.abbcc.util.product;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;


public class Form {

	private String id;

	private String name;

	private String action;

	private String method;

	private Input[] input;

	private Select[] select;

	public String getAction() {
		return action;
	}

	public void setAction(String action) {
		this.action = action;
	}

	public Input[] getInput() {
		return input;
	}

	public void setInput(Input[] input) {
		this.input = input;
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

	public Select[] getSelect() {
		return select;
	}

	public void setSelect(Select[] select) {
		this.select = select;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}  
}
