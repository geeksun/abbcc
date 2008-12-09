package com.abbcc.dao.impl;

import org.springframework.jdbc.core.JdbcTemplate;

import com.abbcc.dao.ProductDAO;
import com.abbcc.servlet.StartServlet;
import com.abbcc.util.product.Product;

public class ProductDAOImpl implements ProductDAO  {

	public void add(Product product) { 
		JdbcTemplate jdbc=(JdbcTemplate)StartServlet.getBean("jdbcTemplate");
		String sql=product.getInsertSql();
		String[] value=product.getValues();
		jdbc.update(sql, value);
	}

}
