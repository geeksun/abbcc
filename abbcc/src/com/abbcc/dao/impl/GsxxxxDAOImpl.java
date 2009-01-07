package com.abbcc.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.Session;

import com.abbcc.dao.GsxxxxDAO;
import com.abbcc.factory.Globals;
import com.abbcc.pojo.Gsxxxx;
import com.abbcc.pojo.Pz;

public class GsxxxxDAOImpl extends BaseDaoImpl implements GsxxxxDAO {
	private static final Log log = LogFactory.getLog(GsxxxxDAOImpl.class);
	public static final String HYJBXXID = "hyjbxxid";
	private String tableName = "gsxxxx";

	public GsxxxxDAOImpl() {
	}

	// 插入公司详细信息
	public void add(Gsxxxx gsxxxx) {
		log.debug("saving Gsxxxx instance");
		
		Pz pz= this.updateAndGetPz(tableName);
		long id=pz.getRecnum();  
		long page=id/Globals.COUNT;
		Session session = getHibernateTemplate().getSessionFactory().openSession();
		Connection	conn = session.connection();
		
		String sql = "INSERT INTO gsxxxx_"
				+ page
				+ " VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		try{
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt = conn.prepareStatement(sql);
		pstmt.setLong(1, id);
		pstmt.setString(2, gsxxxx.getGszcd());
		pstmt.setString(3, gsxxxx.getGsclsj());
		pstmt.setString(4, gsxxxx.getFddbr());
		pstmt.setString(5, gsxxxx.getNyye());
		pstmt.setString(6, gsxxxx.getYgrs());
		pstmt.setString(7, gsxxxx.getJypp());
		pstmt.setString(8, gsxxxx.getZczb());
		pstmt.setString(9, gsxxxx.getZykhq());
		pstmt.setString(10, gsxxxx.getZysc());
		pstmt.setString(11, gsxxxx.getNcke());
		pstmt.setString(12, gsxxxx.getNjke());
		pstmt.setString(13, gsxxxx.getKhyh());
		pstmt.setString(14, gsxxxx.getZh());
		pstmt.setString(15, gsxxxx.getOem());
		pstmt.setString(16, gsxxxx.getYfbmrs());
		pstmt.setString(17, gsxxxx.getYcl());
		pstmt.setString(18, gsxxxx.getCfmj());
		pstmt.setString(19, gsxxxx.getZlkz());
		pstmt.setString(20, gsxxxx.getGltxrz());
		pstmt.setString(21, gsxxxx.getGstp());
		pstmt.executeUpdate();
		
		this.updateTableCount(tableName);
		log.debug("save successful");
		pstmt.close();
	}catch(Exception e){
		log.error("save failed", e);
		e.printStackTrace();
	}finally{
		try {
			conn.close();
			session.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	}

	// 修改公司详细信息
	public void update(Gsxxxx gsxxxx) {
		int hid = gsxxxx.getHyjbxxid();
		int page = hid / Globals.COUNT;
		String sql = "UPDATE gsxxxx_" + page
				+ " h SET h.gszcd=?,h.gsclsj=?,h.fddbr=?,h.nyye=?,"
				+ "h.ygrs=?,h.jypp=?,h.zczb=?,h.zykhq=?,h.zysc=?,"
				+ "h.ncke=?,h.njke=?,h.khyh=?,h.zh=?,h.oem=?, "
				+ "h.yfbmrs=?,h.ycl=?,h.cfmj=?,h.zlkz=?,h.gltxrz=?, "
				+ "h.gstp=? WHERE h.hyjbxxid=?";
		Session session = getHibernateTemplate().getSessionFactory().openSession();
		Connection	conn = session.connection();
		try{
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, gsxxxx.getGszcd());
		pstmt.setString(2, gsxxxx.getGsclsj());
		pstmt.setString(3, gsxxxx.getFddbr());
		pstmt.setString(4, gsxxxx.getNyye());
		pstmt.setString(5, gsxxxx.getYgrs());
		pstmt.setString(6, gsxxxx.getJypp());
		pstmt.setString(7, gsxxxx.getZczb());
		pstmt.setString(8, gsxxxx.getZykhq());
		pstmt.setString(9, gsxxxx.getZysc());
		pstmt.setString(10, gsxxxx.getNcke());
		pstmt.setString(11, gsxxxx.getNjke());
		pstmt.setString(12, gsxxxx.getKhyh());
		pstmt.setString(13, gsxxxx.getZh());
		pstmt.setString(14, gsxxxx.getOem());
		pstmt.setString(15, gsxxxx.getYfbmrs());
		pstmt.setString(16, gsxxxx.getYcl());
		pstmt.setString(17, gsxxxx.getCfmj());
		pstmt.setString(18, gsxxxx.getZlkz());
		pstmt.setString(19, gsxxxx.getGltxrz());
		pstmt.setString(20, gsxxxx.getGstp());
		pstmt.setInt(21, gsxxxx.getHyjbxxid());
		
		pstmt.executeUpdate();
		pstmt.close();
		}catch(Exception e){
			log.error("update failed", e);
			e.printStackTrace();
		}finally{
			try {
				conn.close();
				session.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

	// 删除公司详细信息
	public void delete(int hyjbxxid) throws Exception {
		//pa.deleteRecNum("gsxxxx");
		int page = hyjbxxid / Globals.COUNT;
		String sql = "DELETE FROM gsxxxx_" + page + " WHERE hyjbxxid=?";
		Session session = getHibernateTemplate().getSessionFactory().openSession();
		Connection	conn = session.connection();
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, hyjbxxid);
		pstmt.executeUpdate();
		pstmt.close();
	}

	// 根据主键查找公司详细信息
	public Gsxxxx queryById(int hyjbxxid) throws Exception {
		Gsxxxx g = new Gsxxxx();
		int page = hyjbxxid / Globals.COUNT;
		String sql = "SELECT * FROM gsxxxx_" + page + " c WHERE c.hyjbxxid=?";
		Session session = getHibernateTemplate().getSessionFactory().openSession();
		Connection	conn = session.connection();
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, hyjbxxid);
		ResultSet rs = pstmt.executeQuery();
		if (rs.next()) {
			g.setHyjbxxid(rs.getInt(1));
			g.setGszcd(rs.getString(2));
			g.setGsclsj(rs.getString(3));
			g.setFddbr(rs.getString(4));
			g.setNyye(rs.getString(5));
			g.setYgrs(rs.getString(6));
			g.setJypp(rs.getString(7));
			g.setZczb(rs.getString(8));
			g.setZykhq(rs.getString(9));
			g.setZysc(rs.getString(10));
			g.setNcke(rs.getString(11));
			g.setNjke(rs.getString(12));
			g.setKhyh(rs.getString(13));
			g.setZh(rs.getString(14));
			g.setOem(rs.getString(15));
			g.setYfbmrs(rs.getString(16));
			g.setYcl(rs.getString(17));
			g.setCfmj(rs.getString(18));
			g.setZlkz(rs.getString(19));
			g.setGltxrz(rs.getString(20));
			g.setGstp(rs.getString(21));
		}
		rs.close();
		pstmt.close();
		return g;
	}

	// 根据时间排列显示所有未审核的公司详细信息
	public List queryAll(int hyjbxxid, int currentPage, int lineSize)
			throws Exception {
		int page1 = 0;
		int page = hyjbxxid / Globals.COUNT;
		//int page = count / Globals.COUNT;
		List<Gsxxxx> list = new ArrayList<Gsxxxx>();
		//page1 = page - 1;

		String sql = "SELECT * FROM gsxxxx_" + page + " a UNION SELECT * FROM gsxxxx_"
				+ page1 + " b ORDER BY hyjbxxid DESC LIMIT "
				+ (currentPage - 1) * lineSize + "," + lineSize;
		
		Session session = getHibernateTemplate().getSessionFactory().openSession();
		Connection	conn = session.connection();
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, hyjbxxid);
		ResultSet rs = pstmt.executeQuery();
		while (rs.next()) {
			Gsxxxx g = new Gsxxxx();
			g.setHyjbxxid(rs.getInt(1));
			g.setGszcd(rs.getString(2));
			g.setGsclsj(rs.getString(3));
			g.setFddbr(rs.getString(4));
			g.setNyye(rs.getString(5));
			g.setYgrs(rs.getString(6));
			g.setJypp(rs.getString(7));
			g.setZczb(rs.getString(8));
			g.setZykhq(rs.getString(9));
			g.setZysc(rs.getString(10));
			g.setNcke(rs.getString(11));
			g.setNjke(rs.getString(12));
			g.setKhyh(rs.getString(13));
			g.setZh(rs.getString(14));
			g.setOem(rs.getString(15));
			g.setYfbmrs(rs.getString(16));
			g.setYcl(rs.getString(17));
			g.setCfmj(rs.getString(18));
			g.setZlkz(rs.getString(19));
			g.setGltxrz(rs.getString(20));
			g.setGstp(rs.getString(21));
			list.add(g);
		}
		rs.close();
		pstmt.close();
		return list;
	}

	public Gsxxxx getGsxxxxById(String hyjbxxid) {
		log.debug("find Gsxxxx  by  property hyjbxxid:" + hyjbxxid);
		try{
			return (Gsxxxx)getHibernateTemplate().get("com.abbcc.pojo.Gsxxxx", new Integer(hyjbxxid));
		}catch(RuntimeException re){
			log.error("find Gsxxxx by property hyjbxxid failed", re);
			throw re;
		}
	}
}
