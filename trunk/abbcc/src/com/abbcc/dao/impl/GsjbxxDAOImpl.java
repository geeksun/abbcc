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
import com.abbcc.factory.HibernateUtil;
import com.abbcc.factory.PubAbbcc;
import com.abbcc.pojo.Gsjbxx;

public class GsjbxxDAOImpl extends BaseDaoImpl implements GsjbxxDAO {
	private static final Log log = LogFactory.getLog(HyjbxxDAOImpl.class);
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
		//session = HibernateUtil.currentSession();
		//conn = session.connection();
		pa = new PubAbbcc();
	}

	public static GsjbxxDAOImpl getInstance() {
		if (gsjbxxdaoimpl == null) {
			gsjbxxdaoimpl = new GsjbxxDAOImpl();
		}
		return gsjbxxdaoimpl;
	}

	/* 
	 *  @see 插入公司基本信息
	 */
	public int insert(Gsjbxx gsjbxx) { 
		log.debug("saving Gsjbxx instance");
		int flag = 0;
		//
		int[] track = pa.updateRecNum("gsjbxx");
		count = track[0];
		int maxCount = track[1];		//最大的ID
		page = count / Globals.COUNT;
		/*hid = gsjbxx.getHyjbxxid();
		System.out.println("hyjbxxid:"+hid);
		page = hid / Globals.COUNT;*/
		Session session = getHibernateTemplate().getSessionFactory().openSession();
		Connection	conn = session.connection();
		
		sql = "INSERT INTO gsjbxx_" + page 
				+ " VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?)";
		
		try{
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, maxCount);
			pstmt.setString(2, gsjbxx.getGslx());
			pstmt.setString(3, gsjbxx.getGsmc());
			pstmt.setString(4, gsjbxx.getGsszd());
			pstmt.setString(5, gsjbxx.getEnCorpName());
			
			pstmt.setString(6, gsjbxx.getJydz());
			pstmt.setString(7, gsjbxx.getZyhy());
			pstmt.setString(8, gsjbxx.getZyfx());
			pstmt.setString(9, gsjbxx.getXsdcp());
			pstmt.setString(10, gsjbxx.getCgdcp());
			pstmt.executeUpdate();
			
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
		pstmt.setString(3, gsjbxx.getGsszd());
		pstmt.setString(4, gsjbxx.getEnCorpName());
		
		pstmt.setString(5, gsjbxx.getJydz());
		pstmt.setString(6, gsjbxx.getZyhy());
		pstmt.setString(7, gsjbxx.getZyfx());
		pstmt.setString(8, gsjbxx.getXsdcp());
		pstmt.setString(9, gsjbxx.getCgdcp());
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
			g.setGsszd(rs.getString(4));
			
			g.setJydz(rs.getString(5));
			g.setZyhy(rs.getString(6));
			g.setZyfx(rs.getString(7));
			g.setXsdcp(rs.getString(8));
			g.setCgdcp(rs.getString(9));
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
			g.setGsszd(rs.getString(4));
			
			g.setJydz(rs.getString(5));
			g.setZyhy(rs.getString(6));
			g.setZyfx(rs.getString(7));
			g.setXsdcp(rs.getString(8));
			g.setCgdcp(rs.getString(9));
			list.add(g);
		}
		rs.close();
		pstmt.close();
		return list;
	}
}
