package com.abbcc.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;

import com.abbcc.common.AppConstants;
import com.abbcc.common.TypeChange;
import com.abbcc.dao.HyjbxxDAO;
import com.abbcc.factory.Globals;
import com.abbcc.pojo.Hyjbxx;
import com.abbcc.pojo.Pz;
  
public class HyjbxxDAOImpl extends BaseDaoImpl  implements HyjbxxDAO {
	private static final Log log = LogFactory.getLog(HyjbxxDAOImpl.class);
	public static final String HYDLM = "hydlm";
	public static final String MM = "mm";
	public static final String HYJBXXID = "hyjbxxid";
	private String tableName = "hyjbxx";

	/* 
	 *  �����Ա���� 
	 *  count �����ܼ�¼
	 *  page  �ж�Ӧ�õڼ�����  
	 *  �ȸ��� hyjbxx �ٸ��� pz ��
	 */
	public int add(Hyjbxx hyjbxx) { 
		Pz pz= this.updateAndGetPz(tableName);
		long id=pz.getRecnum();  
		long page=id/Globals.COUNT;
		
		int init = 0;					//  �ж� sql �Ƿ�ִ��
		Session session = getHibernateTemplate().getSessionFactory().openSession();
		Connection	conn = session.connection();
		String sql = "INSERT INTO hyjbxx_" + page
				+ " VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		
		try{
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setLong(1, id);
		pstmt.setString(2, hyjbxx.getHydlm());
		pstmt.setString(3, hyjbxx.getMm());
		pstmt.setString(4, hyjbxx.getMmtswt());
		pstmt.setString(5, hyjbxx.getMmtsda());
		pstmt.setString(6, hyjbxx.getZsxm());
		pstmt.setString(7, hyjbxx.getXb());
		
		pstmt.setString(8, hyjbxx.getDzyx());		//email->8
		pstmt.setString(9, hyjbxx.getGddh());
		pstmt.setString(10, hyjbxx.getCz());
		pstmt.setString(11, hyjbxx.getSj());
		pstmt.setString(12, hyjbxx.getMemberType());	//�û�����  0����ѻ�Ա  1���շѻ�Ա
		pstmt.setString(13, hyjbxx.getSfyx());		//�Ƿ���Ч  0����Ч  1����Ч
		
		//System.out.println(hyjbxx.getScsj()+"//"+hyjbxx.getRegistTime());
		pstmt.setDate(14, TypeChange.dateToDate(hyjbxx.getScsj()));	  // ɾ��ʱ�䣨��ע��ʱ�䵽��ʱ�����Ч�� -> 14
		pstmt.setString(15, hyjbxx.getGslx());		//��˾����
		pstmt.setString(16, hyjbxx.getGsmc());
		pstmt.setString(17, hyjbxx.getGsszd());
		pstmt.setString(18, hyjbxx.getJydz());
		pstmt.setString(19, hyjbxx.getZyhy());		//��Ӫ��ҵ
		pstmt.setDate(20, TypeChange.dateToDate(hyjbxx.getRegistTime()));		//ע��ʱ�� -> 20
		pstmt.setString(21, hyjbxx.getZw());		//ְλ
		
		init = pstmt.executeUpdate();
		//pa.updateNum(track[0],track[1],"hyjbxx");
		this.updateTableCount(tableName);
		log.info("save Hyjbxx instance successful with hyjbxxid:"+id);
		pstmt.close();
		}catch(Exception e){
			log.error("save Hyjbxx instance failed with hyjbxxid:"+id, e);
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
		return init;
	}

	// �޸Ļ�Ա������Ϣ
	public void update(Hyjbxx hyjbxx) {
		log.info("updating Hyjbxx info");
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
		log.info("updated Hyjbxx info successed");
		}catch(Exception e){
			log.error("update Hyjbxx info failed", e);
			e.printStackTrace();
		}finally{
			try {
				conn.close();
				session.close();
			} catch (SQLException e) {
				log.error("session can't closed!");
				e.printStackTrace();
			}
		}
	}

	// ɾ����Ա��������
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

		// ɾ�����������ԱID������ļ�¼
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

