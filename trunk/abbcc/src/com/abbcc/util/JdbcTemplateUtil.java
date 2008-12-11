package com.abbcc.util;

import java.util.List;
import java.util.Map;

import org.springframework.jdbc.core.JdbcTemplate;

import com.abbcc.servlet.StartServlet;

public class JdbcTemplateUtil {
	public static Map<String, Object>  getObjectBySelectSql(String sql) {
		JdbcTemplate jdbc = (JdbcTemplate) StartServlet.getBean("jdbcTemplate");
		List list = jdbc.queryForList(sql);
		if (list != null && list.size() > 0) {
			return (Map<String, Object>) list.get(0);
		}
		return null;
	}
	public static Map<String, Object> getObjectBySelectSql(String sql,Object  param) {
		JdbcTemplate jdbc = (JdbcTemplate) StartServlet.getBean("jdbcTemplate");
		List list = jdbc.queryForList(sql,new Object[]{param}); 
		if (list != null && list.size() > 0) {
			return (Map<String, Object>) list.get(0);
		}
		return null;
	}

	public static List getProductListBySelectSql(String sql) {
		JdbcTemplate jdbc = (JdbcTemplate) StartServlet.getBean("jdbcTemplate");
		return jdbc.queryForList(sql);
	}

	public static List getProductListBySelectSql(String sql,Object[]  param) {
		JdbcTemplate jdbc = (JdbcTemplate) StartServlet.getBean("jdbcTemplate");
		return jdbc.queryForList(sql,param);
	}
	public static void updateObject(String sql) {
		JdbcTemplate jdbc = (JdbcTemplate) StartServlet.getBean("jdbcTemplate");
		jdbc.update(sql);
	}
	public static void updateObject(String sql,Object[]  param) {
		JdbcTemplate jdbc = (JdbcTemplate) StartServlet.getBean("jdbcTemplate"); 
		jdbc.update(sql,param);
	}
	 
	

}
