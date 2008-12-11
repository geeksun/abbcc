package com.abbcc.util.product;


public class Table {
	
	private String id;

	private String key;
	
	private String name;
	
	private Filed   idFiled;
	
	private Filed[] filed;
	 
	public Filed[] getFiled() {
		return filed;
	}

	public void setFiled(Filed[] filed) {
		this.filed = filed;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getKey() {
		return key;
	}

	public void setKey(String key) {
		this.key = key;
	}

	public Filed getIdFiled() {
		return idFiled;
	}

	public void setIdFiled(Filed idFiled) {
		this.idFiled = idFiled;
	}

	 
	 
	
}
