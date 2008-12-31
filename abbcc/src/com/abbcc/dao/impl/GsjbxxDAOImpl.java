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

import com.abbcc.dao.GsjbxxDAO;
import com.abbcc.factory.Globals;
import com.abbcc.factory.PubAbbcc;
import com.abbcc.pojo.Gsjbxx;

public class GsjbxxDAOImpl extends BaseDaoImpl implements GsjbxxDAO {
	private static final Log log = LogFactory.getLog(HyjbxxDAOImpl.class);
	public static final String HYJBXXID = "hyjbxxid";
	private static int count = 0;
	private static ResultSet rs = null;
	private static int hid = 0;
	private static int page = 0;
	private static String sql = null;
	private static PubAbbcc pa = null;

	public GsjbxxDAOImpl() {
		pa = new PubAbbcc();
	}

	/* 
	 *  @see 插入公司基本信息
	 */
	public int add(Gsjbxx gsjbxx) { 
		log.debug("saving Gsjbxx instance");
		int flag = 0;
		
		int[] track = pa.updateRecNum("gsjbxx");
		pa.updateNum("gsjbxx");
		
		int count = track[0];
		int maxCount = track[1];		//最大的ID
		page = count / Globals.COUNT;
		Session session = getHibernateTemplate().getSessionFactory().openSession();
		Connection	conn = session.connection();
		
		sql = "INSERT INTO gsjbxx_" + page 
				+ " VALUES(?,?,?,?,?,?,?,?,?,?)";
		
		try{
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, maxCount);
			pstmt.setString(2, gsjbxx.getGsmc());
			pstmt.setString(3, gsjbxx.getQylx());
			pstmt.setString(4, gsjbxx.getJyms());
			pstmt.setString(5, gsjbxx.getGsszd());
			
			pstmt.setString(6, gsjbxx.getJydz());
			pstmt.setString(7, gsjbxx.getZyhy());
			pstmt.setString(8, gsjbxx.getZyfx());
			pstmt.setString(9, gsjbxx.getXsdcp());
			pstmt.setString(10, gsjbxx.getCgdcp());
			flag = pstmt.executeUpdate();
			//pa.updateNum(track[0],track[1],"gsjbxx");
			
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
		return flag;
	}

	// 修改公司基本信息
	public void update(Gsjbxx gsjbxx) {
		hid = gsjbxx.getHyjbxxid();
		page = hid / Globals.COUNT;
		//System.out.println(page);
		sql = "UPDATE gsjbxx_" + page
				+ " h SET h.gsmc=?,h.qylx=?,h.jyms=?,h.gsszd=?,"
				+ "h.jydz=?,h.xsdcp=?,h.cgdcp=?,h.zyhy=? WHERE h.hyjbxxid=?";
		Session session = getHibernateTemplate().getSessionFactory().openSession();
		Connection	conn = session.connection();
		try{
		PreparedStatement pstmt = conn.prepareStatement(sql);
		//pstmt.setInt(1, maxCount);
		pstmt.setString(1, gsjbxx.getGsmc());
		pstmt.setString(2, gsjbxx.getQylx());
		pstmt.setString(3, gsjbxx.getJyms());
		pstmt.setString(4, gsjbxx.getGsszd());
		
		pstmt.setString(5, gsjbxx.getJydz());
		pstmt.setString(6, gsjbxx.getXsdcp());
		pstmt.setString(7, gsjbxx.getCgdcp());
		pstmt.setString(8, gsjbxx.getZyhy());
		pstmt.setLong(9, gsjbxx.getHyjbxxid());
		pstmt.executeUpdate();
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

	// 删除公司基本信息信息
	public void delete(int hyjbxxid) throws Exception {
		pa.deleteRecNum("gsjbxx");
		page = hyjbxxid / Globals.COUNT;
		sql = "DELETE FROM gsjbxx_" + page + " WHERE hyjbxxid=?";
		Session session = getHibernateTemplate().getSessionFactory().openSession();
		Connection	conn = session.connection();
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, hyjbxxid);
		pstmt.executeUpdate();
		pstmt.close();
	}

	// 根据主键查找公司基本信息信息
	public Gsjbxx queryById(int hyjbxxid) throws Exception {
		Gsjbxx g = new Gsjbxx();
		page = hyjbxxid / Globals.COUNT;
		sql = "SELECT * FROM gsjbxx_" + page + " c WHERE c.hyjbxxid=?";
		Session session = getHibernateTemplate().getSessionFactory().openSession();
		Connection	conn = session.connection();
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, hyjbxxid);
		rs = pstmt.executeQuery();
		if (rs.next()) {
			g.setHyjbxxid(rs.getInt(1));
			g.setGsmc(rs.getString(2));
			g.setQylx(rs.getString(3));
			g.setJyms(rs.getString(4));
			g.setGsszd(rs.getString(5));
			
			g.setJydz(rs.getString(6));
			g.setZyhy(rs.getString(7));
			g.setZyfx(rs.getString(8));
			g.setXsdcp(rs.getString(9));
			g.setCgdcp(rs.getString(10));
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
		Session session = getHibernateTemplate().getSessionFactory().openSession();
		Connection	conn = session.connection();
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, hyjbxxid);
		rs = pstmt.executeQuery();
		while (rs.next()) {
			Gsjbxx g = new Gsjbxx();
			g.setHyjbxxid(rs.getInt(1));
			g.setGsmc(rs.getString(2));
			g.setQylx(rs.getString(3));
			g.setJyms(rs.getString(4));
			g.setGsszd(rs.getString(5));
			
			g.setJydz(rs.getString(6));
			g.setZyhy(rs.getString(7));
			g.setZyfx(rs.getString(8));
			g.setXsdcp(rs.getString(9));
			g.setCgdcp(rs.getString(10));
			list.add(g);
		}
		rs.close();
		pstmt.close();
		return list;
	}

	public List getMemberByName(String hyjbxxid) {
		log.debug("finding Hyjbxx instance with property: " + HYJBXXID + ", value: " + hyjbxxid);
		try{
			String queryString = "from Gsjbxx as model where model." + HYJBXXID + "= ?";
			int hyid = Integer.parseInt(hyjbxxid);
			return getHibernateTemplate().find(queryString, hyid);
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	/* 
	 * @see com.abbcc.dao.GsjbxxDAO#getMemberById(int)
	 */
	public List getMemberById(int hyjbxxid) {
		log.debug("finding Hyjbxx instance with property: " + HYJBXXID + ", value: " + hyjbxxid);
		try{
			String queryString = "from Gsjbxx as model where model." + HYJBXXID + "= ?";
			return getHibernateTemplate().find(queryString, hyjbxxid);
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}
}
