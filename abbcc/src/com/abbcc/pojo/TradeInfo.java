package com.abbcc.pojo;

// Generated by MyEclipse Persistence Tools

/**
 * TradeInfo generated by MyEclipse Persistence Tools
 */
/**
 * @author geeksun
 *  ��ҵ��Ϣ
 */
public class TradeInfo implements java.io.Serializable {
	private static final long serialVersionUID = 3199541942508080609L;
	private String categoryId;
	private String productId;
	private String tableName;
	// Constructors

	/** default constructor */
	public TradeInfo() {
	}

	/** full constructor */
	public TradeInfo(String categoryId, String productId, String tableName) {
		this.categoryId = categoryId;
		this.productId = productId;
		this.tableName = tableName;
	}

	public String getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(String categoryId) {
		this.categoryId = categoryId;
	}

	public String getProductId() {
		return productId;
	}

	public void setProductId(String productId) {
		this.productId = productId;
	}

	public String getTableName() {
		return tableName;
	}

	public void setTableName(String tableName) {
		this.tableName = tableName;
	}
	
}
