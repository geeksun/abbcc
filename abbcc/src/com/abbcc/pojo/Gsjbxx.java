package com.abbcc.pojo;

/**
 * @author geeksun
 *  ��˾������Ϣ���ɸ�����ȥ
 */
public class Gsjbxx implements java.io.Serializable {
	// Fields
	private static final long serialVersionUID = -8545252426423419636L;
	private Integer hyjbxxid;		//��Ա������ϢID
	private String gsmc;			//��˾����
	private String qylx;			//��ҵ����    new
	private String jyms;			//��Ӫģʽ	new
	private String gsszd;			//��˾���ڵ�
	private String jydz;			//��Ӫ��ַ
	private String zyhy;			//��Ӫ��ҵ
	private String zyfx;			//��Ӫ����
	private String xsdcp;			//���۵Ĳ�Ʒ
	private String cgdcp;			//�ɹ��Ĳ�Ʒ
	private String gsjs;			//��˾���
	
	public Gsjbxx() {
	}
	/** full constructor */
	public Gsjbxx(Integer hyjbxxid, String gsmc, String qylx, String jyms,  String gsszd,
			String jydz,String zyhy, String zyfx, String xsdcp, String cgdcp, String gsjs) {
		this.hyjbxxid = hyjbxxid;
		this.gsmc = gsmc;
		this.qylx = qylx;
		this.jyms = jyms;
		this.gsszd = gsszd;
		this.jydz = jydz;
		this.zyhy = zyhy;
		this.zyfx = zyfx;
		this.xsdcp = xsdcp;
		this.cgdcp = cgdcp;
		this.gsjs = gsjs;
	}

	public String getGsjs() {
		return gsjs;
	}
	public void setGsjs(String gsjs) {
		this.gsjs = gsjs;
	}
	
	public Integer getHyjbxxid(){
		return this.hyjbxxid;
	}

	public void setHyjbxxid(Integer hyjbxxid) {
		this.hyjbxxid = hyjbxxid;
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

	public String getQylx() {
		return qylx;
	}
	public void setQylx(String qylx) {
		this.qylx = qylx;
	}
	public String getJyms() {
		return jyms;
	}
	public void setJyms(String jyms) {
		this.jyms = jyms;
	}
}