package com.abbcc.util.product;


public class Table {
	
	private String id;

	private String name;
	
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

	 
	public String getInsertSql() {
		StringBuilder builder = new StringBuilder();
		String sql = "insert into ";
		builder.append(sql);
		builder.append(name + " (");
		Filed[] fileds = getFiled();
		for (int i = 0; i < fileds.length; i++) {
			Filed filed = fileds[i];
			if (i == fileds.length - 1) {
				builder.append(filed.getName() + ")");
			} else {
				builder.append(filed.getName() + ",");
			}

		}
		builder.append(" value (");
		for (int i = 0; i < fileds.length; i++) {
			if (i == fileds.length - 1) {
				builder.append("?)");
			} else {
				builder.append("?,");
			}

		}
		return builder.toString();
	}
	
}
