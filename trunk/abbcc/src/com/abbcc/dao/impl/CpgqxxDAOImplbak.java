package com.abbcc.dao.impl;
 
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
 
import com.abbcc.dao.CpgqxxDAO;
import com.abbcc.factory.Globals;
import com.abbcc.factory.HibernateUtil;
import com.abbcc.factory.PubAbbcc;
import com.abbcc.pojo.Cpgqxx;

public class CpgqxxDAOImplbak implements CpgqxxDAO {
	private static CpgqxxDAOImpl cpgqxxdaoimpl;

	private static int count = 0;

	private static ResultSet rs = null;

	private static int hid = 0;

	private static int page = 0;

	private static String sql = null;

	private static PubAbbcc pa = null;

	private static PreparedStatement pstmt = null;

	private static Connection conn = null;

	private Session session = null;

	public CpgqxxDAOImplbak() {
		session = HibernateUtil.currentSession();
		conn = session.connection();
		pa = new PubAbbcc();
	}

	public static CpgqxxDAOImpl getInstance() {
		if (cpgqxxdaoimpl == null) {
			cpgqxxdaoimpl = new CpgqxxDAOImpl();
		}
		return cpgqxxdaoimpl;
	}

	
	public void insert(Cpgqxx cpgqxx) throws Exception {
		hid = cpgqxx.getHyjbxxid();
		int[] track = pa.updateRecNum("hyjbxx");
		track = pa.updateRecNum("cpgqxx");
		page = hid / Globals.COUNT;
		sql = "INSERT INTO cpgqxx_" + page
				+ " VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, hid);
		pstmt.setInt(2, count);
		pstmt.setString(3, cpgqxx.getXxlx());
		pstmt.setString(4, cpgqxx.getCpmc());
		pstmt.setString(5, cpgqxx.getCpshlm());
		pstmt.setString(6, cpgqxx.getXxbt());
		pstmt.setString(7, cpgqxx.getCpsxid());
		pstmt.setString(8, cpgqxx.getXxsm());
		pstmt.setString(9, cpgqxx.getTp1());
		pstmt.setString(10, cpgqxx.getTp2());
		pstmt.setString(11, cpgqxx.getTp3());
		pstmt.setString(12, cpgqxx.getXxyxq());
		pstmt.setString(13, cpgqxx.getJytjid());
		pstmt.setString(14, cpgqxx.getSqsj());
		pstmt.setString(15, cpgqxx.getSfyx());
		pstmt.setString(16, cpgqxx.getScsj());
		pstmt.executeUpdate();
		pstmt.close();
	}


	public void update(Cpgqxx cpgqxx) throws Exception {
		hid = cpgqxx.getHyjbxxid();
		page = hid / Globals.COUNT;
		sql = "UPDATE cpgqxx_" + page
				+ " h SET h.xxlx=?,h.cpmc=?,h.cpshlm=?,h.xxbt=?,"
				+ "h.cpsxid=?,h.xxsm=?,h.tp1=?,h.tp2=?,h.tp3=?,"
				+ "h.xxyxq=?,h.jytjid=?,h.sqsj=?,h.sfyx=?,h.scsj=? "
				+ "WHERE h.hyjbxxid=? AND h.cpgqxxid=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, cpgqxx.getXxlx());
		pstmt.setString(2, cpgqxx.getCpmc());
		pstmt.setString(3, cpgqxx.getCpshlm());
		pstmt.setString(4, cpgqxx.getXxbt());
		pstmt.setString(5, cpgqxx.getCpsxid());
		pstmt.setString(6, cpgqxx.getXxsm());
		pstmt.setString(7, cpgqxx.getTp1());
		pstmt.setString(8, cpgqxx.getTp2());
		pstmt.setString(9, cpgqxx.getTp3());
		pstmt.setString(10, cpgqxx.getXxyxq());
		pstmt.setString(11, cpgqxx.getJytjid());
		pstmt.setString(12, cpgqxx.getSqsj());
		pstmt.setString(13, cpgqxx.getSfyx());
		pstmt.setString(14, cpgqxx.getScsj());
		pstmt.setInt(15, cpgqxx.getHyjbxxid());
		pstmt.setInt(16, cpgqxx.getCpgqxxid());
		pstmt.executeUpdate();
		pstmt.close();
	}

