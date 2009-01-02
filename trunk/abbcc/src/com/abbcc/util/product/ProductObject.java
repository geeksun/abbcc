package com.abbcc.util.product;

public class ProductObject {
	private String sql;

	private String[] value;

	public ProductObject(String sql, String[] value) {
		super();
		this.sql = sql;
		this.value = value;
	}

	public ProductObject() {
		super();
		// TODO Auto-generated constructor stub
	}

	public String getSql() {
		return sql;
	}

	public void setSql(String sql) {
		this.sql = sql;
	}

	public String[] getValue() {
		return value;
	}

	public void setValue(String[] value) {
		this.value = value;
	}

}
