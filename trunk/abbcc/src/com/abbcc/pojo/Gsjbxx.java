package com.abbcc.pojo;

/**
 * @author geeksun
 *  公司基本信息
 */
public class Gsjbxx implements java.io.Serializable {
	// Fields
	private static final long serialVersionUID = -8545252426423419636L;
	private Integer hyjbxxid;
	private String gslx;
	private String gsmc;
	private String gsszd;			//公司所在地
	private String enCorpName;		//公司英文名称
	private String jydz;			//经营地址
	private String zyhy;
	private String zyfx;
	private String xsdcp;
	private String cgdcp;
	public Gsjbxx() {
	}
	/** full constructor */
	public Gsjbxx(Integer hyjbxxid, String gslx, String gsmc, String gsszd, String enCorpName,
			String jydz,String zyhy, String zyfx, String xsdcp, String cgdcp) {
		this.hyjbxxid = hyjbxxid;
		this.gslx = gslx;
		this.gsmc = gsmc;
		this.gsszd = gsszd;
		this.enCorpName = enCorpName;
		this.jydz = jydz;
		this.zyhy = zyhy;
		this.zyfx = zyfx;
		this.xsdcp = xsdcp;
		this.cgdcp = cgdcp;
	}

	public Integer getHyjbxxid(){
		return this.hyjbxxid;
	}

	public void setHyjbxxid(Integer hyjbxxid) {
		this.hyjbxxid = hyjbxxid;
	}

	public String getGslx() {
		return this.gslx;
	}

	public void setGslx(String gslx) {
		this.gslx = gslx;
	}

	public String getGsmc() {
		return this.gsmc;
	}

	public void setGsmc(String gsmc) {
		this.gsmc = gsmc;
	}

	public String getJydz() {
		return this.jydz;
	}

	public void setJydz(String jydz) {
		this.jydz = jydz;
	}

	public String getZyhy() {
		return this.zyhy;
	}

	public void setZyhy(String zyhy) {
		this.zyhy = zyhy;
	}

	public String getZyfx() {
		return this.zyfx;
	}

	public void setZyfx(String zyfx) {
		this.zyfx = zyfx;
	}

	public String getXsdcp() {
		return this.xsdcp;
	}

	public void setXsdcp(String xsdcp) {
		this.xsdcp = xsdcp;
	}

	public String getCgdcp() {
		return this.cgdcp;
	}

	public void setCgdcp(String cgdcp) {
		this.cgdcp = cgdcp;
	}

	public String getGsszd() {
		return gsszd;
	}

	public void setGsszd(String gsszd) {
		this.gsszd = gsszd;
	}

	public String getEnCorpName() {
		return enCorpName;
	}

	public void setEnCorpName(String enCorpName) {
		this.enCorpName = enCorpName;
	}
}