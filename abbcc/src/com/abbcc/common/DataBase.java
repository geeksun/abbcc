package com.abbcc.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * @author geeksun
 *	DataBase operate
 */
public class DataBase {
	public synchronized static Connection getConnection(){   
		Connection con = null;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost/abbcc?useUnicode=true&amp;characterEncoding=gbk","root","");
		}catch(Exception e){
			e.printStackTrace();
		}
		return con;
	}
	public static void closeCon(Connection con){
		if(con!=null){
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}finally{
				try {
					con.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
	}
	public static void main(String[] args){
		System.out.println(getConnection());
	}
}
