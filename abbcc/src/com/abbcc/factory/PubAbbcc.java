package com.abbcc.factory;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.hibernate.Session;

import com.abbcc.common.DataBase;

public class PubAbbcc {
	private static Connection conn = null;
	private static PubAbbcc pa;

	public static PubAbbcc getInstance() {
		if (pa == null) {
			pa = new PubAbbcc();
		}
		return pa;
	}

	public PubAbbcc() {
		//count = 0;
	}

	public int getRecNum(String tablename) {
		int count = 0;
		String sql = "SELECT a.recnum FROM pz a WHERE a.tablename='" + tablename + "'";
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
	 * @return  ���¼�¼������,���ؼ�¼���Ե�����
	 */
	public int[] updateRecNum(String tablename) {
		int[] track = new int[2];
		//��ѯ��¼����
		String sql = "SELECT a.recnum,a.max_count FROM pz a WHERE a.tablename='" + tablename + "'";
		PreparedStatement pstmt = null;
		conn = DataBase.getConnection();
		try {
			pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			if (rs.next()) {
				track[0] = rs.getInt(1);    //�ܼ�¼��
				track[1] = rs.getInt(2);	//����ID
			}
			
			rs.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			DataBase.closeCon(conn);
		}
		return track;
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

	// ���ݻ�ԱIDɾ�����й�����¼
	public void deleteByHyjbxxid(int hyjbxxid, String tablename)
			throws Exception {
		int page = hyjbxxid / Globals.COUNT;
		int count = 0;
		// �õ���Ϣ����
		String sql = "SELECT count(*) FROM " + tablename + "_" + page
				+ " a WHERE a.hyjbxxid=" + hyjbxxid;
		PreparedStatement pstmt = null;
		pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		if (rs.next()) {
			count = rs.getInt(1);
		}
		rs.close();

		// �������ñ�
		sql = "UPDATE pz p SET p.recnum=p.recnum-" + count
				+ " WHERE p.tablename='" + tablename + "_total'";
		pstmt = conn.prepareStatement(sql);
		pstmt.executeUpdate();

		// ɾ��������¼
		sql = "DELETE FROM " + tablename + "_" + page + " WHERE hyjbxxid=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, hyjbxxid);
		pstmt.executeUpdate();

		pstmt.close();
	}

	// �����ñ��е����м�¼��һ��ȡ����.��ǰ��ҳ����ȥ�жϵ�һ���ֶε�ֵ.Ȼ������ʾ��Ӧ�ļ�¼��Ϣ
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

	public void updateNum(String string) {
		PreparedStatement pstmt = null;
		conn = DataBase.getConnection();
		String sql = "UPDATE pz p SET p.recnum=p.recnum+1,p.max_count=p.max_count+1 WHERE p.tablename='"
				+ string + "'";
		//sql = "UPDATE pz p SET p.recnum=" + track[0] + ",p.max_count=" + track[1] + " WHERE p.tablename='"
		//		+ tablename + "'";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			//pstmt.close();
			DataBase.closeCon(conn);
		}
		
	}
}
