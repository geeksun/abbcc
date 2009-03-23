package com.abbcc.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.Session;

import com.abbcc.dao.HonorDAO;
import com.abbcc.factory.Globals;
import com.abbcc.pojo.Honor;

public class HonorDaoImpl extends BaseDaoImpl implements HonorDAO {
	private static final Log log = LogFactory.getLog(HonorDaoImpl.class);
	public static final String HYJBXXID = "hyjbxxid";
	private String tableName = "honor";

	/* 
	 * @see 添加公司荣誉证书信息
	 *  用分表
	 */
	public int add(Honor honor) {
		log.info("saving Honor instance");
		long id = honor.getHyjbxxid();
		this.updateAndGetPz(tableName);
		
		long page=id/Globals.COUNT;
		
		int sign = 0;							
		Session session = getHibernateTemplate().getSessionFactory().openSession();
		Connection	conn = session.connection();
		String sql = "INSERT INTO honor_" + page
				+ " VALUES (?,?,?)";
		
		try{
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setLong(1, id);
		pstmt.setString(2, honor.getHonorInfo());		//公司荣誉信息
		pstmt.setString(3, honor.getCreateTime());   	//操作时间 
		
		sign = pstmt.executeUpdate();
		
		pstmt.close();
		}catch(Exception e){
			log.error("save Honor instance failed by hyjbxxid:"+id, e);
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

	/* 
	 * @see 依据主键找出对应的公司荣誉证书信息
	 */
	public Honor findById(String hyjbxxid) {
		log.info("find Honor by property hyjbxxid:" + hyjbxxid);
		try{
			int intHyjbxxid = Integer.parseInt(hyjbxxid);
			Object obj = getHibernateTemplate().get("com.abbcc.pojo.Honor", Integer.valueOf(intHyjbxxid));
			if(obj!=null){
				Honor honor = (Honor) obj;
				return honor;
			}
		}catch(RuntimeException re){
			log.error("find Honor by property hyjbxxid failed with hyjbxxid:"+hyjbxxid, re);
			throw re;
		}
		return null;
	}

	/* 
	 * @see 更新公司荣誉信息
	 */
	public void update(Honor honor) {
		int hid = honor.getHyjbxxid();
		int page = hid / Globals.COUNT;
		String sql = "UPDATE honor_" + page
				+ " h SET h.honor_info=?,h.create_time=? WHERE h.hyjbxxid=?";
		Session session = getHibernateTemplate().getSessionFactory().openSession();
		Connection	conn = session.connection();
		try{
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, honor.getHonorInfo());
		pstmt.setString(2, honor.getCreateTime());
		pstmt.setLong(3, honor.getHyjbxxid());
		
		pstmt.executeUpdate();
		pstmt.close();
		}catch(Exception e){
			log.error("update honor failed with hyjbxxid:"+hid, e);
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
