package com.abbcc.service.impl;

import java.util.List;

import com.abbcc.pojo.Cpgqxx;
import com.abbcc.pojo.Jytj;
import com.abbcc.service.ProductService;
import com.abbcc.util.Product;
import com.abbcc.vo.product.bzd.Bzd_csdp;

public class ProductServiceImpl implements ProductService{
	
	private static final ProductServiceImpl instance=new ProductServiceImpl();
	
	public static ProductServiceImpl getInstance(){
		return instance;
	}

	public void addProduct(Cpgqxx cpgqxx, Jytj jyty, String type) {
		// TODO Auto-generated method stub
		
	}

	public void deleteProduct(int cpgqxxId, int userId) {
		// TODO Auto-generated method stub
		
	}

	public Jytj getJytj(int userId, int cpgqxxId) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Cpgqxx> productList(int userId) {
		// TODO Auto-generated method stub
		return null;
	}

	public void updateProduct(int userId, Cpgqxx cpgqxx, Jytj jyty, String type) {
		// TODO Auto-generated method stub
		
	}

	public Cpgqxx getCpgqxx(int userId, int cpgqxxId) {
		// TODO Auto-generated method stub
		return null;
	}

	public Bzd_csdp getBzd_csdp(String type, int bzd_csdpId) {
		// TODO Auto-generated method stub
		return null;
	}

	public Cpgqxx getCpgqxx(int cpgqxxId) {
		// TODO Auto-generated method stub
		return null;
	}

	public Jytj getJytj(int jytjId) {
		// TODO Auto-generated method stub
		return null;
	}

	public void addProduct(Cpgqxx cpgqxx, Jytj jyty, Product product) {
		// TODO Auto-generated method stub
		
	}

	public Bzd_csdp getBzd_csdp(int bzd_csdpId) {
		// TODO Auto-generated method stub
		return null;
	}

}
