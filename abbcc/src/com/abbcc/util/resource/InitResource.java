package com.abbcc.util.resource;

import java.io.FileNotFoundException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.abbcc.exception.XmlException;
import com.abbcc.util.product.ProductType;
import com.abbcc.util.resource.ResourceUtil;
import com.abbcc.util.resource.property.Form;
import com.abbcc.util.resource.property.Table;

public class InitResource {
	private static Map<String, Table> tableMap = new HashMap<String, Table>();

	private static Map<String, Form> formMap = new HashMap<String, Form>();

	private static Map<String, List<ProductType>> productType = new HashMap<String, List<ProductType>>();

	private String productTypeResource = "product_type_resource.xml";

	private String productTableResource = "table_resource.xml";
	
	private String folder="/WEB-INF/resource/";

	public void init(String serverPath) throws FileNotFoundException, XmlException {
		ResourceUtil resource = new ResourceUtil();
		
		productType = resource.getProductMapByPath(serverPath+folder+productTypeResource);
		tableMap = resource.getTableMapByPath(serverPath+folder+productTableResource);
		formMap = resource.getFormMapByPath(serverPath+folder+productTableResource);

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
