package com.abbcc.service.impl;

import java.util.List;

import com.abbcc.pojo.Cpgqxx_bak2;
import com.abbcc.pojo.Jytj;
import com.abbcc.service.ProductInfoService;
import com.abbcc.util.JdbcTemplateUtil;
import com.abbcc.vo.product.bzd.Bzd_csdp;

public class ProductInfoServiceImpl implements ProductInfoService{
	
	 

	public void addProduct(Cpgqxx_bak2 cpgqxx, Jytj jyty, String productInsertSql) {
		
		
		JdbcTemplateUtil.updateObject(productInsertSql);
		
	}

	public void deleteProduct(int cpgqxxId, int userId) {
		// TODO Auto-generated method stub
		
	}

	public Jytj getJytj(int userId, int cpgqxxId) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Cpgqxx_bak2> productList(int userId) {
		// TODO Auto-generated method stub
		return null;
	}

	public void updateProduct(int userId, Cpgqxx_bak2 cpgqxx, Jytj jyty, String type) {
		// TODO Auto-generated method stub
		
	}

	public Cpgqxx_bak2 getCpgqxx(int userId, int cpgqxxId) {
		// TODO Auto-generated method stub
		return null;
	}

	public Bzd_csdp getBzd_csdp(String type, int bzd_csdpId) {
		// TODO Auto-generated method stub
		return null;
	}

	public Cpgqxx_bak2 getCpgqxx(int cpgqxxId) {
		// TODO Auto-generated method stub
		return null;
	}

	public Jytj getJytj(int jytjId) {
		// TODO Auto-generated method stub
		return null;
	}

	 

	public Bzd_csdp getBzd_csdp(int bzd_csdpId) {
		// TODO Auto-generated method stub
		return null;
	}

}
