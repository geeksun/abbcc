package com.abbcc.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;

import com.abbcc.dao.ZpxxDAO;
import com.abbcc.factory.Globals;
import com.abbcc.factory.HibernateUtil;
import com.abbcc.factory.PubAbbcc;
import com.abbcc.pojo.Zpxx;

public class ZpxxDAOImpl implements ZpxxDAO {
	private static ZpxxDAOImpl zpxxdaoimpl = null;
	private static int count = 0;

	private static ResultSet rs = null;

	private static int hid = 0;

	private static int page = 0;

	private static String sql = null;

	private static PreparedStatement pstmt = null;

	private static PubAbbcc pa = null;

	private static Connection conn = null;

	private Session session = null;

	public ZpxxDAOImpl() {
		session = HibernateUtil.currentSession();
		conn = session.connection();
		pa = new PubAbbcc();
	}

	public static ZpxxDAOImpl getInstance() {
		if (zpxxdaoimpl == null) {
			zpxxdaoimpl = new ZpxxDAOImpl();
		}
		return zpxxdaoimpl;
	}

	public void insert(Zpxx zpxx) throws Exception {
		hid = zpxx.getHyjbxxid();
		page = hid / Globals.COUNT;
		count = pa.updateRecNum("zpxx");
		sql = "INSERT INTO zpxx_" + page
				+ " VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, zpxx.getHyjbxxid());
		pstmt.setInt(2, count);
		pstmt.setString(3, zpxx.getZpzt());
		pstmt.setString(4, zpxx.getYxq());
		pstmt.setString(5, zpxx.getHy());
		pstmt.setString(6, zpxx.getGshy());
		pstmt.setString(7, zpxx.getGzdd());
		pstmt.setString(8, zpxx.getZprs());
		pstmt.setString(9, zpxx.getGznx());
		pstmt.setString(10, zpxx.getXzsp());
		pstmt.setString(11, zpxx.getZwyq());
		pstmt.setString(12, zpxx.getLxr());
		pstmt.setString(13, zpxx.getLxfs());
		pstmt.setString(14, zpxx.getBz());
		pstmt.setString(15, zpxx.getSqsj());
		pstmt.setString(16, zpxx.getSfyx());
		pstmt.setString(17, zpxx.getScsj());
		pstmt.executeUpdate();
		pstmt.close();
	}

	public void update(Zpxx zpxx) throws Exception {
		hid = zpxx.getHyjbxxid();
		page = hid / Globals.COUNT;
		sql = "UPDATE zpxx_" + page
				+ " h SET h.zpzt=?,h.yxq=?,h.hy=?,h.gshy=?,"
				+ "h.gzdd=?,h.zprs=?,h.gznx=?,h.xzsp=?,h.zwyq=?,"
				+ "h.lxr=?,h.lxfs=?,h.bz=?,h.sqsj=?,h.sfyx=?,h.scsj=?"
				+ "WHERE h.hyjbxxid=? AND h.zpxxid=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, zpxx.getZpzt());
		pstmt.setString(2, zpxx.getYxq());
		pstmt.setString(3, zpxx.getHy());
		pstmt.setString(4, zpxx.getGshy());
		pstmt.setString(5, zpxx.getGzdd());
		pstmt.setString(6, zpxx.getZprs());
		pstmt.setString(7, zpxx.getGznx());
		pstmt.setString(8, zpxx.getXzsp());
		pstmt.setString(9, zpxx.getZwyq());
		pstmt.setString(10, zpxx.getLxr());
		pstmt.setString(11, zpxx.getLxfs());
		pstmt.setString(12, zpxx.getBz());
		pstmt.setString(13, zpxx.getSqsj());
		pstmt.setString(14, zpxx.getSfyx());
		pstmt.setString(15, zpxx.getScsj());
		pstmt.setInt(16, zpxx.getHyjbxxid());
		pstmt.setInt(17, zpxx.getZpxxid());
		pstmt.executeUpdate();
		pstmt.close();
	}

	public void delete(int hyjbxxid, int zpxxid) throws Exception {
		pa.deleteRecNum("zpxx");
		page = hyjbxxid / Globals.COUNT;
		sql = "DELETE FROM zpxx_" + page + " WHERE hyjbxxid=? AND zpxxid=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, hyjbxxid);
		pstmt.setInt(2, zpxxid);
		pstmt.executeUpdate();
		pstmt.close();
	}

	public Zpxx queryById(int hyjbxxid, int zpxxid) throws Exception {
		Zpxx c = new Zpxx();
		page = hyjbxxid / Globals.COUNT;
		sql = "SELECT * FROM zpxx_" + page
				+ " c WHERE c.hyjbxxid=? AND c.zpxxid=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, hyjbxxid);
		pstmt.setInt(2, zpxxid);
		rs = pstmt.executeQuery();
		if (rs.next()) {
			c.setZpxxid(rs.getInt(1));
			c.setHyjbxxid(rs.getInt(2));
			c.setZpzt(rs.getString(3));
			c.setYxq(rs.getString(4));
			c.setHy(rs.getString(5));
			c.setGshy(rs.getString(6));
			c.setGzdd(rs.getString(7));
			c.setZprs(rs.getString(8));
			c.setGznx(rs.getString(9));
			c.setXzsp(rs.getString(10));
			c.setZwyq(rs.getString(11));
			c.setLxr(rs.getString(12));
			c.setLxfs(rs.getString(13));
			c.setBz(rs.getString(14));
			c.setSqsj(rs.getString(15));
			c.setSfyx(rs.getString(16));
			c.setScsj(rs.getString(17));
		}
		rs.close();
		pstmt.close();
		return c;
	}

	public List queryAll(int hyjbxxid, int currentPage, int lineSize)
			throws Exception {
		page = hyjbxxid / Globals.COUNT;

		List<Zpxx> list = new ArrayList<Zpxx>();

		sql = "SELECT * FROM zpxx_" + page
				+ " c WHERE c.hyjbxxid=? ORDER BY c.zpxxid DESC LIMIT "
				+ (currentPage - 1) * lineSize + "," + lineSize;
		 System.out.println(sql);
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, hyjbxxid);
		rs = pstmt.executeQuery();
		while (rs.next()) {
			Zpxx c = new Zpxx();
			c.setHyjbxxid(rs.getInt(1));
			c.setZpxxid(rs.getInt(2));
			c.setZpzt(rs.getString(3));
			c.setYxq(rs.getString(4));
			c.setHy(rs.getString(5));
			c.setGshy(rs.getString(6));
			c.setGzdd(rs.getString(7));
			c.setZprs(rs.getString(8));
			c.setGznx(rs.getString(9));
			c.setXzsp(rs.getString(10));
			c.setZwyq(rs.getString(11));
			c.setLxr(rs.getString(12));
			c.setLxfs(rs.getString(13));
			c.setBz(rs.getString(14));
			c.setSqsj(rs.getString(15));
			c.setSfyx(rs.getString(16));
			c.setScsj(rs.getString(17));
			list.add(c);
		}
		rs.close();
		pstmt.close();
		return list;
	}
}
