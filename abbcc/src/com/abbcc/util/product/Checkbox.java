package com.abbcc.util.product;

public class Checkbox {
	private String key;

	private String name;

	private Option[] option;

	private boolean notnull;

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

	public boolean isNotnull() {
		return notnull;
	}

	public void setNotnull(boolean notnull) {
		this.notnull = notnull;
	}

	public Option[] getOption() {
		return option;
	}

	public void setOption(Option[] option) {
		this.option = option;
	}

}
