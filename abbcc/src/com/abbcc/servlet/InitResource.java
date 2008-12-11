package com.abbcc.servlet;

import java.io.FileNotFoundException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.abbcc.exception.XmlException;
import com.abbcc.util.ResourceUtil;
import com.abbcc.util.product.Form;
import com.abbcc.util.product.ProductType;
import com.abbcc.util.product.Table;

public class InitResource {
	private static Map<String, Table> tableMap = new HashMap<String, Table>();

	private static Map<String, Form> formMap = new HashMap<String, Form>();

	private static Map<String, List<ProductType>> productType = new HashMap<String, List<ProductType>>();

	private String productTypeResource = "product_type_resource.xml";

	private String productTableResource = "product_table_resource.xml";

	public void init() throws FileNotFoundException, XmlException {
		ResourceUtil resource = new ResourceUtil();
		productType = resource.getProductMapByPath(productTypeResource);
		tableMap = resource.getTableMapByPath(productTableResource);
		formMap = resource.getFormMapByPath(productTableResource);

	}

	public static Map<String, Form> getFormMap() {
		return formMap;
	}

	public static void setFormMap(Map<String, Form> formMap) {
		InitResource.formMap = formMap;
	}

	public static Map<String, List<ProductType>> getProductType() {
		return productType;
	}

	public static void setProductType(Map<String, List<ProductType>> productType) {
		InitResource.productType = productType;
	}

	public static Map<String, Table> getTableMap() {
		return tableMap;
	}

	public static void setTableMap(Map<String, Table> tableMap) {
		InitResource.tableMap = tableMap;
	}

}
