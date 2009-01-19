package com.abbcc.pojo;

public class Manager {
	private int managerid;
	private String manageName;
	private String password;
	private String trueName;
	private String status;
	public Manager() {
		super();
	}
	public Manager(int managerid, String manageName, String password, String trueName, String status) {
		super();
		this.managerid = managerid;
		this.manageName = manageName;
		this.password = password;
		this.trueName = trueName;
		this.status = status;
	}
	public String getManageName() {
		return manageName;
	}
	public void setManageName(String manageName) {
		this.manageName = manageName;
	}
	public int getManagerid() {
		return managerid;
	}
	public void setManagerid(int managerid) {
		this.managerid = managerid;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getTrueName() {
		return trueName;
	}
	public void setTrueName(String trueName) {
		this.trueName = trueName;
	}
	
}
