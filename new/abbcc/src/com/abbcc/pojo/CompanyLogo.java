package com.abbcc.pojo;

/**
 * @author 姜志强
 *  公司标志信息
 *  create at 2009-1-17
 */
public class CompanyLogo {
	private Integer hyjbxxid;
	//标志信息
	private String  logoInfo;

	private String handleTime;

	public CompanyLogo() {
	}

	public CompanyLogo(Integer hyjbxxid, String logoInfo, String handleTime) {
		this.hyjbxxid = hyjbxxid;
		this.logoInfo = logoInfo;
		this.handleTime = handleTime;
	}

	public String getHandleTime() {
		return handleTime;
	}

	public void setHandleTime(String handleTime) {
		this.handleTime = handleTime;
	}

	public Integer getHyjbxxid() {
		return hyjbxxid;
	}

	public void setHyjbxxid(Integer hyjbxxid) {
		this.hyjbxxid = hyjbxxid;
	}

	public String getLogoInfo() {
		return logoInfo;
	}

	public void setLogoInfo(String logoInfo) {
		this.logoInfo = logoInfo;
	}
	
}
