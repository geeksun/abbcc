package com.abbcc.util.resource.property;

public class Checkbox implements FormObject{
	private String key;

	private String name;

	private Option[] option;

	private boolean notNull;
	
	private String show;
	private boolean isHidden;
	public String getKey() {
		return key;
	}

	public void setHidden(boolean isHidden) {
		this.isHidden = isHidden;
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
 
	public void setNotNull(boolean notNull) {
		this.notNull = notNull;
	}

	public Option[] getOption() {
		return option;
	}

	public void setOption(Option[] option) {
		this.option = option;
	}

	public String getShow() {
		return show;
	}

	public void setShow(String show) {
		this.show = show;
	}

	public boolean isNotNull() {
		return notNull;
	}

	public boolean isHidden() {
		return isHidden;
	}

 

	 
}
