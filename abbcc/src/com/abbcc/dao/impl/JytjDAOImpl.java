package com.abbcc.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;

import com.abbcc.dao.JytjDAO;
import com.abbcc.factory.Globals;
import com.abbcc.factory.HibernateUtil;
import com.abbcc.factory.PubAbbcc;
import com.abbcc.pojo.Jytj;

public class JytjDAOImpl implements JytjDAO {
	private static JytjDAOImpl jytjdaoimpl = null;

	private static int count = 0;

	private static ResultSet rs = null;

	private static int hid = 0;

	private static int page = 0;

	private static String sql = null;

	private static PreparedStatement pstmt = null;

	private static PubAbbcc pa = null;

	private static Connection conn = null;

	private Session session = null;

	public JytjDAOImpl() {
		this.session = HibernateUtil.currentSession();
	}

	public static JytjDAOImpl getInstance() {
		if (jytjdaoimpl == null) {
			jytjdaoimpl = new JytjDAOImpl();
		}
		return jytjdaoimpl;
	}

	public void insert(Jytj jytj) throws Exception {
		hid = jytj.getHyjbxxid();
		page = hid / Globals.COUNT;
		sql = "INSERT INTO jytj_" + page + " VALUES(?,?,?,?,?,?,?,?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, jytj.getJytjid());
		pstmt.setInt(2, jytj.getHyjbxxid());
		pstmt.setString(3, jytj.getJldw());
		pstmt.setString(4, jytj.getCpdj());
		pstmt.setString(5, jytj.getZxqdl());
		pstmt.setString(6, jytj.getGhzl());
		pstmt.setString(7, jytj.getFhqx());
		pstmt.setString(8, jytj.getGyslc());
		pstmt.executeUpdate();
		pstmt.close();
	}

	public void update(Jytj jytj) throws Exception {
		hid = jytj.getHyjbxxid();
		page = hid / Globals.COUNT;
		sql = "UPDATE jytj_" + page
				+ " h SET h.jldw=?,h.cpdj=?,h.zxqdl=?,h.ghzl=?,"
				+ "h.fhqx=?,h.gyslc=?"
				+ "WHERE h.hyjbxxid=? AND h.jytjid=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, jytj.getJldw());
		pstmt.setString(2, jytj.getCpdj());
		pstmt.setString(3, jytj.getZxqdl());
		pstmt.setString(4, jytj.getGhzl());
		pstmt.setString(5, jytj.getFhqx());
		pstmt.setString(6, jytj.getGyslc());
		pstmt.setInt(7, jytj.getHyjbxxid());
		pstmt.setInt(8, jytj.getJytjid());
		pstmt.executeUpdate();
		pstmt.close();
	}

	public void delete(int hyjbxxid, int jytjid) throws Exception {
		pa.deleteRecNum("jytj");
		page = hyjbxxid / Globals.COUNT;
		sql = "DELETE FROM jytj_" + page + " WHERE hyjbxxid=? ADN jytjid=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, hyjbxxid);
		pstmt.setInt(2, jytjid);
		pstmt.executeUpdate();
		pstmt.close();
	}

	public Jytj queryById(int hyjbxxid, int jytjid) throws Exception {
		Jytj c = new Jytj();
		page = hyjbxxid / Globals.COUNT;
		sql = "SELECT * FROM jytj_" + page
				+ " c WHERE c.hyjbxxid=? AND c.jytjid=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, hyjbxxid);
		pstmt.setInt(2, jytjid);
		rs = pstmt.executeQuery();
		if (rs.next()) {
			c.setJytjid(rs.getInt(1));
			c.setHyjbxxid(rs.getInt(2));
			c.setJldw(rs.getString(3));
			c.setCpdj(rs.getString(4));
			c.setZxqdl(rs.getString(5));
			c.setGhzl(rs.getString(6));
			c.setFhqx(rs.getString(7));
			c.setGyslc(rs.getString(8));
		}
		rs.close();
		pstmt.close();
		return c;
	}

	public List queryAll(int hyjbxxid, int currentPage, int lineSize)
			throws Exception {
		page = count / Globals.COUNT;

		List<Jytj> list = new ArrayList<Jytj>();

		sql = "SELECT * FROM jytj_" + page
				+ " c WHERE c.hyjbxxid=? ORDER BY c.jytjid DESC LIMIT "
				+ (currentPage - 1) * lineSize + "," + lineSize;
		// System.out.println(sql);
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, hyjbxxid);
		rs = pstmt.executeQuery();
		while (rs.next()) {
			Jytj c = new Jytj();
			c.setJytjid(rs.getInt(1));
			c.setHyjbxxid(rs.getInt(2));
			c.setJldw(rs.getString(3));
			c.setCpdj(rs.getString(4));
			c.setZxqdl(rs.getString(5));
			c.setGhzl(rs.getString(6));
			c.setFhqx(rs.getString(7));
			c.setGyslc(rs.getString(8));
			list.add(c);
		}
		rs.close();
		pstmt.close();
		return list;
	}
}
