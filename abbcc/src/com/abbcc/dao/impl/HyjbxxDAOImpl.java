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

import com.abbcc.common.AppConstants;
import com.abbcc.dao.HyjbxxDAO;
import com.abbcc.factory.Globals;
import com.abbcc.factory.PubAbbcc;
import com.abbcc.pojo.Hyjbxx;

public class HyjbxxDAOImpl extends BaseDaoImpl  implements HyjbxxDAO {
	private static final Log log = LogFactory.getLog(HyjbxxDAOImpl.class);
	/*private JdbcTemplate jdbcTemplate;
    public void setJdbcTemplate(JdbcTemplate jdbcTemplate)
    {
        this.jdbcTemplate = jdbcTemplate;
    }*/
	private static HyjbxxDAOImpl hyjbxxdaoimpl = null;
	private static int count = 0;
	private static ResultSet rs = null;
	private static int page = 0;
	private static String sql = null;
	private static PreparedStatement pstmt = null;
	private static PubAbbcc pa = null;
	private static Connection conn = null;
	private Session session = null;
	public HyjbxxDAOImpl() {
		/*session = HibernateUtil.currentSession();			//  marker:del
		session = HibernateSessionFactory.getSession();		//  marker:del
		conn = session.connection();	*/					//  marker:del
		pa = new PubAbbcc();
	}

	public static HyjbxxDAOImpl getInstance() {
		if (hyjbxxdaoimpl == null) {
			hyjbxxdaoimpl = new HyjbxxDAOImpl();
		}
		return hyjbxxdaoimpl;
	}

