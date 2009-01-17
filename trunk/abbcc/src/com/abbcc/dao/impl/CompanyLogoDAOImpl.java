package com.abbcc.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.Session;

import com.abbcc.dao.CompanyLogoDAO;
import com.abbcc.factory.Globals;
import com.abbcc.pojo.CompanyLogo;

public class CompanyLogoDAOImpl extends BaseDaoImpl implements CompanyLogoDAO {
	private static final Log log = LogFactory.getLog(CompanyLogoDAOImpl.class);
	public static final String HYJBXXID = "hyjbxxid";
	private String tableName = "company_logo";
	
	public int add(CompanyLogo company) {
		log.info("saving CompanyLogo instance");
		long id = company.getHyjbxxid();
		this.updateAndGetPz(tableName);
		
		long page=id/Globals.COUNT;
		
		int sign = 0;							
		Session session = getHibernateTemplate().getSessionFactory().openSession();
		Connection	conn = session.connection();
		String sql = "INSERT INTO company_logo_" + page
				+ " VALUES (?,?,?)";
		
		try{
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setLong(1, id);
		pstmt.setString(2, company.getLogoInfo());		//公司标志信息
		pstmt.setString(3, company.getHandleTime());   	//操作时间 
		
		sign = pstmt.executeUpdate();
		pstmt.close();
		}catch(Exception e){
			log.error("save CompanyLogo instance failed by hyjbxxid:"+id, e);
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

	public CompanyLogo findById(String hyjbxxid) {
		log.info("find CompanyLogo by property hyjbxxid:" + hyjbxxid);
		try{
			int intHyjbxxid = Integer.parseInt(hyjbxxid);
			CompanyLogo company = (CompanyLogo) getHibernateTemplate().get("com.abbcc.pojo.CompanyLogo", Integer.valueOf(intHyjbxxid));
			if(company!=null){
				return company;
			}
		}catch(RuntimeException re){
			log.error("find CompanyLogo by property hyjbxxid failed with hyjbxxid:"+hyjbxxid, re);
			throw re;
		}
		return null;
	}

	public void update(CompanyLogo company) {
		int hid = company.getHyjbxxid();
		int page = hid / Globals.COUNT;
		String sql = "UPDATE company_logo_" + page
				+ " h SET h.logo_info=?,h.handle_time=? WHERE h.hyjbxxid=?";
		Session session = getHibernateTemplate().getSessionFactory().openSession();
		Connection	conn = session.connection();
		try{
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, company.getLogoInfo());
		pstmt.setString(2, company.getHandleTime());
		pstmt.setLong(3, company.getHyjbxxid());
		
		pstmt.executeUpdate();
		pstmt.close();
		}catch(Exception e){
			log.error("update company_logo failed with hyjbxxid:"+hid, e);
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
