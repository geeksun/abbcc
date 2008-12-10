package com.abbcc.util.product;

public class Text implements FormObject{
	private String key;
 

	private String name;
	
	private boolean notNull;
	 

	public String getKey() {
		return key;
	}

	public void setKey(String key) {
		this.key = key;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Object getValue() {
		// TODO Auto-generated method stub
		return null;
	}

	public boolean isNotNull() {
		return notNull;
	}

	public void setNotNull(boolean notNull) {
		this.notNull = notNull;
	}

}
