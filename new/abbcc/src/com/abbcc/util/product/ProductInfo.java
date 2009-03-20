package com.abbcc.util.product;

import java.util.Map;

import com.abbcc.pojo.Cpgqxx;
import com.abbcc.pojo.Jytj;
import com.abbcc.pojo.Product;

public class ProductInfo {
	private Cpgqxx cpggxx;

	private Jytj jytj;

	private Product product;

	private Map<String, String> mapValue;

	public Cpgqxx getCpggxx() {
		return cpggxx;
	}

	public void setCpggxx(Cpgqxx cpggxx) {
		this.cpggxx = cpggxx;
	}

	public Jytj getJytj() {
		return jytj;
	}

	public void setJytj(Jytj jytj) {
		this.jytj = jytj;
	}

	public Map<String, String> getMapValue() {
		return mapValue;
	}

	public void setMapValue(Map<String, String> mapValue) {
		this.mapValue = mapValue;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

}
