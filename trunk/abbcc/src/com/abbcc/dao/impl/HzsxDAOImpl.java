package com.abbcc.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;

import com.abbcc.dao.HzsxDAO;
import com.abbcc.factory.Globals;
import com.abbcc.factory.HibernateUtil;
import com.abbcc.factory.PubAbbcc;
import com.abbcc.pojo.Hzsx;

public class HzsxDAOImpl implements HzsxDAO {
	private static HzsxDAOImpl hzsxdaoimpl = null;

	private static int count = 0;

	private static ResultSet rs = null;

	private static int hid = 0;

	private static int page = 0;

	private static String sql = null;

	private static PreparedStatement pstmt = null;

	private static PubAbbcc pa = null;

	private static Connection conn = null;

	private Session session = null;

	public HzsxDAOImpl() {
		session = HibernateUtil.currentSession();
		conn = session.connection();
		pa = new PubAbbcc();
	}

	public static HzsxDAOImpl getInstance() {
		if (hzsxdaoimpl == null) {
			hzsxdaoimpl = new HzsxDAOImpl();
		}
		return hzsxdaoimpl;
	}

	// 插入合作属性
	public void insert(Hzsx hzsx) throws Exception {
		hid = hzsx.getHyjbxxid();
		page = hid / Globals.COUNT;
		count = pa.updateRecNum("hzsx");
		sql = "INSERT INTO hzsx_" + page
				+ " VALUES(?,?,?,?,?,?,?,?,?,?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, hzsx.getHyjbxxid());
		pstmt.setInt(2, count);
		pstmt.setString(3, hzsx.getXxsm());
		pstmt.setString(4, hzsx.getTp1());
		pstmt.setString(5, hzsx.getTp2());
		pstmt.setString(6, hzsx.getTp3());
		pstmt.setString(7, hzsx.getXxyxq());
		pstmt.setString(8, hzsx.getSqsj());
		pstmt.setString(9, hzsx.getSfyx());
		pstmt.setString(10, hzsx.getScsj());
		pstmt.executeUpdate();
		pstmt.close();
	}

	// 修改合作属性
	public void update(Hzsx hzsx) throws Exception {
		hid = hzsx.getHyjbxxid();
		page = hid / Globals.COUNT;
		sql = "UPDATE hzsx_" + page
				+ " h SET h.xxsm=?,h.tp1=?,h.tp2=?,h.tp3=?,"
				+ "h.xxyxq=?,h.sqsj=?,h.sfyx=?,h.scsj"
				+ "WHERE h.hyjbxxid=? AND h.hzsxid=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, hzsx.getXxsm());
		pstmt.setString(2, hzsx.getTp1());
		pstmt.setString(3, hzsx.getTp2());
		pstmt.setString(4, hzsx.getTp3());
		pstmt.setString(5, hzsx.getXxyxq());
		pstmt.setString(6, hzsx.getSqsj());
		pstmt.setString(7, hzsx.getSfyx());
		pstmt.setString(8, hzsx.getScsj());
		pstmt.setInt(9, hzsx.getHyjbxxid());
		pstmt.setInt(10, hzsx.getHzsxid());
		pstmt.executeUpdate();
		pstmt.close();
	}

	// 删除合作属性
	public void delete(int hyjbxxid, int hzsxid) throws Exception {
		pa.deleteRecNum("hzsx");
		page = hyjbxxid / Globals.COUNT;
		sql = "DELETE FROM hzsx_" + page + " WHERE hyjbxxid=? AND hzsxid=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, hyjbxxid);
		pstmt.setInt(2, hzsxid);
		pstmt.executeUpdate();
		pstmt.close();
	}

	// 根据主键查找合作属性
	public Hzsx queryById(int hyjbxxid, int hzsxid) throws Exception {
		Hzsx c = new Hzsx();
		page = hyjbxxid / Globals.COUNT;
		sql = "SELECT * FROM hzsx_" + page
				+ " c WHERE c.hyjbxxid=? AND c.hzsxid=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, hyjbxxid);
		pstmt.setInt(2, hzsxid);
		rs = pstmt.executeQuery();
		if (rs.next()) {
			c.setHzsxid(rs.getInt(1));
			c.setHyjbxxid(rs.getInt(2));
			c.setXxsm(rs.getString(3));
			c.setTp1(rs.getString(4));
			c.setTp2(rs.getString(5));
			c.setTp3(rs.getString(6));
			c.setXxyxq(rs.getString(7));
			c.setSqsj(rs.getString(8));
			c.setSfyx(rs.getString(9));
			c.setScsj(rs.getString(10));
		}
		rs.close();
		pstmt.close();
		return c;
	}

	// 根据时间排列显示所有未审核的合作属性
	public List queryAll(int hyjbxxid, int currentPage, int lineSize)
			throws Exception {
		page = hyjbxxid / Globals.COUNT;

		List<Hzsx> list = new ArrayList<Hzsx>();

		sql = "SELECT * FROM hzsx_" + page
				+ " c WHERE c.hyjbxxid=? ORDER BY c.hzsxid DESC LIMIT "
				+ (currentPage - 1) * lineSize + "," + lineSize;
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, hyjbxxid);
		rs = pstmt.executeQuery();
		while (rs.next()) {
			Hzsx c = new Hzsx();
			c.setHzsxid(rs.getInt(1));
			c.setHyjbxxid(rs.getInt(2));
			c.setXxsm(rs.getString(3));
			c.setTp1(rs.getString(4));
			c.setTp2(rs.getString(5));
			c.setTp3(rs.getString(6));
			c.setXxyxq(rs.getString(7));
			c.setSqsj(rs.getString(8));
			c.setSfyx(rs.getString(9));
			c.setScsj(rs.getString(10));
			list.add(c);
		}
		rs.close();
		pstmt.close();
		return list;
	}
}