	// �����������һ�Ա��������
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
			h.setMemberType(rs.getString(12));	//  �û�����
			h.setSfyx(rs.getString(13));
			h.setScsj(rs.getDate(14));
		}
		rs.close();
		pstmt.close();
		return h;
	}

	// ����ʱ������ *��ҳ* ��ʾ����δ��˵Ļ�Ա��������
	// ���ﴫ���ҳ��ֻҪ�������Ĵ���1 2 3�Ϳ���.���ô�0��ʼ����.
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
			h.setMemberType(rs.getString(12));	//  �û�����
			h.setSfyx(rs.getString(13));
			h.setScsj(rs.getDate(14));
			list.add(h);
		}
		rs.close();
		pstmt.close();
		return list;
	}

	/**
	 * @see com.abbcc.dao.HyjbxxDAO#findByProperty(java.lang.String, java.lang.String)
	 *  ���ݻ�Ա��¼����������һ�Ա�û�
	 */
	public int findByProperty(String name, String pass) {
		log.info("finding Hyjbxx instance by member hydlm:"+name);
		String sql = "select h.mm from Hyjbxx h where h.hydlm = ?";
		List list = getHibernateTemplate().find(sql,name);
		if(list.size()==1){
			String mm = (String) list.get(0);
			if(mm.equals(pass)){
				return AppConstants.validate;
			}
		}
		log.error("find Hyjbxx instance by member name and password fail");
		return AppConstants.invalidate;
	}

	public List findByName(String name) {
		log.info("find " + HYDLM + " by member register name:" + name);
		try{
			String queryString = "select h.hydlm from Hyjbxx h where h." + HYDLM + "= ?";
			return getHibernateTemplate().find(queryString,name);
		}catch(RuntimeException re){
			log.error("find by property name failed", re);
			throw re;
		} 
	}

	public String getIdByName(String hydlm) {
		log.info("find " + HYJBXXID + " by property hydlm:" + hydlm);
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
	 *  ����������hyjbxxid�����һ�Ա������Ϣ
	 */
	public Hyjbxx findById(String hyjbxxid) {
		log.info("find Hyjbxx by  property hyjbxxid:" + hyjbxxid);
		try{
			int intHyjbxxid = Integer.parseInt(hyjbxxid);
			return (Hyjbxx)getHibernateTemplate().get("com.abbcc.pojo.Hyjbxx", Integer.valueOf(intHyjbxxid));
		}catch(RuntimeException re){
			log.error("find by property hyjbxxid failed", re);
			throw re;
		} 
	}
	
	/**
	 * @param propertyName
	 * @param value
	 * @see ����������������ֵ�ҵ�����
	 */
	public List<Hyjbxx> findByProperty(String propertyName, Object value) {
	      log.info("finding Hyjbxx instance with property: " + propertyName + ", value: " + value);
	      try {
	         String queryString = "from Hyjbxx as model where model." + propertyName + "= ?";
			 return getHibernateTemplate().find(queryString, value);
	      } catch (RuntimeException re) {
	         log.error("find Hyjbxx instance by property name failed", re);
	         throw re;
	      }
	}
	
	/**
	 * @see com.abbcc.dao.HyjbxxDAO#findByPassword(java.lang.Object)
	 *  �����û�������ҳ���Ӧ���û�
	 */
	public List findByPassword(Object password) {
		return findByProperty(MM, password);
	}

	/**
	 * @see ��������Ƿ���û����������
	 */
	public boolean checkPassword(String hyjbxxid, String old_password) {
		log.info("checking password with property: " + HYJBXXID + ", value: " + hyjbxxid);
		try {
			 Hyjbxx member = this.findById(hyjbxxid);
			 if(member!=null){
				 if(old_password.equals(member.getMm())){
					 return AppConstants.ACTUAL;
				 }else{
					 log.error("checked password is not correct with hyjbxxid:"+hyjbxxid);
					 return AppConstants.VIRTUAL;
				 }
			 }
	    } catch (RuntimeException re) {
	         log.error("check password failed with property hyjbxxid:"+hyjbxxid, re);
	         throw re;
	    }
		return AppConstants.VIRTUAL;
	}

	/**
	 * @see �û������޸�
	 */
	public void updatePassword(String hyjbxxid, String new_password) {
		log.info("updating Hyjbxx set new password  by hyjbxxid:"+hyjbxxid);
		int intHyjbxxid = Integer.valueOf(hyjbxxid);
		int page = intHyjbxxid / Globals.COUNT;
		Session session = getHibernateTemplate().getSessionFactory().openSession();
		Connection	conn = session.connection();
		String sql = "UPDATE hyjbxx_"
				+ page
				+ " h SET h.mm=? WHERE h.hyjbxxid=?";
		try{
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, new_password);
		pstmt.setLong(2, intHyjbxxid);
		pstmt.executeUpdate();
		log.info("updated Hyjbxx set new password  by hyjbxxid:"+hyjbxxid+" success");
		}catch(Exception e){
			log.error("update Hyjbxx set new password failed by hyjbxxid:"+hyjbxxid, e);
			e.printStackTrace();
		}finally{
			try {
				conn.close();
				session.close();
			} catch (SQLException e) {
				log.error("session can't usual closed!");
				e.printStackTrace();
			}
		}
	}

	/**
	 * @see �������뱣������
	 */
	public int updateQuestion(String hyjbxxid, String password_question, String password_answer) {
		log.info("updating Hyjbxx instance question and answer with property question:"+password_question
				+ " and password_answer:"+password_answer+" by hyjbxxid:"+hyjbxxid);
		int intHyjbxxid = Integer.valueOf(hyjbxxid);
		int flag = 0;
		int page = intHyjbxxid / Globals.COUNT;
		Session session = getHibernateTemplate().getSessionFactory().openSession();
		Connection	conn = session.connection();
		String sql = "UPDATE hyjbxx_"
				+ page
				+ " h SET h.mmtswt=?,h.mmtsda=? WHERE h.hyjbxxid=?";
		try{
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, password_question);
			pstmt.setString(2, password_answer);
			pstmt.setLong(3, intHyjbxxid);
			flag = pstmt.executeUpdate();
			log.info("updated Hyjbxx instance question and question_answer with property question:"+password_question
					+ " and password_answer:"+password_answer+" by hyjbxxid:"+hyjbxxid+" success");
		}catch(Exception e){
			log.error("update Hyjbxx with property mmtswt:" + password_question + "failed with hyjbxxid:"+hyjbxxid, e);
			e.printStackTrace();
		}finally{
			try {
				conn.close();
				session.close();
			} catch (SQLException e) {
				log.error("session can't usual closed!");
				e.printStackTrace();
			}
		}
		return flag;
	}

	/**
	 * @see  ���ط�ҳ��������
	 */
	public int getTotalRows() {
		int totalRows = getHibernateTemplate().find("from Hyjbxx").size();
		return totalRows;	
	}

	/**
	 * @see return list �����Ѱ���һ�������� Hyjbxx ����
	 */
	public ArrayList getData(final String sql, final int firstRow, final int maxRow) {
		 return  (ArrayList)this.getHibernateTemplate().executeFind( new  HibernateCallback(){
             public  Object doInHibernate(Session session)  throws  SQLException,HibernateException {
               Query q  =  session.createQuery(sql);
               q.setFirstResult(firstRow);
               q.setMaxResults(maxRow);	           
               ArrayList data = (ArrayList) q.list();  

               return  data;  
               }
        });      
	}

	/**
	 * @see ���ע���»�Ա��
	 */
	public void auditRegisterMember(Hyjbxx hyjbxx) {
		int page = hyjbxx.getHyjbxxid() / Globals.COUNT;
		Session session = getHibernateTemplate().getSessionFactory().openSession();
		Connection	conn = session.connection();
		String sql = "UPDATE hyjbxx_"
				+ page
				+ " h SET h.member_type=?,h.scsj=? WHERE h.hyjbxxid=?";
		try{
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, hyjbxx.getMemberType());
		pstmt.setDate(2, TypeChange.dateToDate(hyjbxx.getScsj()));
		pstmt.setLong(3, hyjbxx.getHyjbxxid());
		pstmt.executeUpdate();
		log.info("audited register member successed with hyjbxxid:"+hyjbxx.getHyjbxxid());
		}catch(Exception e){
			log.error("audit register member failed with hyjbxxid:"+hyjbxx.getHyjbxxid(), e);
			e.printStackTrace();
		}finally{
			try {
				conn.close();
				session.close();
			} catch (SQLException e) {
				log.error("session can't closed!");
				e.printStackTrace();
			}
		}
	}	
	
	
}