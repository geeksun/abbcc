package com.abbcc.dao.impl;

import org.springframework.jdbc.core.JdbcTemplate;

import com.abbcc.dao.ProductDAO;
import com.abbcc.servlet.StattServlet;
import com.abbcc.util.Product;

public class ProductDAOImpl implements ProductDAO  {

	public void add(Product product) { 
		JdbcTemplate jdbc=(JdbcTemplate)StattServlet.getBean("jdbcTemplate");
		String sql=product.getInsertSql();
		String[] value=product.getValues();
		jdbc.update(sql, value);
	}

}
