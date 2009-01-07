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
import com.abbcc.factory.HibernateUtil;
import com.abbcc.factory.PubAbbcc;
import com.abbcc.pojo.Gsxxxx;
import com.abbcc.pojo.Hyjbxx;
import com.abbcc.pojo.Pz;

public class GsxxxxDAOImpl extends BaseDaoImpl implements GsxxxxDAO {
	private static final Log log = LogFactory.getLog(GsxxxxDAOImpl.class);
	public static final String HYJBXXID = "hyjbxxid";
	private String tableName = "gsxxxx";

	public GsxxxxDAOImpl() {
	}

	// ���빫˾��ϸ��Ϣ
	public void add(Gsxxxx gsxxxx) {
		log.debug("saving Gsxxxx instance");
		
		Pz pz= this.updateAndGetPz(tableName);
		long id=pz.getRecnum();  
		long page=id/Globals.COUNT;
		Session session = getHibernateTemplate().getSessionFactory().openSession();
		Connection	conn = session.connection();
		
		String sql = "INSERT INTO gsxxxx_"
				+ page
				+ " VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		try{
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt = conn.prepareStatement(sql);
		pstmt.setLong(1, id);
		pstmt.setString(2, gsxxxx.getZycp());
		pstmt.setString(3, gsxxxx.getZyhy());
		pstmt.setString(4, gsxxxx.getJyms());
		pstmt.setString(5, gsxxxx.getQylx());
		pstmt.setString(6, gsxxxx.getGszcd());
		pstmt.setString(7, gsxxxx.getZyjydd());
		pstmt.setString(8, gsxxxx.getGsclsj());
		pstmt.setString(9, gsxxxx.getFddbr());
		pstmt.setString(10, gsxxxx.getNyye());
		pstmt.setString(11, gsxxxx.getYgrs());
		pstmt.setString(12, gsxxxx.getJypp());
		pstmt.setString(13, gsxxxx.getZczb());
		pstmt.setString(14, gsxxxx.getZykhq());
		pstmt.setString(15, gsxxxx.getZysc());
		pstmt.setString(16, gsxxxx.getNcke());
		pstmt.setString(17, gsxxxx.getNjke());
		pstmt.setString(18, gsxxxx.getKhyh());
		pstmt.setString(19, gsxxxx.getZh());
		pstmt.setString(20, gsxxxx.getOem());
		pstmt.setString(21, gsxxxx.getYfbmrs());
		pstmt.setString(22, gsxxxx.getYcl());
		pstmt.setString(23, gsxxxx.getCfmj());
		pstmt.setString(24, gsxxxx.getZlkz());
		pstmt.setString(25, gsxxxx.getGltxrz());
		pstmt.setString(26, gsxxxx.getGsjs());
		pstmt.setString(27, gsxxxx.getGstp());
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

	// �޸Ĺ�˾��ϸ��Ϣ
	public void update(Gsxxxx gsxxxx) throws Exception {
		int hid = gsxxxx.getHyjbxxid();
		int page = hid / Globals.COUNT;
		String sql = "UPDATE gsxxxx_" + page
				+ " h SET h.zycp=?,h.zyhy=?,h.jyms=?,h.qylx=?,"
				+ "h.gszcd=?,h.zyjydd=?,h.gsclsj=?,h.fddbr=?,h.nyye=?,"
				+ "h.ygrs=?,h.jypp=?,h.zczb=?,h.zykhq=?,h.zysc=?,"
				+ "h.ncke=?,h.njke=?,h.khyh=?,h.zh=?,h.oem=?, "
				+ "h.yfbmrs=?,h.ycl=?,h.cfmj=?,h.zlkz=?,h.gltxrz=?, "
				+ "h.gsjs=?,h.gstp=? WHERE h.hyjbxxid=?";
		Session session = getHibernateTemplate().getSessionFactory().openSession();
		Connection	conn = session.connection();
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, gsxxxx.getZycp());
		pstmt.setString(2, gsxxxx.getZyhy());
		pstmt.setString(3, gsxxxx.getJyms());
		pstmt.setString(4, gsxxxx.getQylx());
		pstmt.setString(5, gsxxxx.getGszcd());
		pstmt.setString(6, gsxxxx.getZyjydd());
		pstmt.setString(7, gsxxxx.getGsclsj());
		pstmt.setString(8, gsxxxx.getFddbr());
		pstmt.setString(9, gsxxxx.getNyye());
		pstmt.setString(10, gsxxxx.getYgrs());
		pstmt.setString(11, gsxxxx.getJypp());
		pstmt.setString(12, gsxxxx.getZczb());
		pstmt.setString(13, gsxxxx.getZykhq());
		pstmt.setString(14, gsxxxx.getZysc());
		pstmt.setString(15, gsxxxx.getNcke());
		pstmt.setString(16, gsxxxx.getNjke());
		pstmt.setString(17, gsxxxx.getKhyh());
		pstmt.setString(18, gsxxxx.getZh());
		pstmt.setString(19, gsxxxx.getOem());
		pstmt.setString(20, gsxxxx.getYfbmrs());
		pstmt.setString(21, gsxxxx.getYcl());
		pstmt.setString(22, gsxxxx.getCfmj());
		pstmt.setString(23, gsxxxx.getZlkz());
		pstmt.setString(24, gsxxxx.getGltxrz());
		pstmt.setString(25, gsxxxx.getGsjs());
		pstmt.setString(26, gsxxxx.getGstp());
		pstmt.setInt(27, gsxxxx.getHyjbxxid());
		pstmt.executeUpdate();
		pstmt.close();
	}

