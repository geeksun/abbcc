package com.abbcc.pojo;

import java.util.Date;

public class Product {
	
	public static final String PRODUCT_TYPE_TEXT="1";
	public static final String PRODUCT_TYPE_SELECT="2";
	
	public static final int 	PRODUCT_STATE_IN_USED=1;
	public static final int 	PRODUCT_STATE_UN_USED=2;
	public static final int 	PRODUCT_TYPE_NO_PRODUCT=3;
	

	private long id;
	
	private String productName;

	private String tableName;//表名

	private String idFiledName;//字段id
	
	
	private String cpgqxxIdFiled;

	private String otherFiledName;//其它字段

	private String productTypeId;//类目id

	private String formName;//form name  

	private String propertyName;//产品属性名称

	private String isNull;//是否为空

	private String unit;//单位

	private String remark;//备注

	private String type;// 类型   text, select

	private String isShow;//是否显示
	
	private String isHidden;//是否隐藏
	
	private int state;//1 used ,other is un used
	
	private int productType;
	
	private Date createTime;
  
	public String getCpgqxxIdFiled() {
		return cpgqxxIdFiled;
	}

	public void setCpgqxxIdFiled(String cpgqxxIdFiled) {
		this.cpgqxxIdFiled = cpgqxxIdFiled;
	}

	public String getFormName() {
		return formName;
	}

	public void setFormName(String formName) {
		this.formName = formName;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getIdFiledName() {
		return idFiledName;
	}

	public void setIdFiledName(String idFiledName) {
		this.idFiledName = idFiledName;
	}

	public String getIsNull() {
		return isNull;
	}

	public void setIsNull(String isNull) {
		this.isNull = isNull;
	}

	public String getIsShow() {
		return isShow;
	}

	public void setIsShow(String isShow) {
		this.isShow = isShow;
	}

	public String getOtherFiledName() {
		return otherFiledName;
	}

	public void setOtherFiledName(String otherFiledName) {
		this.otherFiledName = otherFiledName;
	}

	public String getProductTypeId() {
		return productTypeId;
	}

	public void setProductTypeId(String productTypeId) {
		this.productTypeId = productTypeId;
	}

	public String getPropertyName() {
		return propertyName;
	}

	public void setPropertyName(String propertyName) {
		this.propertyName = propertyName;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public String getTableName() {
		return tableName;
	}

	public void setTableName(String tableName) {
		this.tableName = tableName;
	}

	 

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getUnit() {
		return unit;
	}

	public void setUnit(String unit) {
		this.unit = unit;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}

	public String getIsHidden() {
		return isHidden;
	}

	public void setIsHidden(String isHidden) {
		this.isHidden = isHidden;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public int getProductType() {
		return productType;
	}

	public void setProductType(int productType) {
		this.productType = productType;
	}

}
