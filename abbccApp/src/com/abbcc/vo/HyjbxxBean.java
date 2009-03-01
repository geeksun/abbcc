package com.abbcc.vo;

/**
 * @author 姜志强
 * 会员基本信息VO
 */
public class HyjbxxBean {
	// Fields
	private Integer hyjbxxid;	
	private String hydlm; 
	private String mm;
	private String mmtswt;
	private String mmtsda;
	private String zsxm;
	private String xb;
	private String zw;
	private String dzyx;
	private String gddh;
	private String cz;
	private String sj;
	private String memberType;		//  会员类型
	private String sfyx;
	private String scsj;
	private String gslx;
	private String gsmc;
	private String gsszd;
	private String jydz;
	private String zyhy;
	
	// Constructors
	public String getGslx() {
		return gslx;
	}

	public void setGslx(String gslx) {
		this.gslx = gslx;
	}

	public String getGsmc() {
		return gsmc;
	}

	public void setGsmc(String gsmc) {
		this.gsmc = gsmc;
	}

	public String getGsszd() {
		return gsszd;
	}

	public void setGsszd(String gsszd) {
		this.gsszd = gsszd;
	}

	/** default constructor */
	public HyjbxxBean() {
	}

	/** full constructor */
	public HyjbxxBean(String hydlm, String mm, String mmtswt, String mmtsda,
			String zsxm, String xb, String dzyx, String gddh, String cz,
			String sj, String memberType, String sfyx, String scsj) {
		this.hydlm = hydlm;
		this.mm = mm;
		this.mmtswt = mmtswt;
		this.mmtsda = mmtsda;
		this.zsxm = zsxm;
		this.xb = xb;
		this.dzyx = dzyx;
		this.gddh = gddh;
		this.cz = cz;
		this.sj = sj;
		this.memberType = memberType;
		this.sfyx = sfyx;
		this.scsj = scsj;
	}

	// Property accessors

	public Integer getHyjbxxid() {
		return this.hyjbxxid;
	}

	public void setHyjbxxid(Integer hyjbxxid) {
		this.hyjbxxid = hyjbxxid;
	}

	public String getHydlm() {
		return this.hydlm;
	}

	public void setHydlm(String hydlm) {
		this.hydlm = hydlm;
	}

	public String getMm() {
		return this.mm;
	}

	public void setMm(String mm) {
		this.mm = mm;
	}

	public String getMmtswt() {
		return this.mmtswt;
	}

	public void setMmtswt(String mmtswt) {
		this.mmtswt = mmtswt;
	}

	public String getMmtsda() {
		return this.mmtsda;
	}

	public void setMmtsda(String mmtsda) {
		this.mmtsda = mmtsda;
	}

	public String getZsxm() {
		return this.zsxm;
	}

	public void setZsxm(String zsxm) {
		this.zsxm = zsxm;
	}

	public String getXb() {
		return this.xb;
	}

	public void setXb(String xb) {
		this.xb = xb;
	}

	public String getDzyx() {
		return this.dzyx;
	}

	public void setDzyx(String dzyx) {
		this.dzyx = dzyx;
	}

	public String getGddh() {
		return this.gddh;
	}

	public void setGddh(String gddh) {
		this.gddh = gddh;
	}

	public String getCz() {
		return this.cz;
	}

	public void setCz(String cz) {
		this.cz = cz;
	}

	public String getSj() {
		return this.sj;
	}

	public void setSj(String sj) {
		this.sj = sj;
	}

	public String getMemberType() {
		return this.memberType;
	}

	public void setMemberType(String memberType) {
		this.memberType = memberType;
	}

	public String getSfyx() {
		return this.sfyx;
	}

	public void setSfyx(String sfyx) {
		this.sfyx = sfyx;
	}

	public String getScsj() {
		return this.scsj;
	}

	public void setScsj(String scsj) {
		this.scsj = scsj;
	}

	public String getJydz() {
		return jydz;
	}

	public void setJydz(String jydz) {
		this.jydz = jydz;
	}

	public String getZyhy() {
		return zyhy;
	}

	public void setZyhy(String zyhy) {
		this.zyhy = zyhy;
	}

	public String getZw() {
		return zw;
	}

	public void setZw(String zw) {
		this.zw = zw;
	}
	
}
