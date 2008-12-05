package com.abbcc.factory;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateUtil {
	private static final SessionFactory sessionFactory; // 定义SessionFactory

	// private static Log log = LogFactory.getLog(HibernateUtil.class);
	static {
		try {
			// 通过默认配置文件hibernate.cfg.xml创建SessionFactory
			sessionFactory = new Configuration().configure()
					.buildSessionFactory();
		} catch (Throwable ex) {
			// log.err("初始化SessoinFactory失败!",ex);
			throw new ExceptionInInitializerError(ex);
		}
	}

	// 创建线程局部变量session,用来保存Hibernate的Session
	public static final ThreadLocal<Session> session = new ThreadLocal<Session>();

	/* 
	 * 获取当前线程中的Sessoin @return Session @throws HibernateException
	 */
	public static Session currentSession() throws HibernateException {
		Session s = (Session) session.get();
		// 如果Session还没有打开,则新开一个Session
		if (s == null) {
			s = sessionFactory.openSession();
			// 将新开的Session保存到线程局部变量中
			session.set(s);
		}
		return s;
	}

	public static void closeSession() throws HibernateException {
		// 获取线程局部变量,并强制转换为session类型
		Session s = (Session) session.get();
		session.set(null);
		if (s != null)
			s.close();
	}
}