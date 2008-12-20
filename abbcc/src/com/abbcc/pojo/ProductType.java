package com.abbcc.pojo;

public class ProductType {
	
	public static final int PRODUCT_TYPE_SHOW=1;
	public static final int PRODUCT_TYPE_UN_SHOW=2;
	private int id;

	private String name;
	
	private int parentId;
	 
	private String typeId;

	private int type;

	private int isShow;
	
	

	public ProductType() {

	}
 

	public int getIsShow() {
		return isShow;
	}

	public void setIsShow(int isShow) {
		this.isShow = isShow;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public int getParentId() {
		return parentId;
	}


	public void setParentId(int parentId) {
		this.parentId = parentId;
	}


	public String getTypeId() {
		return typeId;
	}


	public void setTypeId(String typeId) {
		this.typeId = typeId;
	}

	 

}
