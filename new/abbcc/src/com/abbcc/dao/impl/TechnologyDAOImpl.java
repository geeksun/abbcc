package com.abbcc.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.Session;

import com.abbcc.dao.TechnologyDAO;
import com.abbcc.factory.Globals;
import com.abbcc.pojo.Technology;

public class TechnologyDAOImpl extends BaseDaoImpl implements TechnologyDAO {
	private static final Log log = LogFactory.getLog(TechnologyDAOImpl.class);
	public static final String HYJBXXID = "hyjbxxid";
	private String tableName = "technology";
	
	public int add(Technology tech) {
		log.info("saving Technology instance");
		long id = tech.getHyjbxxid();
		this.updateAndGetPz(tableName);
		
		long page=id/Globals.COUNT;
		
		int sign = 0;							
		Session session = getHibernateTemplate().getSessionFactory().openSession();
		Connection	conn = session.connection();
		String sql = "INSERT INTO technology_" + page
				+ " VALUES (?,?,?)";
		
		try{
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setLong(1, id);
		pstmt.setString(2, tech.getTechInfo());			//技术实力
		pstmt.setString(3, tech.getHandleTime());   	//操作时间 
		
		sign = pstmt.executeUpdate();
		pstmt.close();
		}catch(Exception e){
			log.error("save Technology instance failed by hyjbxxid:"+id, e);
			e.printStackTrace();
		}finally{
			try {
				conn.close();
				session.close();
			} catch (SQLException e) {
				log.error("session can't closed");
				e.printStackTrace();
			}
		}
		return sign;
	}

	public Technology findById(String hyjbxxid) {
		log.info("find Technology by property hyjbxxid:" + hyjbxxid);
		try{
			int intHyjbxxid = Integer.parseInt(hyjbxxid);
			Technology tech = (Technology) getHibernateTemplate().get("com.abbcc.pojo.Technology", Integer.valueOf(intHyjbxxid));
			if(tech!=null){
				return tech;
			}
		}catch(RuntimeException re){
			log.error("find CompanyLogo by property hyjbxxid failed with hyjbxxid:"+hyjbxxid, re);
			throw re;
		}
		return null;
	}

	public void update(Technology tech) {
		int hid = tech.getHyjbxxid();
		int page = hid / Globals.COUNT;
		String sql = "UPDATE technology_" + page
				+ " h SET h.tech_info=?,h.handle_time=? WHERE h.hyjbxxid=?";
		Session session = getHibernateTemplate().getSessionFactory().openSession();
		Connection	conn = session.connection();
		try{
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, tech.getTechInfo());
		pstmt.setString(2, tech.getHandleTime());
		pstmt.setLong(3, tech.getHyjbxxid());
		
		pstmt.executeUpdate();
		pstmt.close();
		}catch(Exception e){
			log.error("update technology failed with hyjbxxid:"+hid, e);
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

}
