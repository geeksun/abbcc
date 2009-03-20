package com.abbcc.vo;

import java.util.Date;

/**
 * @author geeksun
 * π‹¿Ì‘±
 */
public class GlyBean {
	private int id;
	private String name;
	private String password;
	private Date lastLoginTime;
	private String lastLoginIp;
	private String managePurview;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getLastLoginIp() {
		return lastLoginIp;
	}
	public void setLastLoginIp(String lastLoginIp) {
		this.lastLoginIp = lastLoginIp;
	}
	public Date getLastLoginTime() {
		return lastLoginTime;
	}
	public void setLastLoginTime(Date lastLoginTime) {
		this.lastLoginTime = lastLoginTime;
	}
	public String getManagePurview() {
		return managePurview;
	}
	public void setManagePurview(String managePurview) {
		this.managePurview = managePurview;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
}
