package com.abbcc.pojo;

import java.util.Date;


 
public class Cpgqxx implements java.io.Serializable {
 
	/**
	 * 产品供求信息ID
	 */
	private Long cpgqxxid;

	/**
	 * 会员ID
	 */
	private Integer hyjbxxid;

	/**
	 * 信息类型
	 */

	private String xxlx;

	/**
	 * 产品名称
	 */
	private String cpmc;

	/**
	 * 产品所属类目
	 */
	private String cpshlm;

	/**
	 * 信息标题
	 */
	private String xxbt;

	/**
	 * 产品属性ID
	 */
	private String cpsxid;

	/**
	 * 详细说明
	 */
	private String xxsm;

	/**
	 * 图片1
	 */
	private String tp1;

	/**
	 * 图片2
	 */
	private String tp2;

	/**
	 * 图片3
	 */
	private String tp3;

	/**
	 * 信息有效期
	 */
	private String xxyxq;

	/**
	 * 交易条件ID
	 */
	private String jytjid;

	/**
	 * 申请时间
	 */
	private Date sqsj;

	/**
	 * 是否有效
	 */
	private String sfyx;

	/**
	 * 删除时间
	 */
	private Date scsj;
	
	private Date xxyxsj;

 	public Cpgqxx() {
	}

	/**
	 * @return the cpgqxxid
	 */
	public Long getCpgqxxid() {
		return cpgqxxid;
	}

	/**
	 * @param cpgqxxid the cpgqxxid to set
	 */
	public void setCpgqxxid(Long cpgqxxid) {
		this.cpgqxxid = cpgqxxid;
	}

	/**
	 * @return the cpmc
	 */
	public String getCpmc() {
		return cpmc;
	}

	/**
	 * @param cpmc the cpmc to set
	 */
	public void setCpmc(String cpmc) {
		this.cpmc = cpmc;
	}

	/**
	 * @return the cpshlm
	 */
	public String getCpshlm() {
		return cpshlm;
	}

	/**
	 * @param cpshlm the cpshlm to set
	 */
	public void setCpshlm(String cpshlm) {
		this.cpshlm = cpshlm;
	}

	/**
	 * @return the cpsxid
	 */
	public String getCpsxid() {
		return cpsxid;
	}

	/**
	 * @param cpsxid the cpsxid to set
	 */
	public void setCpsxid(String cpsxid) {
		this.cpsxid = cpsxid;
	}

	/**
	 * @return the hyjbxxid
	 */
	public Integer getHyjbxxid() {
		return hyjbxxid;
	}

	/**
	 * @param hyjbxxid the hyjbxxid to set
	 */
	public void setHyjbxxid(Integer hyjbxxid) {
		this.hyjbxxid = hyjbxxid;
	}

	/**
	 * @return the jytjid
	 */
	public String getJytjid() {
		return jytjid;
	}

	/**
	 * @param jytjid the jytjid to set
	 */
	public void setJytjid(String jytjid) {
		this.jytjid = jytjid;
	}

	 
	/**
	 * @return the sfyx
	 */
	public String getSfyx() {
		return sfyx;
	}

	/**
	 * @param sfyx the sfyx to set
	 */
	public void setSfyx(String sfyx) {
		this.sfyx = sfyx;
	}

	 

	public Date getScsj() {
		return scsj;
	}

	public void setScsj(Date scsj) {
		this.scsj = scsj;
	}

	public Date getSqsj() {
		return sqsj;
	}

	public void setSqsj(Date sqsj) {
		this.sqsj = sqsj;
	}

	/**
	 * @return the tp1
	 */
	public String getTp1() {
		return tp1;
	}

	/**
	 * @param tp1 the tp1 to set
	 */
	public void setTp1(String tp1) {
		this.tp1 = tp1;
	}

	/**
	 * @return the tp2
	 */
	public String getTp2() {
		return tp2;
	}

	/**
	 * @param tp2 the tp2 to set
	 */
	public void setTp2(String tp2) {
		this.tp2 = tp2;
	}

	/**
	 * @return the tp3
	 */
	public String getTp3() {
		return tp3;
	}

	/**
	 * @param tp3 the tp3 to set
	 */
	public void setTp3(String tp3) {
		this.tp3 = tp3;
	}

	/**
	 * @return the xxbt
	 */
	public String getXxbt() {
		return xxbt;
	}

	/**
	 * @param xxbt the xxbt to set
	 */
	public void setXxbt(String xxbt) {
		this.xxbt = xxbt;
	}

	/**
	 * @return the xxlx
	 */
	public String getXxlx() {
		return xxlx;
	}

	/**
	 * @param xxlx the xxlx to set
	 */
	public void setXxlx(String xxlx) {
		this.xxlx = xxlx;
	}

	/**
	 * @return the xxsm
	 */
	public String getXxsm() {
		return xxsm;
	}

	/**
	 * @param xxsm the xxsm to set
	 */
	public void setXxsm(String xxsm) {
		this.xxsm = xxsm;
	}

	/**
	 * @return the xxyxq
	 */
	public String getXxyxq() {
		return xxyxq;
	}

	/**
	 * @param xxyxq the xxyxq to set
	 */
	public void setXxyxq(String xxyxq) {
		this.xxyxq = xxyxq;
	}

	public Date getXxyxsj() {
		return xxyxsj;
	}

	public void setXxyxsj(Date xxyxsj) {
		this.xxyxsj = xxyxsj;
	}

	 
}