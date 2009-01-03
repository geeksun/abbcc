package com.abbcc.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;

import com.abbcc.dao.JghzDAO;
import com.abbcc.factory.Globals;
import com.abbcc.factory.HibernateUtil;
import com.abbcc.factory.PubAbbcc;
import com.abbcc.pojo.Jghz;

public class JghzDAOImpl implements JghzDAO {
	
	private static JghzDAOImpl jghzdaoimpl = null;

	private static ResultSet rs = null;

	private static int count = 0;

	private static int hid = 0;

	private static int page = 0;

	private static String sql = null;

	private static PreparedStatement pstmt = null;

	private static PubAbbcc pa = null;

	private static Connection conn = null;

	private Session session = null;

	public JghzDAOImpl() {
		session = HibernateUtil.currentSession();
		conn = session.connection();
		pa = new PubAbbcc();
	}

	public static JghzDAOImpl getInstance() {
		if (jghzdaoimpl == null) {
			jghzdaoimpl = new JghzDAOImpl();
		}
		return jghzdaoimpl;
	}

	// 插入加工合作
	public void insert(Jghz jghz) throws Exception {
		hid = jghz.getHyjbxxid();
		page = hid / Globals.COUNT;
		int[] track = pa.updateRecNum("jghz");
		sql = "INSERT INTO jghz_" + page + " VALUES(?,?,?,?,?,?,?,?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, hid);
		pstmt.setInt(2, count);
		pstmt.setString(3, jghz.getJglx());
		pstmt.setString(4, jghz.getJgmc());
		pstmt.setString(5, jghz.getJgsslm());
		pstmt.setString(6, jghz.getSqsj());
		pstmt.setString(7, jghz.getSfyx());
		pstmt.setString(8, jghz.getScsj());
		pstmt.executeUpdate();
		pstmt.close();
	}

	// 修改加工合作
	public void update(Jghz jghz) throws Exception {
		hid = jghz.getHyjbxxid();
		page = hid / Globals.COUNT;
		sql = "UPDATE jghz_" + page
				+ " h SET h.jglx=?,h.jgmc=?,h.jgsslm=?,h.sqsj=?,"
				+ "h.sfyx=?,h.scsj=?" + "WHERE h.hyjbxxid=? AND h.jghzid=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, jghz.getJglx());
		pstmt.setString(2, jghz.getJgmc());
		pstmt.setString(3, jghz.getJgsslm());
		pstmt.setString(4, jghz.getSqsj());
		pstmt.setString(5, jghz.getSfyx());
		pstmt.setString(6, jghz.getScsj());
		pstmt.setInt(7, jghz.getHyjbxxid());
		pstmt.setInt(8, jghz.getJghzid());
		pstmt.executeUpdate();
		pstmt.close();
	}

	// 删除加工合作
	public void delete(int hyjbxxid, int jghzid) throws Exception {
		pa.deleteRecNum("jghz");
		page = hyjbxxid / Globals.COUNT;
		sql = "DELETE FROM jghz_" + page + " WHERE hyjbxxid=? AND jghzid=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, hyjbxxid);
		pstmt.setInt(2, jghzid);
		pstmt.executeUpdate();
		pstmt.close();
	}

	// 根据主键查找加工合作
	public Jghz queryById(int hyjbxxid, int jghzid) throws Exception {
		Jghz c = new Jghz();
		page = hyjbxxid / Globals.COUNT;
		sql = "SELECT * FROM jghz_" + page
				+ " c WHERE c.hyjbxxid=? AND c.jghzid=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, hyjbxxid);
		pstmt.setInt(2, jghzid);
		rs = pstmt.executeQuery();
		if (rs.next()) {
			c.setJghzid(rs.getInt(1));
			c.setHyjbxxid(rs.getInt(2));
			c.setJglx(rs.getString(3));
			c.setJgmc(rs.getString(4));
			c.setJgsslm(rs.getString(5));
			c.setSqsj(rs.getString(6));
			c.setSfyx(rs.getString(7));
			c.setScsj(rs.getString(8));
		}
		rs.close();
		pstmt.close();
		return c;
	}

	// 根据时间排列显示所有未审核的加工合作
	public List queryAll(int hyjbxxid, int currentPage, int lineSize)
			throws Exception {
		page = hyjbxxid / Globals.COUNT;

		List<Jghz> list = new ArrayList<Jghz>();

		sql = "SELECT * FROM jghz_" + page
				+ " c WHERE c.hyjbxxid=? ORDER BY c.jghzid DESC LIMIT "
				+ (currentPage - 1) * lineSize + "," + lineSize;
		System.out.println(sql);
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, hyjbxxid);
		rs = pstmt.executeQuery();
		while (rs.next()) {
			Jghz c = new Jghz();
			c.setHyjbxxid(rs.getInt(1));
			c.setJghzid(rs.getInt(2));
			c.setJglx(rs.getString(3));
			c.setJgmc(rs.getString(4));
			c.setJgsslm(rs.getString(5));
			c.setSqsj(rs.getString(6));
			c.setSfyx(rs.getString(7));
			c.setScsj(rs.getString(8));
			list.add(c);
		}
		rs.close();
		pstmt.close();
		return list;
	}
}
