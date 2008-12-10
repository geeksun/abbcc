package com.abbcc.util.product;

public class Radio implements FormObject{
	private String key;

	private String name;

	private Option[] option;
	
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

	public Option[] getOption() {
		return option;
	}

	public void setOption(Option[] option) {
		this.option = option;
	}

	public Object getValue() {
		// TODO Auto-generated method stub
		return null;
	}

	public boolean isNotnull() {
		return notNull;
	}

	public void setNotnull(boolean notNull) {
		this.notNull = notNull;
	}

}