	public void delete(int hyjbxxid, int cpgqxxid) throws Exception {
		pa.deleteRecNum("cpgqxx");
		page = hyjbxxid / Globals.COUNT;
		sql = "DELETE FROM cpgqxx_" + page + " WHERE hyjbxxid=? AND cpgqxxid=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, hyjbxxid);
		pstmt.setInt(2, cpgqxxid);
		pstmt.executeUpdate();
		pstmt.close();
	}


	public Cpgqxx queryById(int hyjbxxid, int cpgqxxid) throws Exception {
		Cpgqxx c = new Cpgqxx();
		page = hyjbxxid / Globals.COUNT;
		sql = "SELECT * FROM cpgqxx_" + page
				+ " c WHERE c.hyjbxxid=? AND c.cpgqxxid=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, hyjbxxid);
		pstmt.setInt(2, cpgqxxid);
		rs = pstmt.executeQuery();
		if (rs.next()) {
			c.setCpgqxxid(rs.getInt(1));
			c.setHyjbxxid(rs.getInt(2));
			c.setXxlx(rs.getString(3));
			c.setCpmc(rs.getString(4));
			c.setCpshlm(rs.getString(5));
			c.setXxbt(rs.getString(6));
			c.setCpsxid(rs.getString(7));
			c.setXxsm(rs.getString(8));
			c.setTp1(rs.getString(9));
			c.setTp2(rs.getString(10));
			c.setTp3(rs.getString(11));
			c.setXxyxq(rs.getString(12));
			c.setJytjid(rs.getString(13));
			c.setSqsj(rs.getString(14));
			c.setSfyx(rs.getString(15));
			c.setScsj(rs.getString(16));
		}
		rs.close();
		pstmt.close();
		return c;
	}

	public List queryAll(int hyjbxxid, int currentPage, int lineSize)
			throws Exception {
		page = hyjbxxid / Globals.COUNT;

		List<Cpgqxx> list = new ArrayList<Cpgqxx>();

		sql = "SELECT * FROM cpgqxx_" + page
				+ " c WHERE c.hyjbxxid=? ORDER BY c.cpgqxxid DESC LIMIT "
				+ (currentPage - 1) * lineSize + "," + lineSize;
		System.out.println(sql);
		System.out.println("hyjbxxid=" + hyjbxxid);
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, hyjbxxid);
		rs = pstmt.executeQuery();
		while (rs.next()) {
			Cpgqxx c = new Cpgqxx();
			c.setHyjbxxid(rs.getInt(1));
			c.setCpgqxxid(rs.getInt(2));
			c.setXxlx(rs.getString(3));
			c.setCpmc(rs.getString(4));
			c.setCpshlm(rs.getString(5));
			c.setXxbt(rs.getString(6));
			c.setCpsxid(rs.getString(7));
			c.setXxsm(rs.getString(8));
			c.setTp1(rs.getString(9));
			c.setTp2(rs.getString(10));
			c.setTp3(rs.getString(11));
			c.setXxyxq(rs.getString(12));
			c.setJytjid(rs.getString(13));
			c.setSqsj(rs.getString(14));
			c.setSfyx(rs.getString(15));
			c.setScsj(rs.getString(16));
			list.add(c);
		}
		rs.close();
		pstmt.close();
		return list;
	}


	public void deleteByHyjbxxid(int hyjbxxid) throws Exception {
		page = hyjbxxid / Globals.COUNT;
		sql = "DELETE FROM cpgqxx_" + page + " WHERE hyjbxxid=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, hyjbxxid);
		pstmt.executeUpdate();
		pstmt.close();
	}
}
