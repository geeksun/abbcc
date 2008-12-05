package com.abbcc.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;

import com.abbcc.dao.HygrzlDAO;
import com.abbcc.factory.Globals;
import com.abbcc.factory.HibernateUtil;
import com.abbcc.factory.PubAbbcc;
import com.abbcc.pojo.Hygrzl;

public class HygrzlDAOImpl implements HygrzlDAO {
	private static HygrzlDAOImpl hygrzldaoimpl;

	private static int count = 0;

	private static ResultSet rs = null;

	private static int hid = 0;

	private static int page = 0;

	private static String sql = null;

	private static PreparedStatement pstmt = null;

	private static PubAbbcc pa = null;

	private static Connection conn = null;

	private Session session = null;

	public HygrzlDAOImpl() {
		session = HibernateUtil.currentSession();
		conn = session.connection();
		pa = new PubAbbcc();
	}

	public static HygrzlDAOImpl getInstance() {
		if (hygrzldaoimpl == null) {
			hygrzldaoimpl = new HygrzlDAOImpl();
		}
		return hygrzldaoimpl;
	}

	// 插入会员个人资料
	public void insert(Hygrzl hygrzl) throws Exception {
		hid = hygrzl.getHyjbxxid();
		page = hid / Globals.COUNT;
		sql = "INSERT INTO hygrzl_" + page + " VALUES(?,?,?,?,?,?,?,?,?,?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, hygrzl.getHyjbxxid());
		pstmt.setString(2, hygrzl.getSr());
		pstmt.setString(3, hygrzl.getXx());
		pstmt.setString(4, hygrzl.getJg());
		pstmt.setString(5, hygrzl.getSlsp());
		pstmt.setString(6, hygrzl.getXl());
		pstmt.setString(7, hygrzl.getZjxy());
		pstmt.setString(8, hygrzl.getGrzy());
		pstmt.setString(9, hygrzl.getXqah());
		pstmt.setString(10, hygrzl.getZwjs());
		pstmt.executeUpdate();
		pstmt.close();
	}

	// 修改会员个人资料
	public void update(Hygrzl hygrzl) throws Exception {
		hid = hygrzl.getHyjbxxid();
		page = hid / Globals.COUNT;
		sql = "UPDATE hygrzl_" + page + " h SET h.sr=?,h.xx=?,h.jg=?,h.slsp=?,"
				+ "h.xl=?,h.zjxy=?,h.grzy=?,h.xqah=?,h.zwjs=?"
				+ "WHERE h.hyjbxxid=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, hygrzl.getSr());
		pstmt.setString(2, hygrzl.getXx());
		pstmt.setString(3, hygrzl.getJg());
		pstmt.setString(4, hygrzl.getSlsp());
		pstmt.setString(5, hygrzl.getXl());
		pstmt.setString(6, hygrzl.getZjxy());
		pstmt.setString(7, hygrzl.getGrzy());
		pstmt.setString(8, hygrzl.getXqah());
		pstmt.setString(9, hygrzl.getZwjs());
		pstmt.setInt(10, hygrzl.getHyjbxxid());
		pstmt.executeUpdate();
		pstmt.close();
	}

	// 删除会员个人资料
	public void delete(int hyjbxxid) throws Exception {
		pa.deleteRecNum("hygrzl");
		page = hyjbxxid / Globals.COUNT;
		sql = "DELETE FROM hygrzl_" + page + " WHERE hyjbxxid=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, hyjbxxid);
		pstmt.executeUpdate();
		pstmt.close();
	}

	// 根据主键查找会员个人资料
	public Hygrzl queryById(int hyjbxxid) throws Exception {
		Hygrzl g = new Hygrzl();
		page = hyjbxxid / Globals.COUNT;
		sql = "SELECT * FROM hygrzl_" + page + " c WHERE c.hyjbxxid=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, hyjbxxid);
		rs = pstmt.executeQuery();
		if (rs.next()) {
			g.setHyjbxxid(rs.getInt(1));
			g.setSr(rs.getString(2));
			g.setXx(rs.getString(3));
			g.setJg(rs.getString(4));
			g.setSlsp(rs.getString(5));
			g.setXl(rs.getString(6));
			g.setZjxy(rs.getString(7));
			g.setGrzy(rs.getString(8));
			g.setXqah(rs.getString(9));
			g.setZwjs(rs.getString(10));
		}
		rs.close();
		pstmt.close();
		return g;
	}

	// 根据时间排列显示所有未审核的会员个人资料
	public List queryAll(int hyjbxxid, int currentPage, int lineSize)
			throws Exception {
		int page1 = 0;
		page = count / Globals.COUNT;
		List<Hygrzl> list = new ArrayList<Hygrzl>();
		page1 = page - 1;

		sql = "SELECT * FROM hygrzl_" + page + " a UNION SELECT * FROM hygrzl_"
				+ page1 + " b ORDER BY hyjbxxid DESC LIMIT "
				+ (currentPage - 1) * lineSize + "," + lineSize;
		// System.out.println(sql);
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, hyjbxxid);
		rs = pstmt.executeQuery();
		while (rs.next()) {
			Hygrzl g = new Hygrzl();
			g.setHyjbxxid(rs.getInt(1));
			g.setSr(rs.getString(2));
			g.setXx(rs.getString(3));
			g.setJg(rs.getString(4));
			g.setSlsp(rs.getString(5));
			g.setXl(rs.getString(6));
			g.setZjxy(rs.getString(7));
			g.setGrzy(rs.getString(8));
			g.setXqah(rs.getString(9));
			g.setZwjs(rs.getString(10));
			list.add(g);
		}
		rs.close();
		pstmt.close();
		return list;
	}
}
