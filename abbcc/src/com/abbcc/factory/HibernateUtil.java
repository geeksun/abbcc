package com.abbcc.factory;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateUtil {
	private static final SessionFactory sessionFactory; // ����SessionFactory

	// private static Log log = LogFactory.getLog(HibernateUtil.class);
	static {
		try {
			// ͨ��Ĭ�������ļ�hibernate.cfg.xml����SessionFactory
			sessionFactory = new Configuration().configure()
					.buildSessionFactory();
		} catch (Throwable ex) {
			// log.err("��ʼ��SessoinFactoryʧ��!",ex);
			throw new ExceptionInInitializerError(ex);
		}
	}

	// �����ֲ߳̾�����session,��������Hibernate��Session
	public static final ThreadLocal<Session> session = new ThreadLocal<Session>();

	/* 
	 * ��ȡ��ǰ�߳��е�Sessoin @return Session @throws HibernateException
	 */
	public static Session currentSession() throws HibernateException {
		Session s = (Session) session.get();
		// ���Session��û�д�,���¿�һ��Session
		if (s == null) {
			s = sessionFactory.openSession();
			// ���¿���Session���浽�ֲ߳̾�������
			session.set(s);
		}
		return s;
	}

	public static void closeSession() throws HibernateException {
		// ��ȡ�ֲ߳̾�����,��ǿ��ת��Ϊsession����
		Session s = (Session) session.get();
		session.set(null);
		if (s != null)
			s.close();
	}
}