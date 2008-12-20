package com.abbcc.dao.impl;

import org.springframework.jdbc.core.JdbcTemplate;

import com.abbcc.dao.ProductDAO;
import com.abbcc.servlet.StartServlet;
import com.abbcc.util.product.Product;

public class ProductDAOImpl extends BaseDaoImpl  implements ProductDAO  {

	public void add(Product product) { 
		JdbcTemplate jdbc=(JdbcTemplate)StartServlet.getBean("jdbcTemplate");
		/*String sql=product.getInsertSql();
		String[] value=null;//product.getValues();
		jdbc.update(sql, value);*/
	}

}
