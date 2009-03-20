package com.abbcc.dao.impl;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;

import com.abbcc.dao.DljmsxDAO;
import com.abbcc.factory.Globals;
import com.abbcc.factory.HibernateUtil;
import com.abbcc.factory.PubAbbcc;
import com.abbcc.pojo.Cpgqxx;
import com.abbcc.pojo.Dljmsx;

public class DljmsxDAOImpl implements DljmsxDAO {
	private static DljmsxDAOImpl dljmsxdaoimpl;

	private static int count = 0;

	private static ResultSet rs = null;

	private static int hid = 0;

	private static int page = 0;

	private static String sql = null;

	private static PreparedStatement pstmt = null;

	private static PubAbbcc pa = null;

	private static Connection conn = null;

	private Session session = null;

	public DljmsxDAOImpl() {
		session = HibernateUtil.currentSession();
		conn = session.connection();
		pa = new PubAbbcc();
	}

	public static DljmsxDAOImpl getInstance() {
		if (dljmsxdaoimpl == null) {
			dljmsxdaoimpl = new DljmsxDAOImpl();
		}
		return dljmsxdaoimpl;
	}

	// 插入代理加盟信息
	public void insert(Dljmsx dljmsx) throws Exception {
		hid = dljmsx.getHyjbxxid();
		page = hid / Globals.COUNT;
		int[] track = pa.updateRecNum("cpgqxx");
		sql = "INSERT INTO dljmsx_" + page
				+ " VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, hid);
		pstmt.setInt(2, count);
		pstmt.setString(3, dljmsx.getPp());
		pstmt.setString(4, dljmsx.getJbtz());
		pstmt.setString(5, dljmsx.getBzje());
		pstmt.setString(6, dljmsx.getJmf());
		pstmt.setString(7, dljmsx.getJmqy());
		pstmt.setString(8, dljmsx.getPpfyd());
		pstmt.setString(9, dljmsx.getYjhbr());
		pstmt.setString(10, dljmsx.getYjhbzq());
		pstmt.setString(11, dljmsx.getTxqsyf());
		pstmt.setString(12, dljmsx.getHtqx());
		pstmt.setString(13, dljmsx.getJmszs());
		pstmt.setString(14, dljmsx.getTxjysj());
		pstmt.setString(15, dljmsx.getJyms());
		pstmt.setString(16, dljmsx.getFzms());
		pstmt.setString(17, dljmsx.getXxsm());
		pstmt.setString(18, dljmsx.getTp1());
		pstmt.setString(19, dljmsx.getTp2());
		pstmt.setString(20, dljmsx.getTp3());
		pstmt.setString(21, dljmsx.getXxyxq());
		pstmt.setString(22, dljmsx.getSqsj());
		pstmt.setString(23, dljmsx.getSfyx());
		pstmt.setString(24, dljmsx.getScsj());
		pstmt.executeUpdate();
		pstmt.close();
	}

