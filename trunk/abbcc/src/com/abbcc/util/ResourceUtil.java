package com.abbcc.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;

import com.abbcc.util.product.ProductType;

public class ResourceUtil {
	 
	 
	public static final String PRODUCT_TYPE_PP = "pp";

	public static final String PRODUCT_TYPE_ID = "id";

	public static final String PRODUCT_TYPE_NAME = "name";

	public static final String PRODUCT_TYPE_ROOT = "root";

	public Map getProductMapByPath(String appNamePath) throws FileNotFoundException {
		InputStream input = getAppStream(appNamePath);
		return loadProductTypeByInput(input);
		 
	}

	private InputStream getAppStream(String appName)
			throws FileNotFoundException {
		URL url = this.getClass().getClassLoader().getResource(".");
		String path = url.getPath()+appName;
		InputStream input = new FileInputStream(new File(path));
		return input;
	}

	 
	public Map loadProductTypeByInput(InputStream input) {
		SAXReader reader = new SAXReader();
		Map resources = new HashMap();
		try {
			Document doc = reader.read(input);
			Element root = doc.getRootElement(); 
			Iterator iter = root.elementIterator(PRODUCT_TYPE_PP);
			List list = new ArrayList(); 
			resources.put(PRODUCT_TYPE_ROOT, list);
			while (iter.hasNext()) {
				Element child = (Element) iter.next();
				String id = child.attributeValue(PRODUCT_TYPE_ID);
				String name = child.attributeValue(PRODUCT_TYPE_NAME);
				ProductType type = new ProductType(id, name);
				list.add(type);
				parseProductTypeXml(child, resources);
			}

		} catch (DocumentException e) {
			e.printStackTrace();

		}
		return resources;

	}

	 
	private void parseProductTypeXml(Element node, Map resources) {
		List list = new ArrayList(); 
		String noteid = node.attributeValue(PRODUCT_TYPE_ID); 
		resources.put(noteid, list);
		Iterator iter = node.elementIterator(PRODUCT_TYPE_PP);
		while (iter.hasNext()) {
			Element child = (Element) iter.next();
			String id = child.attributeValue(PRODUCT_TYPE_ID);
			String name = child.attributeValue(PRODUCT_TYPE_NAME);
			ProductType type = new ProductType(id, name);
			list.add(type);
			if(!child.isTextOnly())
				parseProductTypeXml(child, resources);
		}

	}
	public static void main(String[] args)
	{
		ResourceUtil  resource=new ResourceUtil();
		String appNamePath="product_type_resource.xml";
		try {
			Map<String,List> map=resource.getProductMapByPath(appNamePath);
			
			List list=map.get(PRODUCT_TYPE_ROOT);
			
			Iterator iter=list.iterator();
			while(iter.hasNext()){
				ProductType type=(ProductType)iter.next();
				List nextlist=map.get(type.getId());
				Iterator nextiter=nextlist.iterator();
				 
			}
			System.out.println(map.size());
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
