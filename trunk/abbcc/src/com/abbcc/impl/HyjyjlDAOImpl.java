package com.abbcc.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;

import com.abbcc.dao.HyjyjlDAO;
import com.abbcc.factory.Globals;
import com.abbcc.factory.HibernateUtil;
import com.abbcc.factory.PubAbbcc;
import com.abbcc.pojo.Hyjyjl;

public class HyjyjlDAOImpl implements HyjyjlDAO {
	private static HyjyjlDAOImpl hyjyjldaoimpl = null;

	private static int count = 0;

	private static ResultSet rs = null;

	private static int hid = 0;

	private static int page = 0;

	private static String sql = null;

	private static PreparedStatement pstmt = null;

	private static PubAbbcc pa = null;

	private static Connection conn = null;

	private Session session = null;

	public HyjyjlDAOImpl() {
		session = HibernateUtil.currentSession();
		conn = session.connection();
		pa = new PubAbbcc();
	}

	public static HyjyjlDAOImpl getInstance() {
		if (hyjyjldaoimpl == null) {
			hyjyjldaoimpl = new HyjyjlDAOImpl();
		}
		return hyjyjldaoimpl;
	}

	// 插入会员教育经历
	public void insert(Hyjyjl hyjyjl) throws Exception {
		hid = hyjyjl.getHyjbxxid();
		page = hid / Globals.COUNT;
		count = pa.updateRecNum("hyjyjl");
		sql = "INSERT INTO hyjyjl_" + page
				+ " VALUES(?,?,?,?,?,?,?,?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, hyjyjl.getHyjbxxid());
		pstmt.setInt(2, count);
		pstmt.setString(3, hyjyjl.getXxmc());
		pstmt.setString(4, hyjyjl.getXw());
		pstmt.setString(5, hyjyjl.getZy());
		pstmt.setString(6, hyjyjl.getXxksrq());
		pstmt.setString(7, hyjyjl.getXxjsrq());
		pstmt.setString(8, hyjyjl.getBz());
		pstmt.executeUpdate();
		pstmt.close();
	}

	// 修改会员教育经历
	public void update(Hyjyjl hyjyjl) throws Exception {
		hid = hyjyjl.getHyjbxxid();
		page = hid / Globals.COUNT;
		sql = "UPDATE hyjyjl_" + page
				+ " h SET h.xxmc=?,h.xw=?,h.zy=?,h.xxksrq=?,"
				+ "h.xxjsrq=?,h.bz=?"
				+ "WHERE h.hyjbxxid=? AND h.hyjyjlid=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, hyjyjl.getXxmc());
		pstmt.setString(2, hyjyjl.getXw());
		pstmt.setString(3, hyjyjl.getZy());
		pstmt.setString(4, hyjyjl.getXxksrq());
		pstmt.setString(5, hyjyjl.getXxjsrq());
		pstmt.setString(6, hyjyjl.getBz());
		pstmt.setInt(7, hyjyjl.getHyjbxxid());
		pstmt.setInt(8, hyjyjl.getHyjyjlid());
		pstmt.executeUpdate();
		pstmt.close();
	}

	// 删除会员教育经历
	public void delete(int hyjbxxid, int hyjyjlid) throws Exception {
		pa.deleteRecNum("hyjyjl");
		page = hyjbxxid / Globals.COUNT;
		sql = "DELETE FROM hyjyjl_" + page + " WHERE hyjbxxid=? AND hyjyjlid=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, hyjbxxid);
		pstmt.setInt(2, hyjyjlid);
		pstmt.executeUpdate();
		pstmt.close();
	}

	// 根据主键查找会员教育经历
	public Hyjyjl queryById(int hyjbxxid, int hyjyjlid) throws Exception {
		Hyjyjl c = new Hyjyjl();
		page = hyjbxxid / Globals.COUNT;
		sql = "SELECT * FROM hyjyjl_" + page
				+ " c WHERE c.hyjbxxid=? AND c.hyjyjlid=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, hyjbxxid);
		pstmt.setInt(2, hyjyjlid);
		rs = pstmt.executeQuery();
		if (rs.next()) {
			c.setHyjyjlid(rs.getInt(1));
			c.setHyjbxxid(rs.getInt(2));
			c.setXxmc(rs.getString(3));
			c.setXw(rs.getString(4));
			c.setZy(rs.getString(5));
			c.setXxksrq(rs.getString(6));
			c.setXxjsrq(rs.getString(7));
			c.setBz(rs.getString(8));
		}
		rs.close();
		pstmt.close();
		return c;
	}

	// 根据时间排列显示所有未审核的会员教育经历
	public List queryAll(int hyjbxxid, int currentPage, int lineSize)
			throws Exception {
		page = count / Globals.COUNT;

		List<Hyjyjl> list = new ArrayList<Hyjyjl>();

		sql = "SELECT * FROM hyjyjl_" + page
				+ " c WHERE c.hyjbxxid=? ORDER BY c.hyjyjlid DESC LIMIT "
				+ (currentPage - 1) * lineSize + "," + lineSize;
		// System.out.println(sql);
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, hyjbxxid);
		rs = pstmt.executeQuery();
		while (rs.next()) {
			Hyjyjl c = new Hyjyjl();
			c.setHyjyjlid(rs.getInt(1));
			c.setHyjbxxid(rs.getInt(2));
			c.setXxmc(rs.getString(3));
			c.setXw(rs.getString(4));
			c.setZy(rs.getString(5));
			c.setXxksrq(rs.getString(6));
			c.setXxjsrq(rs.getString(7));
			c.setBz(rs.getString(8));
			list.add(c);
		}
		rs.close();
		pstmt.close();
		return list;
	}
}
