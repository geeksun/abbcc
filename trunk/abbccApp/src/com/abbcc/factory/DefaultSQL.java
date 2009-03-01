package com.abbcc.factory;

import java.sql.Connection;

public class DefaultSQL {
	private static Connection conn;

	public DefaultSQL() {
	}

	public static Connection getConnInstance() {
		conn = HibernateUtil.currentSession().connection();
		return conn;
	}

//	 SQLÓïÑÔµÄ²Ù×÷
//	 public void AddHBBySql(Hb user) {
//	 try {
//	 PreparedStatement ps = conn.prepareStatement("");
//	 } catch (SQLException e) {
//	 e.printStackTrace();
//	 }
//	 }
}
