package com.abbcc.service;

import java.util.List;

import com.abbcc.util.pagination.Pagination;
import com.abbcc.util.product.Product;

public interface ProductService {
 
	void createProduct(Product product);

	void updateProduct(Product product);

	List<Product> productList(Pagination pagination);
	
	Product getProduct(long id);
	 
}
