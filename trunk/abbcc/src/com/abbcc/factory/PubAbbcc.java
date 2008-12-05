package com.abbcc.factory;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.hibernate.Session;

import com.abbcc.common.DataBase;

public class PubAbbcc {
	private static Connection conn = null;
	private static int count;
	private static PubAbbcc pa;
	private static Session session = null;

	public static PubAbbcc getInstance() {
		if (pa == null) {
			pa = new PubAbbcc();
		}
		return pa;
	}

	public PubAbbcc() {
		//session = HibernateUtil.currentSession();
		//conn = session.connection();
		count = 0;
	}

	public int getRecNum(String tablename) {
		String sql = "SELECT a.recnum FROM pz a WHERE a.tablename='"
				+ tablename + "'";
		PreparedStatement pstmt = null;
		conn = DataBase.getConnection();
		try {
			pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			if (rs.next()) {
				count = rs.getInt(1);
			}
			rs.close();
			pstmt.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		DataBase.closeCon(conn);
		return count;
	}

	/**
	 * @param tablename
	 * @return  更新纪录数量,返回总纪录数
	 */
	public int updateRecNum(String tablename) {
		String sql = "SELECT a.recnum FROM pz a WHERE a.tablename='"
				+ tablename + "'";
		PreparedStatement pstmt = null;
		conn = DataBase.getConnection();
		try {
			pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			if (rs.next()) {
				count = rs.getInt(1);
			}
			count = count + 1;
			sql = "UPDATE pz p SET p.recnum=" + count + " WHERE p.tablename='"
					+ tablename + "'";
			pstmt = conn.prepareStatement(sql);
			pstmt.executeUpdate();
			rs.close();
			//  总纪录数
			sql = "UPDATE pz p SET p.recnum=p.recnum+1 WHERE p.tablename='"
					+ tablename + "_total'";
			pstmt = conn.prepareStatement(sql);
			pstmt.executeUpdate();
			pstmt.close();
			DataBase.closeCon(conn);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return count;
	}

	public void deleteRecNum(String tablename) {
		String sql = "UPDATE pz p SET p.recnum=p.recnum-1 WHERE p.tablename='"
				+ tablename + "_total'";
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.executeUpdate();
			pstmt.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// 根据会员ID删除所有关联纪录
	public void deleteByHyjbxxid(int hyjbxxid, String tablename)
			throws Exception {
		int page = hyjbxxid / Globals.COUNT;

		// 得到信息条数
		String sql = "SELECT count(*) FROM " + tablename + "_" + page
				+ " a WHERE a.hyjbxxid=" + hyjbxxid;
		PreparedStatement pstmt = null;
		pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		if (rs.next()) {
			count = rs.getInt(1);
		}
		rs.close();

		// 更新配置表
		sql = "UPDATE pz p SET p.recnum=p.recnum-" + count
				+ " WHERE p.tablename='" + tablename + "_total'";
		pstmt = conn.prepareStatement(sql);
		pstmt.executeUpdate();

		// 删除关联记录
		sql = "DELETE FROM " + tablename + "_" + page + " WHERE hyjbxxid=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, hyjbxxid);
		pstmt.executeUpdate();

		pstmt.close();
	}

	// 把配置表中的所有记录都一次取出来.在前面页面中去判断第一个字段的值.然后再显示相应的记录信息
	public int queryByTablename(String tablename, String tablename1, int flag)
			throws SQLException {
		int recnum = 0;
		String sql = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		if (flag == 1) {
			sql = "SELECT p.recnum FROM pz p WHERE p.tablename='" + tablename
					+ "'";
			pstmt = conn.prepareStatement(sql);
		} else {
			sql = "SELECT a.recnum-b.recnum FROM pz a,pz b WHERE a.tablename='"
					+ tablename + "' AND b.tablename='" + tablename1 + "'";
			pstmt = conn.prepareStatement(sql);
		}
		rs = pstmt.executeQuery();
		if (rs.next()) {
			recnum = rs.getInt(1);
		}
		return recnum;
	}
}
