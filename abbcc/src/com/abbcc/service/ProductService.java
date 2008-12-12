package com.abbcc.service;

import java.util.List;

import com.abbcc.pojo.Cpgqxx;
import com.abbcc.pojo.Jytj;
import com.abbcc.vo.product.bzd.Bzd_csdp;

public interface ProductService {
 
	void deleteProduct(int cpgqxxId, int userId);

	void updateProduct(int userId, Cpgqxx cpgqxx, Jytj jyty, String type);

	List<Cpgqxx> productList(int userId);

	Cpgqxx getCpgqxx(  int cpgqxxId);

	Jytj getJytj( int jytjId);
	
	Bzd_csdp getBzd_csdp(int bzd_csdpId); 
	
	
	void addProduct(Cpgqxx cpgqxx, Jytj jyty,String productInsertSql);
	
}