	// ɾ����˾��ϸ��Ϣ
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

	// �����������ҹ�˾��ϸ��Ϣ
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
			g.setZycp(rs.getString(2));
			g.setZyhy(rs.getString(3));
			g.setJyms(rs.getString(4));
			g.setQylx(rs.getString(5));
			g.setGszcd(rs.getString(6));
			g.setZyjydd(rs.getString(7));
			g.setGsclsj(rs.getString(8));
			g.setFddbr(rs.getString(9));
			g.setNyye(rs.getString(10));
			g.setYgrs(rs.getString(11));
			g.setJypp(rs.getString(12));
			g.setZczb(rs.getString(13));
			g.setZykhq(rs.getString(14));
			g.setZysc(rs.getString(15));
			g.setNcke(rs.getString(16));
			g.setNjke(rs.getString(17));
			g.setKhyh(rs.getString(18));
			g.setZh(rs.getString(19));
			g.setOem(rs.getString(20));
			g.setYfbmrs(rs.getString(21));
			g.setYcl(rs.getString(22));
			g.setCfmj(rs.getString(23));
			g.setZlkz(rs.getString(24));
			g.setGltxrz(rs.getString(25));
			g.setGsjs(rs.getString(26));
			g.setGstp(rs.getString(27));
		}
		rs.close();
		pstmt.close();
		return g;
	}

	// ����ʱ��������ʾ����δ��˵Ĺ�˾��ϸ��Ϣ
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
			g.setZycp(rs.getString(2));
			g.setZyhy(rs.getString(3));
			g.setJyms(rs.getString(4));
			g.setQylx(rs.getString(5));
			g.setGszcd(rs.getString(6));
			g.setZyjydd(rs.getString(7));
			g.setGsclsj(rs.getString(8));
			g.setFddbr(rs.getString(9));
			g.setNyye(rs.getString(10));
			g.setYgrs(rs.getString(11));
			g.setJypp(rs.getString(12));
			g.setZczb(rs.getString(13));
			g.setZykhq(rs.getString(14));
			g.setZysc(rs.getString(15));
			g.setNcke(rs.getString(16));
			g.setNjke(rs.getString(17));
			g.setKhyh(rs.getString(18));
			g.setZh(rs.getString(19));
			g.setOem(rs.getString(20));
			g.setYfbmrs(rs.getString(21));
			g.setYcl(rs.getString(22));
			g.setCfmj(rs.getString(23));
			g.setZlkz(rs.getString(24));
			g.setGltxrz(rs.getString(25));
			g.setGsjs(rs.getString(26));
			g.setGstp(rs.getString(27));
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
