package com.abbcc.pojo;

/**
 * @see ��˾����ʵ����Ϣ
 * @author ��־ǿ
 *  create at 2009-1-17
 */
public class Technology {
	private Integer hyjbxxid;
	//������Ϣ
	private String  techInfo;

	private String handleTime;

	public Technology() {
	}

	public Technology(Integer hyjbxxid, String techInfo, String handleTime) {
		this.hyjbxxid = hyjbxxid;
		this.techInfo = techInfo;
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

	public String getTechInfo() {
		return techInfo;
	}

	public void setTechInfo(String techInfo) {
		this.techInfo = techInfo;
	}
	
}
