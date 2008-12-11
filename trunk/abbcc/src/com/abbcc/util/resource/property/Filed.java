package com.abbcc.util.resource.property;

public class Filed { 

	private String name;

	private String type;
	  
	private boolean notNull;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Object getType() {
		try {
			Class c=Class.forName(type);
			return c.newInstance();
		} catch ( Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}
  
	public boolean isNotNull() {
		return notNull;
	}

	public void setNotNull(boolean notNull) {
		this.notNull = notNull;
	}
	

}
