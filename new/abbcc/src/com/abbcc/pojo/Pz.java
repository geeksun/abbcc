package com.abbcc.pojo;

/**
 * PzId generated by MyEclipse Persistence Tools
 */

public class Pz implements java.io.Serializable {

	// Fields

	private String tablename;

	private long recnum;
	
	private long maxCount;

	// Constructors

	/** default constructor */
	public Pz() {
	}

	/** full constructor */
	public Pz(String tablename, Integer recnum, Integer recnum2) {
		this.tablename = tablename;
		this.recnum = recnum;
	}

	public String getTablename() {
		return tablename;
	}

	public void setTablename(String tablename) {
		this.tablename = tablename;
	}

	public long getMaxCount() {
		return maxCount;
	}

	public void setMaxCount(long maxCount) {
		this.maxCount = maxCount;
	}

	public long getRecnum() {
		return recnum;
	}

	public void setRecnum(long recnum) {
		this.recnum = recnum;
	}

	 


}