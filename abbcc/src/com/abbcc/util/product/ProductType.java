package com.abbcc.util.product;

public class ProductType {

	private String id;

	private String name;
	
	private int type;
	private boolean able;
	

	 

	public boolean isAble() {
		return able;
	}

	public void setAble(boolean able) {
		this.able = able;
	}

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
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

	public ProductType(String id, String name) {
		 
		this.id = id;
		this.name = name;
	}

	public ProductType( ) {
		 
	}

	
}