	/* 
	 *  插入会员资料 20 items
	 *  count 表的计数
	 *  page  判断应该第几个表  
	 */
	public int insert(Hyjbxx hyjbxx) { 
		log.debug("saving Hyjbxx instance");
		count = pa.updateRecNum("hyjbxx");
		page = count / Globals.COUNT;
		int init = 0;					//  判断 sql 是否执行
		Session session = getHibernateTemplate().getSessionFactory().openSession();
		//System.out.println("spring transfer session: "+session);
		
		if(conn==null)
			conn = session.connection();
		sql = "INSERT INTO hyjbxx_" + page
				+ " VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		
		try{
		pstmt = conn.prepareStatement(sql);
		
		pstmt.setInt(1, count);
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
		log.debug("save successful");
		System.out.println("sql:"+sql);
		pstmt.close();
		}catch(Exception e){
			log.error("save failed", e);
			e.printStackTrace();
		}finally{
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		session.close();
		return init;
	}

	// 修改会员个人资料
	public void update(Hyjbxx hyjbxx) throws Exception {
		count = hyjbxx.getHyjbxxid() / Globals.COUNT;
		sql = "UPDATE hyjbxx_"
				+ count
				+ " h SET h.hydlm=?,h.mm=?,h.mmtswt=?,h.mmtsda=?,h.zsxm=?,h.xb=?,h.dzyx=?,h.gddh=?,h.cz=?,h.sj=?,h.sqsj=?,h.sfyx=?,h.scsj=? WHERE h.hyjbxxid=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, hyjbxx.getHydlm());
		pstmt.setString(2, hyjbxx.getMm());
		pstmt.setString(3, hyjbxx.getMmtswt());
		pstmt.setString(4, hyjbxx.getMmtsda());
		pstmt.setString(5, hyjbxx.getZsxm());
		pstmt.setString(6, hyjbxx.getXb());
		pstmt.setString(7, hyjbxx.getDzyx());
		pstmt.setString(8, hyjbxx.getGddh());
		pstmt.setString(9, hyjbxx.getCz());
		pstmt.setString(10, hyjbxx.getSj());
		pstmt.setString(11, hyjbxx.getMemberType());	//  用户类型
		pstmt.setString(12, hyjbxx.getSfyx());
		pstmt.setString(13, hyjbxx.getScsj());
		pstmt.setInt(14, hyjbxx.getHyjbxxid());
		pstmt.executeUpdate();
		pstmt.close();
	}

	// 删除会员个人资料
	public void delete(int hyjbxxid) throws Exception {
		pa.deleteRecNum("hyjbxx");
		count = hyjbxxid / Globals.COUNT;
		sql = "DELETE FROM hyjbxx_" + count + " WHERE hyjbxxid=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, hyjbxxid);
		pstmt.executeUpdate();
		pstmt.close();

		// 删除各表中与会员ID相关联的记录
		pa.deleteByHyjbxxid(hyjbxxid, "cpgqxx");
		pa.deleteByHyjbxxid(hyjbxxid, "dljmsx");
		pa.deleteByHyjbxxid(hyjbxxid, "fwsx");
		pa.deleteByHyjbxxid(hyjbxxid, "gsjbxx");
		pa.deleteByHyjbxxid(hyjbxxid, "gsxxxx");
		pa.deleteByHyjbxxid(hyjbxxid, "hygrzl");
		pa.deleteByHyjbxxid(hyjbxxid, "hygzjl");
		// pa.deleteByHyjbxxid(hyjbxxid, "hyjbxx");
		pa.deleteByHyjbxxid(hyjbxxid, "hyjyjl");
		pa.deleteByHyjbxxid(hyjbxxid, "hzsx");
		pa.deleteByHyjbxxid(hyjbxxid, "jghz");
		pa.deleteByHyjbxxid(hyjbxxid, "jytj");
		pa.deleteByHyjbxxid(hyjbxxid, "zpxx");
	}

	// 根据主键查找会员个人资料
	public Hyjbxx queryById(int hyjbxxid) throws Exception {
		Hyjbxx h = new Hyjbxx();
		count = hyjbxxid / Globals.COUNT;
		sql = "SELECT * FROM hyjbxx_" + count + " h WHERE h.hyjbxxid=?";
		pstmt = conn.prepareStatement(sql);
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

		int page1 = 0;
		count = pa.getRecNum("hyjbxx");
		page = count / Globals.COUNT;
		page1 = page - 1;

		List<Hyjbxx> list = new ArrayList<Hyjbxx>();

		sql = "SELECT * FROM hyjbxx_" + page + " a UNION SELECT * FROM hyjbxx_"
				+ page1 + " b ORDER BY hyjbxxid DESC LIMIT "
				+ (currentPage - 1) * lineSize + "," + lineSize;
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
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

	/* 
	 *  如何查全部分区表？
	 */
	/*public List findByName(String name) {
		String sql = "select h.hydlm from Hyjbxx h where h.hydlm = ?";
		List list = jdbcTemplate.
	}*/
	/*public int findByName(String name) {
		//session = HibernateSessionFactory.getSession();
		int init = 0;
		Connection conn = DataBase.getConnection();
		String sql = "select h.hydlm from Hyjbxx h where h.hydlm = ?";
		PreparedStatement pst;
		try {
			pst = conn.prepareStatement(sql);
			pst.setString(1, name);
			ResultSet rs = pst.executeQuery();
			while(rs.next()){
				init = 1;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		//session.close();
		System.out.println(init);
		return init;
	}*/

	public int findByProperty(String name, String pass) {
		/*String hql = "select h.mm from Hyjbxx h where h.hydlm = ?";
		session = HibernateSessionFactory.getSession();
		Query query = session.createQuery(hql);
		query.setString(0, name);
		//query.setDate(arg0, arg1);
		List list = query.list();    
		//System.out.println("list: "+list.size()); 
		if(list.size()==1){
			String mm = (String) list.get(0);
			if(mm.equals(pass)){
				return true;
			}
			return false;
		}
		return false;*/
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
	public void save(Hyjbxx hy){
		log.debug("save Hyjbxx instance");
		session.saveOrUpdate(hy);
	}

	public List<Hyjbxx> findByName(String name) {
		log.debug("find instance by member register name");
		String sql = "select h.hydlm from Hyjbxx h where h.hydlm = ?";
		List list = getHibernateTemplate().find(sql,name);
		//System.out.println("hyjbxxdaoimpl.list().size():  "+list.size());
		return list;
	}
}
