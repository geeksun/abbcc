package com.abbcc.util.product;

public class Select implements FormObject{
	private String key;
	private String name;
	private Option[] option;
	
	private boolean notNull;

	public Option[] getOption() {
		return option;
	}

	public void setOption(Option[] option) {
		this.option = option;
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
