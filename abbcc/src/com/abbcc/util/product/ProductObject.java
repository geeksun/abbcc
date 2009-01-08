package com.abbcc.util.product;

public class ProductObject {
	
	
	
	private String sql;

	private Object[] value;


	public ProductObject(String sql, Object[] value) {
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

	public Object[] getValue() {
		return value;
	}

	public void setValue(Object[] value) {
		this.value = value;
	}

 

}
