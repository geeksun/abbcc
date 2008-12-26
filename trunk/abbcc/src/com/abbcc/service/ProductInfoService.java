package com.abbcc.service;

import java.util.List;

import com.abbcc.pojo.Cpgqxx_bak2;
import com.abbcc.pojo.Jytj;
import com.abbcc.vo.product.bzd.Bzd_csdp;

public interface ProductInfoService {
 
	void deleteProduct(int cpgqxxId, int userId);

	void updateProduct(int userId, Cpgqxx_bak2 cpgqxx, Jytj jyty, String type);

	List<Cpgqxx_bak2> productList(int userId);

	Cpgqxx_bak2 getCpgqxx(  int cpgqxxId);

	Jytj getJytj( int jytjId);
	
	Bzd_csdp getBzd_csdp(int bzd_csdpId); 
	
	
	void addProduct(Cpgqxx_bak2 cpgqxx, Jytj jyty,String productInsertSql);
	
}