	// 修改代理加盟信息
	public void update(Dljmsx dljmsx) throws Exception {
		hid = dljmsx.getHyjbxxid();
		page = hid / Globals.COUNT;
		sql = "UPDATE dljmsx_" + page
				+ " h SET h.pp=?,h.jbtz=?,h.bzje=?,h.jmf=?,"
				+ "h.jmqy=?,h.ppfyd=?,h.yjhbr=?,h.yjhbzq=?,h.txqsyf=?,"
				+ "h.htqx=?,h.jmszs=?,h.txjysj=?,h.jyms=?,h.fzms=?, "
				+ "h.xxsm=?,h.tp1=?,h.tp2=?,h.tp3=?, "
				+ "h.xxyxq=?,h.sqsj=?,h.sfyx=?,h.scsj=? "
				+ "WHERE h.hyjbxxid=? AND h.dljmsxid=?";
		System.out.println(sql);
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, dljmsx.getPp());
		pstmt.setString(2, dljmsx.getJbtz());
		pstmt.setString(3, dljmsx.getBzje());
		pstmt.setString(4, dljmsx.getJmf());
		pstmt.setString(5, dljmsx.getJmqy());
		pstmt.setString(6, dljmsx.getPpfyd());
		pstmt.setString(7, dljmsx.getYjhbr());
		pstmt.setString(8, dljmsx.getYjhbzq());
		pstmt.setString(9, dljmsx.getTxqsyf());
		pstmt.setString(10, dljmsx.getHtqx());
		pstmt.setString(11, dljmsx.getJmszs());
		pstmt.setString(12, dljmsx.getTxjysj());
		pstmt.setString(13, dljmsx.getJyms());
		pstmt.setString(14, dljmsx.getFzms());
		pstmt.setString(15, dljmsx.getXxsm());
		pstmt.setString(16, dljmsx.getTp1());
		pstmt.setString(17, dljmsx.getTp2());
		pstmt.setString(18, dljmsx.getTp3());
		pstmt.setString(19, dljmsx.getXxyxq());
		pstmt.setString(20, dljmsx.getSqsj());
		pstmt.setString(21, dljmsx.getSfyx());
		pstmt.setString(22, dljmsx.getScsj());
		pstmt.setInt(23, dljmsx.getHyjbxxid());
		pstmt.setInt(24, dljmsx.getDljmsxid());
		pstmt.executeUpdate();
		pstmt.close();
	}

	// 删除代理加盟信息
	public void delete(int hyjbxxid, int dljmsxid) throws Exception {
		pa.deleteRecNum("dljmsx");
		page = hyjbxxid / Globals.COUNT;
		sql = "DELETE FROM dljmsx_" + page + " WHERE hyjbxxid=? AND dljmsxid=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, hyjbxxid);
		pstmt.setInt(2, dljmsxid);
		pstmt.executeUpdate();
		pstmt.close();
	}

	// 根据主键查找代理加盟信息
	public Dljmsx queryById(int hyjbxxid, int dljmsxid) throws Exception {
		Dljmsx d = new Dljmsx();
		page = hyjbxxid / Globals.COUNT;
		sql = "SELECT * FROM dljmsx_" + page
				+ " c WHERE c.hyjbxxid=? AND c.dljmsxid=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, hyjbxxid);
		pstmt.setInt(2, dljmsxid);
		rs = pstmt.executeQuery();
		if (rs.next()) {
			d.setDljmsxid(rs.getInt(1));
			d.setHyjbxxid(rs.getInt(2));
			d.setPp(rs.getString(3));
			d.setJbtz(rs.getString(4));
			d.setBzje(rs.getString(5));
			d.setJmf(rs.getString(6));
			d.setJmqy(rs.getString(7));
			d.setPpfyd(rs.getString(8));
			d.setYjhbr(rs.getString(9));
			d.setYjhbzq(rs.getString(10));
			d.setTxqsyf(rs.getString(11));
			d.setHtqx(rs.getString(12));
			d.setJmszs(rs.getString(13));
			d.setTxjysj(rs.getString(14));
			d.setJyms(rs.getString(15));
			d.setFzms(rs.getString(16));
			d.setXxsm(rs.getString(17));
			d.setTp1(rs.getString(18));
			d.setTp2(rs.getString(19));
			d.setTp3(rs.getString(20));
			d.setXxyxq(rs.getString(21));
			d.setSqsj(rs.getString(22));
			d.setSfyx(rs.getString(23));
			d.setScsj(rs.getString(24));
		}
		return d;
	}

	// 根据时间排序显示所有未审核的代理加盟信息
	public List queryAll(int hyjbxxid, int currentPage, int lineSize)
			throws Exception {
		page = hyjbxxid / Globals.COUNT;
		List<Dljmsx> list = new ArrayList<Dljmsx>();
		sql = "SELECT * FROM dljmsx_" + page
				+ " c WHERE c.hyjbxxid=? ORDER BY c.dljmsxid DESC LIMIT "
				+ (currentPage - 1) * lineSize + "," + lineSize;
		System.out.println(sql);
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, hyjbxxid);
		rs = pstmt.executeQuery();
		while (rs.next()) {
			Dljmsx d = new Dljmsx();
			d.setHyjbxxid(rs.getInt(1));
			d.setDljmsxid(rs.getInt(2));
			d.setPp(rs.getString(3));
			d.setJbtz(rs.getString(4));
			d.setBzje(rs.getString(5));
			d.setJmf(rs.getString(6));
			d.setJmqy(rs.getString(7));
			d.setPpfyd(rs.getString(8));
			d.setYjhbr(rs.getString(9));
			d.setYjhbzq(rs.getString(10));
			d.setTxqsyf(rs.getString(11));
			d.setHtqx(rs.getString(12));
			d.setJmszs(rs.getString(13));
			d.setTxjysj(rs.getString(14));
			d.setJyms(rs.getString(15));
			d.setFzms(rs.getString(16));
			d.setXxsm(rs.getString(17));
			d.setTp1(rs.getString(18));
			d.setTp2(rs.getString(19));
			d.setTp3(rs.getString(20));
			d.setXxyxq(rs.getString(21));
			d.setSqsj(rs.getString(22));
			d.setSfyx(rs.getString(23));
			d.setScsj(rs.getString(24));
			list.add(d);
		}
		rs.close();
		pstmt.close();
		return list;
	}
}
