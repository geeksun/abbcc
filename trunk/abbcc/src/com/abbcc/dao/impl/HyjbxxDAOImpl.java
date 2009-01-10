package com.abbcc.dao.impl;

import java.util.List;
import java.sql.ResultSet;
import java.sql.Connection;
import java.util.ArrayList;
import java.sql.SQLException;
import org.hibernate.Session;
import java.sql.PreparedStatement;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.abbcc.pojo.Hyjbxx;
import com.abbcc.pojo.Pz;
import com.abbcc.dao.HyjbxxDAO;
import com.abbcc.factory.Globals;
import com.abbcc.common.AppConstants;
 
public class HyjbxxDAOImpl extends BaseDaoImpl  implements HyjbxxDAO {
	private static final Log log = LogFactory.getLog(HyjbxxDAOImpl.class);
	public static final String HYDLM = "hydlm";
	public static final String HYJBXXID = "hyjbxxid";
	private String tableName = "hyjbxx";

	/* 
	 *  插入会员资料 
	 *  count 表的总记录
	 *  page  判断应该第几个表  
	 *  先更新 hyjbxx 再更新 pz 表
	 */
	public int add(Hyjbxx hyjbxx) { 
		log.debug("saving Hyjbxx instance");
		Pz pz= this.updateAndGetPz(tableName);
		long id=pz.getRecnum();  
		long page=id/Globals.COUNT;
		
		int init = 0;					//  判断 sql 是否执行
		Session session = getHibernateTemplate().getSessionFactory().openSession();
		Connection	conn = session.connection();
		String sql = "INSERT INTO hyjbxx_" + page
				+ " VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		
		try{
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setLong(1, id);
		pstmt.setString(2, hyjbxx.getHydlm());
		pstmt.setString(3, hyjbxx.getMm());
		pstmt.setString(4, hyjbxx.getMmtswt());
		pstmt.setString(5, hyjbxx.getMmtsda());
		pstmt.setString(6, hyjbxx.getZsxm());
		pstmt.setString(7, hyjbxx.getXb());
		pstmt.setString(8, hyjbxx.getDzyx());		//  email->8
		pstmt.setString(9, hyjbxx.getGddh());
		pstmt.setString(10, hyjbxx.getCz());
		pstmt.setString(11, hyjbxx.getSj());
		pstmt.setString(12, hyjbxx.getMemberType());		//   用户类型
		pstmt.setString(13, hyjbxx.getSfyx());		//   是否有效
		pstmt.setString(14, hyjbxx.getScsj());		//   删除时间 -> 14
		
		pstmt.setString(15, hyjbxx.getGslx());		//   公司类型
		pstmt.setString(16, hyjbxx.getGsmc());
		pstmt.setString(17, hyjbxx.getGsszd());
		pstmt.setString(18, hyjbxx.getJydz());
		pstmt.setString(19, hyjbxx.getZyhy());		//   主营行业
		pstmt.setString(20, hyjbxx.getRegistTime());		//   注册时间 -> 20
		
		init = pstmt.executeUpdate();
		//pa.updateNum(track[0],track[1],"hyjbxx");
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
		return init;
	}

	// 修改会员基本信息
	public void update(Hyjbxx hyjbxx) {
		int page = hyjbxx.getHyjbxxid() / Globals.COUNT;
		Session session = getHibernateTemplate().getSessionFactory().openSession();
		Connection	conn = session.connection();
		String sql = "UPDATE hyjbxx_"
				+ page
				+ " h SET h.zsxm=?,h.gddh=?,h.gsszd=?,h.dzyx=? WHERE h.hyjbxxid=?";
		try{
		PreparedStatement pstmt = conn.prepareStatement(sql);
		//System.out.println(hyjbxx.getGddh());
		pstmt.setString(1, hyjbxx.getZsxm());
		pstmt.setString(2, hyjbxx.getGddh());
		pstmt.setString(3, hyjbxx.getGsszd());
		pstmt.setString(4, hyjbxx.getDzyx());
		pstmt.setLong(5, hyjbxx.getHyjbxxid());
		pstmt.executeUpdate();
		}catch(Exception e){
			log.error("save failed", e);
			e.printStackTrace();
		}finally{
			try {
				conn.close();
				session.close();
			} catch (SQLException e) {
				log.info("session can't closed!");
				e.printStackTrace();
			}
		}
	}

	// 删除会员个人资料
	public void delete(int hyjbxxid) throws Exception {
		//pa.deleteRecNum("hyjbxx");
		int count = hyjbxxid / Globals.COUNT;
		String sql = "DELETE FROM hyjbxx_" + count + " WHERE hyjbxxid=?";
		Session session = getHibernateTemplate().getSessionFactory().openSession();
		Connection	conn = session.connection();
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, hyjbxxid);
		pstmt.executeUpdate();
		pstmt.close();

		// 删除各表中与会员ID相关联的记录
		/*pa.deleteByHyjbxxid(hyjbxxid, "cpgqxx");
		pa.deleteByHyjbxxid(hyjbxxid, "dljmsx");
		pa.deleteByHyjbxxid(hyjbxxid, "fwsx");
		pa.deleteByHyjbxxid(hyjbxxid, "gsjbxx");
		pa.deleteByHyjbxxid(hyjbxxid, "gsxxxx");
		pa.deleteByHyjbxxid(hyjbxxid, "hygrzl");
		pa.deleteByHyjbxxid(hyjbxxid, "hygzjl");
		pa.deleteByHyjbxxid(hyjbxxid, "hyjyjl");
		pa.deleteByHyjbxxid(hyjbxxid, "hzsx");
		pa.deleteByHyjbxxid(hyjbxxid, "jghz");
		pa.deleteByHyjbxxid(hyjbxxid, "jytj");
		pa.deleteByHyjbxxid(hyjbxxid, "zpxx");*/
	}

