package com.abbcc.dao.impl;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;

import com.abbcc.dao.FwsxDAO;
import com.abbcc.factory.Globals;
import com.abbcc.factory.HibernateUtil;
import com.abbcc.factory.PubAbbcc;
import com.abbcc.pojo.Fwsx;

public class FwsxDAOImpl implements FwsxDAO {
	private static FwsxDAOImpl fwsxdaoimpl;

	private static int count = 0;

	private static ResultSet rs = null;

	private static int hid = 0;

	private static int page = 0;

	private static String sql = null;

	private static PreparedStatement pstmt = null;

	private static PubAbbcc pa = null;

	private static Connection conn = null;

	private Session session = null;

	public FwsxDAOImpl() {
		session = HibernateUtil.currentSession();
		conn = session.connection();
		pa = new PubAbbcc();
	}

	public static FwsxDAOImpl getInstance() {
		if (fwsxdaoimpl == null) {
			fwsxdaoimpl = new FwsxDAOImpl();
		}
		return fwsxdaoimpl;
	}

	// 插入服务属性信息
	public void insert(Fwsx fwsx) throws Exception {
		hid = fwsx.getHyjbxxid();
		page = hid / Globals.COUNT;
		
		int[] track = pa.updateRecNum("fwsx");
		sql = "INSERT INTO fwsx_" + page
				+ " VALUES(?,?,?,?,?,?,?,?,?,?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, fwsx.getHyjbxxid());
		pstmt.setInt(2, count);
		pstmt.setString(3, fwsx.getXxsm());
		pstmt.setString(4, fwsx.getTp1());
		pstmt.setString(5, fwsx.getTp2());
		pstmt.setString(6, fwsx.getTp3());
		pstmt.setString(7, fwsx.getXxyxq());
		pstmt.setString(8, fwsx.getSqsj());
		pstmt.setString(9, fwsx.getSfyx());
		pstmt.setString(10, fwsx.getScsj());
		pstmt.executeUpdate();
		pstmt.close();
	}

	// 修改服务属性信息
	public void update(Fwsx fwsx) throws Exception {
		hid = fwsx.getHyjbxxid();
		page = hid / Globals.COUNT;
		sql = "UPDATE fwsx_" + page
				+ " h SET h.xxsm=?,h.tp1=?,h.tp2=?,h.tp3=?,"
				+ "h.xxyxq=?,h.sqsj=?,h.sfyx=?,h.scsj=? "
				+ "WHERE h.hyjbxxid=? AND h.fwsxid=?";
		System.out.println(sql);
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, fwsx.getXxsm());
		pstmt.setString(2, fwsx.getTp1());
		pstmt.setString(3, fwsx.getTp2());
		pstmt.setString(4, fwsx.getTp3());
		pstmt.setString(5, fwsx.getXxyxq());
		pstmt.setString(6, fwsx.getSqsj());
		pstmt.setString(7, fwsx.getSfyx());
		pstmt.setString(8, fwsx.getScsj());
		pstmt.setInt(9, fwsx.getHyjbxxid());
		pstmt.setInt(10, fwsx.getFwsxid());
		pstmt.executeUpdate();
		pstmt.close();
	}

	// 删除服务属性信息
	public void delete(int hyjbxxid, int fwsxid) throws Exception {
		pa.deleteRecNum("fwsx");
		page = hyjbxxid / Globals.COUNT;
		sql = "DELETE FROM fwsx_" + page + " WHERE hyjbxxid=? AND fwsxid=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, hyjbxxid);
		pstmt.setInt(2, fwsxid);
		pstmt.executeUpdate();
		pstmt.close();
	}

	// 根据主键查找服务属性信息
	public Fwsx queryById(int hyjbxxid, int fwsxid) throws Exception {
		Fwsx f = new Fwsx();
		page = hyjbxxid / Globals.COUNT;
		sql = "SELECT * FROM fwsx_" + page
				+ " c WHERE c.hyjbxxid=? AND c.fwsxid=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, hyjbxxid);
		pstmt.setInt(2, fwsxid);
		rs = pstmt.executeQuery();
		if (rs.next()) {
			f.setHyjbxxid(rs.getInt(1));
			f.setFwsxid(rs.getInt(2));
			f.setXxsm(rs.getString(3));
			f.setTp1(rs.getString(4));
			f.setTp2(rs.getString(5));
			f.setTp3(rs.getString(6));
			f.setXxyxq(rs.getString(7));
			f.setSqsj(rs.getString(8));
			f.setSfyx(rs.getString(9));
			f.setScsj(rs.getString(10));
		}
		rs.close();
		pstmt.close();
		return f;
	}

	// 根据时间排序显示所有未审核的服务属性信息
	public List queryAll(int hyjbxxid, int currentPage, int lineSize)
			throws Exception {
		page = hyjbxxid / Globals.COUNT;

		List<Fwsx> list = new ArrayList<Fwsx>();

		sql = "SELECT * FROM fwsx_" + page
				+ " c WHERE c.hyjbxxid=? ORDER BY c.fwsxid DESC LIMIT "
				+ (currentPage - 1) * lineSize + "," + lineSize;
		System.out.println(sql);
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, hyjbxxid);
		rs = pstmt.executeQuery();
		while (rs.next()) {
			Fwsx f = new Fwsx();
			f.setHyjbxxid(rs.getInt(1));
			f.setFwsxid(rs.getInt(2));
			f.setXxsm(rs.getString(3));
			f.setTp1(rs.getString(4));
			f.setTp2(rs.getString(5));
			f.setTp3(rs.getString(6));
			f.setXxyxq(rs.getString(7));
			f.setSqsj(rs.getString(8));
			f.setSfyx(rs.getString(9));
			f.setScsj(rs.getString(10));
			list.add(f);
		}
		rs.close();
		pstmt.close();
		return list;
	}

}
