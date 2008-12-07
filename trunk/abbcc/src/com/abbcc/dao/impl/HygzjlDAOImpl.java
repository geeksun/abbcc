package com.abbcc.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;

import com.abbcc.dao.HygzjlDAO;
import com.abbcc.factory.Globals;
import com.abbcc.factory.HibernateUtil;
import com.abbcc.factory.PubAbbcc;
import com.abbcc.pojo.Hygzjl;

public class HygzjlDAOImpl implements HygzjlDAO {
	private static HygzjlDAOImpl hygzjldaoimpl = null;

	private static int count = 0;

	private static ResultSet rs = null;

	private static int hid = 0;

	private static int page = 0;

	private static String sql = null;

	private static PreparedStatement pstmt = null;

	private static PubAbbcc pa = null;

	private static Connection conn = null;

	private Session session = null;

	public HygzjlDAOImpl() {
		session = HibernateUtil.currentSession();
		conn = session.connection();
		pa = new PubAbbcc();
	}

	public static HygzjlDAOImpl getInstance() {
		if (hygzjldaoimpl == null) {
			hygzjldaoimpl = new HygzjlDAOImpl();
		}
		return hygzjldaoimpl;
	}

	// 插入会员工作经历
	public void insert(Hygzjl hygzjl) throws Exception {
		hid = hygzjl.getHyjbxxid();
		page = hid / Globals.COUNT;
		int[] track = pa.updateRecNum("cpgqxx");
		sql = "INSERT INTO hygzjl_" + page
				+ " VALUES(?,?,?,?,?,?,?,?,?)";
		System.out.println(sql);
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, hygzjl.getHyjbxxid());
		pstmt.setInt(2, count);
		pstmt.setString(3, hygzjl.getRzrq());
		pstmt.setString(4, hygzjl.getGs());
		pstmt.setString(5, hygzjl.getSshy());
		pstmt.setString(6, hygzjl.getGm());
		pstmt.setString(7, hygzjl.getBm());
		pstmt.setString(8, hygzjl.getZw());
		pstmt.setString(9, hygzjl.getGznr());
		pstmt.executeUpdate();
		pstmt.close();
	}

	// 修改会员工作经历
	public void update(Hygzjl hygzjl) throws Exception {
		hid = hygzjl.getHyjbxxid();
		page = hid / Globals.COUNT;
		sql = "UPDATE hygzjl_" + page
				+ " h SET h.rzrq=?,h.gs=?,h.sshy=?,h.gm=?,"
				+ "h.bm=?,h.zw=?,h.gznr=? "
				+ "WHERE h.hyjbxxid=? AND h.hygzjlid=?";
		System.out.println(sql);
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, hygzjl.getRzrq());
		pstmt.setString(2, hygzjl.getGs());
		pstmt.setString(3, hygzjl.getSshy());
		pstmt.setString(4, hygzjl.getGm());
		pstmt.setString(5, hygzjl.getBm());
		pstmt.setString(6, hygzjl.getZw());
		pstmt.setString(7, hygzjl.getGznr());
		pstmt.setInt(8, hygzjl.getHyjbxxid());
		pstmt.setInt(9, hygzjl.getHygzjlid());
		pstmt.executeUpdate();
		pstmt.close();
	}

	// 删除会员工作经历
	public void delete(int hyjbxxid, int hygzjlid) throws Exception {
		pa.deleteRecNum("hygzjl");
		page = hyjbxxid / Globals.COUNT;
		sql = "DELETE FROM hygzjl_" + page + " WHERE hyjbxxid=? AND hygzjlid=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, hyjbxxid);
		pstmt.setInt(2, hygzjlid);
		pstmt.executeUpdate();
		pstmt.close();
	}

	// 根据主键查找会员工作经历
	public Hygzjl queryById(int hyjbxxid, int hygzjlid) throws Exception {
		Hygzjl c = new Hygzjl();
		page = hyjbxxid / Globals.COUNT;
		sql = "SELECT * FROM hygzjl_" + page
				+ " c WHERE c.hyjbxxid=? AND c.hygzjlid=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, hyjbxxid);
		pstmt.setInt(2, hygzjlid);
		rs = pstmt.executeQuery();
		if (rs.next()) {
			c.setHygzjlid(rs.getInt(1));
			c.setHyjbxxid(rs.getInt(2));
			c.setRzrq(rs.getString(3));
			c.setGs(rs.getString(4));
			c.setSshy(rs.getString(5));
			c.setGm(rs.getString(6));
			c.setBm(rs.getString(7));
			c.setZw(rs.getString(8));
			c.setGznr(rs.getString(9));
		}
		rs.close();
		pstmt.close();
		return c;
	}

	// 根据时间排列显示所有未审核的会员工作经历
	public List queryAll(int hyjbxxid,int currentPage, int lineSize) throws Exception {
		page = count / Globals.COUNT;

		List<Hygzjl> list = new ArrayList<Hygzjl>();

		sql = "SELECT * FROM hygzjl_" + page
				+ " c WHERE c.hyjbxxid=? ORDER BY c.hygzjlid DESC LIMIT "
				+ (currentPage - 1) * lineSize + "," + lineSize;
		// System.out.println(sql);
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, hyjbxxid);
		rs = pstmt.executeQuery();
		while (rs.next()) {
			Hygzjl c = new Hygzjl();
			c.setHygzjlid(rs.getInt(1));
			c.setHyjbxxid(rs.getInt(2));
			c.setRzrq(rs.getString(3));
			c.setGs(rs.getString(4));
			c.setSshy(rs.getString(5));
			c.setGm(rs.getString(6));
			c.setBm(rs.getString(7));
			c.setZw(rs.getString(8));
			c.setGznr(rs.getString(9));
			list.add(c);
		}
		rs.close();
		pstmt.close();
		return list;
	}
}