	// 根据主键查找会员个人资料
	public Hyjbxx queryById(int hyjbxxid) throws Exception {
		Hyjbxx h = new Hyjbxx();
		int count = hyjbxxid / Globals.COUNT;
		String sql = "SELECT * FROM hyjbxx_" + count + " h WHERE h.hyjbxxid=?";
		Session session = getHibernateTemplate().getSessionFactory().openSession();
		Connection conn = session.connection();
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, hyjbxxid);
		ResultSet rs = pstmt.executeQuery();
		if (rs.next()) {
			h.setHyjbxxid(rs.getInt(1));
			h.setHydlm(rs.getString(2));
			h.setMm(rs.getString(3));
			h.setMmtswt(rs.getString(4));
			h.setMmtsda(rs.getString(5));
			h.setZsxm(rs.getString(6));
			h.setXb(rs.getString(7));
			h.setDzyx(rs.getString(8));
			h.setGddh(rs.getString(9));
			h.setCz(rs.getString(10));
			h.setSj(rs.getString(11));
			h.setMemberType(rs.getString(12));	//  用户类型
			h.setSfyx(rs.getString(13));
			h.setScsj(rs.getString(14));
		}
		rs.close();
		pstmt.close();
		return h;
	}

	// 根据时间排列 *分页* 显示所有未审核的会员个人资料
	// 这里传入的页数只要按正常的传入1 2 3就可以.不用从0开始计数.
	public List<Hyjbxx> queryAll(int currentPage, int lineSize)
			throws Exception {
		long page1 = 0;
		Pz pz= this.updateAndGetPz(tableName);
		long id=pz.getRecnum();  
		long page=id/Globals.COUNT;
		page1 = page - 1;
		List<Hyjbxx> list = new ArrayList<Hyjbxx>();

		String sql = "SELECT * FROM hyjbxx_" + page + " a UNION SELECT * FROM hyjbxx_"
				+ page1 + " b ORDER BY hyjbxxid DESC LIMIT "
				+ (currentPage - 1) * lineSize + "," + lineSize;
		Session session = getHibernateTemplate().getSessionFactory().openSession();
		Connection conn = session.connection();
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		while (rs.next()) {
			Hyjbxx h = new Hyjbxx();
			h.setHyjbxxid(rs.getInt(1));
			h.setHydlm(rs.getString(2));
			h.setMm(rs.getString(3));
			h.setMmtswt(rs.getString(4));
			h.setMmtsda(rs.getString(5));
			h.setZsxm(rs.getString(6));
			h.setXb(rs.getString(7));
			h.setDzyx(rs.getString(8));
			h.setGddh(rs.getString(9));
			h.setCz(rs.getString(10));
			h.setSj(rs.getString(11));
			h.setMemberType(rs.getString(12));	//  用户类型
			h.setSfyx(rs.getString(13));
			h.setScsj(rs.getString(14));
			list.add(h);
		}
		rs.close();
		pstmt.close();
		return list;
	}

	public int findByProperty(String name, String pass) {
		log.debug("find instance by member name and password");
		String sql = "select h.mm from Hyjbxx h where h.hydlm = ?";
		List list = getHibernateTemplate().find(sql,name);
		if(list.size()==1){
			String mm = (String) list.get(0);
			if(mm.equals(pass)){
				log.debug("find success");
				return AppConstants.validate;
			}
		}
		log.debug("find fail");
		return AppConstants.invalidate;
	}

	public List findByName(String name) {
		log.debug("find " + HYDLM + " by member register name:" + name);
		try{
			String queryString = "select h.hydlm from Hyjbxx h where h." + HYDLM + "= ?";
			return getHibernateTemplate().find(queryString,name);
		}catch(RuntimeException re){
			log.error("find by property name failed", re);
			throw re;
		} 
	}

	public String getIdByName(String hydlm) {
		log.debug("find " + HYJBXXID + " by property hydlm:" + hydlm);
		try{
			String queryString = "select h.hyjbxxid from Hyjbxx h where h."+ HYDLM + "= ?";
			List list = getHibernateTemplate().find(queryString,hydlm);
			if(list.size()==1){
				String hyjbxxid = ((Integer) list.get(0)).toString();
				return hyjbxxid;
			}
			return AppConstants.EMPTY;
		}catch(RuntimeException re){
			log.error("find " + HYJBXXID + " by property hydlm failed", re);
			throw re;
		}
	}

	/**
	 * @see com.abbcc.dao.HyjbxxDAO#findById(java.lang.String)
	 *  根据主键（hyjbxxid）查找会员基本信息
	 */
	public Hyjbxx findById(String hyjbxxid) {
		log.debug("find Hyjbxx by  property hyjbxxid:" + hyjbxxid);
		try{
			return (Hyjbxx)getHibernateTemplate().get("com.abbcc.pojo.Hyjbxx", new Integer(hyjbxxid));
		}catch(RuntimeException re){
			log.error("find by property hyjbxxid failed", re);
			throw re;
		} 
	}
}
