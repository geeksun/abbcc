package com.abbcc.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;

import com.abbcc.dao.GsjbxxDAO;
import com.abbcc.factory.Globals;
import com.abbcc.factory.HibernateUtil;
import com.abbcc.factory.PubAbbcc;
import com.abbcc.pojo.Gsjbxx;

public class GsjbxxDAOImpl implements GsjbxxDAO {
	private static GsjbxxDAOImpl gsjbxxdaoimpl;

	private static int count = 0;

	private static ResultSet rs = null;

	private static int hid = 0;

	private static int page = 0;

	private static String sql = null;

	private static PreparedStatement pstmt = null;

	private static PubAbbcc pa = null;

	private static Connection conn = null;

	private Session session = null;

	public GsjbxxDAOImpl() {
		session = HibernateUtil.currentSession();
		conn = session.connection();
		pa = new PubAbbcc();
	}

	public static GsjbxxDAOImpl getInstance() {
		if (gsjbxxdaoimpl == null) {
			gsjbxxdaoimpl = new GsjbxxDAOImpl();
		}
		return gsjbxxdaoimpl;
	}

	// 插入公司基本信息信息
	public void insert(Gsjbxx gsjbxx) throws Exception {
		hid = gsjbxx.getHyjbxxid();
		page = hid / Globals.COUNT;
		sql = "INSERT INTO gsjbxx_" + page
				+ " VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, gsjbxx.getHyjbxxid());
		pstmt.setString(2, gsjbxx.getGslx());
		pstmt.setString(3, gsjbxx.getGsmc());
		pstmt.setString(4, gsjbxx.getGsyymc());
		pstmt.setString(5, gsjbxx.getGj());
		pstmt.setString(6, gsjbxx.getSf());
		pstmt.setString(7, gsjbxx.getDjs());
		pstmt.setString(8, gsjbxx.getXjs());
		pstmt.setString(9, gsjbxx.getJydz());
		pstmt.setString(10, gsjbxx.getZyhy());
		pstmt.setString(11, gsjbxx.getZyfx());
		pstmt.setString(12, gsjbxx.getXsdcp());
		pstmt.setString(13, gsjbxx.getCgdcp());
		pstmt.executeUpdate();
		pstmt.close();
	}

	// 修改公司基本信息信息
	public void update(Gsjbxx gsjbxx) throws Exception {
		hid = gsjbxx.getHyjbxxid();
		page = hid / Globals.COUNT;
		sql = "UPDATE gsjbxx_" + page
				+ " h SET h.gslx=?,h.gsmc=?,h.gsyymc=?,h.gj=?,"
				+ "h.sf=?,h.djs=?,h.xjs=?,h.jydz=?,h.zyhy=?,"
				+ "h.zyfx=?,h.xsdcp=?,h.cgdcp=? " + "WHERE h.hyjbxxid=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, gsjbxx.getGslx());
		pstmt.setString(2, gsjbxx.getGsmc());
		pstmt.setString(3, gsjbxx.getGsyymc());
		pstmt.setString(4, gsjbxx.getGj());
		pstmt.setString(5, gsjbxx.getSf());
		pstmt.setString(6, gsjbxx.getDjs());
		pstmt.setString(7, gsjbxx.getXjs());
		pstmt.setString(8, gsjbxx.getJydz());
		pstmt.setString(9, gsjbxx.getZyhy());
		pstmt.setString(10, gsjbxx.getZyfx());
		pstmt.setString(11, gsjbxx.getXsdcp());
		pstmt.setString(12, gsjbxx.getCgdcp());
		pstmt.setInt(13, gsjbxx.getHyjbxxid());
		pstmt.executeUpdate();
		pstmt.close();
	}

	// 删除公司基本信息信息
	public void delete(int hyjbxxid) throws Exception {
		pa.deleteRecNum("gsjbxx");
		page = hyjbxxid / Globals.COUNT;
		sql = "DELETE FROM gsjbxx_" + page + " WHERE hyjbxxid=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, hyjbxxid);
		pstmt.executeUpdate();
		pstmt.close();
	}

	// 根据主键查找公司基本信息信息
	public Gsjbxx queryById(int hyjbxxid) throws Exception {
		Gsjbxx g = new Gsjbxx();
		page = hyjbxxid / Globals.COUNT;
		sql = "SELECT * FROM gsjbxx_" + page + " c WHERE c.hyjbxxid=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, hyjbxxid);
		rs = pstmt.executeQuery();
		if (rs.next()) {
			g.setHyjbxxid(rs.getInt(1));
			g.setGslx(rs.getString(2));
			g.setGsmc(rs.getString(3));
			g.setGsyymc(rs.getString(4));
			g.setGj(rs.getString(5));
			g.setSf(rs.getString(6));
			g.setDjs(rs.getString(7));
			g.setXjs(rs.getString(8));
			g.setJydz(rs.getString(9));
			g.setZyhy(rs.getString(10));
			g.setZyfx(rs.getString(11));
			g.setXsdcp(rs.getString(12));
			g.setCgdcp(rs.getString(13));
		}
		rs.close();
		pstmt.close();
		return g;
	}

	// 根据时间排列显示所有未审核的公司基本信息
	public List queryAll(int hyjbxxid, int currentPage, int lineSize)
			throws Exception {
		int page1 = 0;
		page = count / Globals.COUNT;
		List<Gsjbxx> list = new ArrayList<Gsjbxx>();
		page1 = page - 1;

		sql = "SELECT * FROM gsjbxx_" + page + " a UNION SELECT * FROM gsjbxx_"
				+ page1 + " b ORDER BY hyjbxxid DESC LIMIT "
				+ (currentPage - 1) * lineSize + "," + lineSize;
		// System.out.println(sql);
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, hyjbxxid);
		rs = pstmt.executeQuery();
		while (rs.next()) {
			Gsjbxx g = new Gsjbxx();
			g.setHyjbxxid(rs.getInt(1));
			g.setGslx(rs.getString(2));
			g.setGsmc(rs.getString(3));
			g.setGsyymc(rs.getString(4));
			g.setGj(rs.getString(5));
			g.setSf(rs.getString(6));
			g.setDjs(rs.getString(7));
			g.setXjs(rs.getString(8));
			g.setJydz(rs.getString(9));
			g.setZyhy(rs.getString(10));
			g.setZyfx(rs.getString(11));
			g.setXsdcp(rs.getString(12));
			g.setCgdcp(rs.getString(13));
			list.add(g);
		}
		rs.close();
		pstmt.close();
		return list;
	}
}
