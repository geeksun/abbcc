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

import com.abbcc.exception.XmlException;
import com.abbcc.util.product.Checkbox;
import com.abbcc.util.product.Filed;
import com.abbcc.util.product.Form;
import com.abbcc.util.product.FormObject;
import com.abbcc.util.product.Option;
import com.abbcc.util.product.ProductType;
import com.abbcc.util.product.Radio;
import com.abbcc.util.product.Select;
import com.abbcc.util.product.Table;
import com.abbcc.util.product.Text;

public class ResourceUtil {
	
	public static final String  productTypeResource="product_type_resource.xml";
	public static final String productTableResource="product_table_resource.xml";
	private   String note_pp = "pp";
	private   String note_id = "id";
	private   String note_name = "name";
	private   String note_value = "value";
	private   String note_root = "root";
	private   String note_table = "table";
	private   String note_form="form";
	private   String note_property="property";
	private   String note_input="input";
	private   String note_text="text";
	private   String note_checkbox="checkbox";
	private   String note_radio="radio";
	private   String note_select="select";
	private   String note_option="option";
	private   String note_type="type";
	private   String note_key="key";
	private   String note_notNull="not-null";
	private   String note_refFiled="ref-filed";
	private   String note_show="show";
	
	public  Map<String, List<ProductType>> getProductMapByPath(String appNamePath) throws FileNotFoundException, XmlException {
		InputStream input = getAppStream(appNamePath);
		return loadProductTypeByInput(input);
	}
	public Map<String, Table> getTableMapByPath(String appNamePath) throws FileNotFoundException, XmlException{
		InputStream input = getAppStream(appNamePath);
		return loadTableByInput(input);
	}
	public Map<String, Form> getFormMapByPath(String appNamePath) throws FileNotFoundException, XmlException{
		InputStream input = getAppStream(appNamePath);
		return loadFormByInput(input);
		
	}
	


	private InputStream getAppStream(String appName)
			throws FileNotFoundException {
		URL url = this.getClass().getClassLoader().getResource(".");
		String path = url.getPath()+appName;
		InputStream input = new FileInputStream(new File(path));
		return input;
	}
	public Map<String,Table> loadTableByInput(InputStream input) throws XmlException {
		SAXReader reader = new SAXReader();
		Map<String,Table> resources = new HashMap<String,Table>(); 
		try {
			Document doc = reader.read(input);
			Element root = doc.getRootElement(); 
			Iterator iter = root.elementIterator(note_pp);
			 while (iter.hasNext()) {
				Element child = (Element) iter.next(); 
				Element noteTable=(Element)child.selectObject(note_table);  
				if(noteTable==null){
					throw new XmlException("not defind <"+note_table+"> node");
				}
				Table table=new Table();
				String tableName = noteTable.attributeValue(note_name);
				if(tableName==null){
					throw new XmlException(note_table+":"+note_name+" is null");
				}
				String tableKey = noteTable.attributeValue(note_key);
				if(tableKey==null){
					throw new XmlException(note_table+":"+note_key+" is null");
				}
				table.setId(tableKey);
				table.setName(tableName);
				if(resources.containsKey(tableKey)){
					throw new XmlException(note_table+":"+note_key+" is exist");
				}
				resources.put(tableKey, table);
				Iterator tableIter = child.elementIterator(note_table);
				while (tableIter.hasNext()) {
					Element tableChild = (Element) tableIter.next();
					Element noteId= (Element)tableChild.selectObject(note_id); 
					if(noteId==null){
						throw new XmlException("not defind <"+note_id+"> node");
					}
					String filedId = noteId.attributeValue(note_name);
					if(tableName==null){
						throw new XmlException(note_table+":"+note_name+" is null");
					}
					String filedType = noteId.attributeValue(note_type);
					if(filedType==null){
						throw new XmlException(note_table+":"+note_type+" is null");
					}
					String filedNotNull = noteId.attributeValue(note_notNull);
					Filed idFiled=new Filed();
					idFiled.setName(filedId);
					idFiled.setType(filedType);
					if(filedNotNull!=null&&filedNotNull.equals("true")){
						idFiled.setNotNull(true);
					}
					table.setIdFiled(idFiled);
					List propertyList=  tableChild.selectNodes(note_property) ; 
					if(propertyList==null||propertyList.size()==0)continue;
					Filed[] propertyFiled=new Filed[propertyList.size()];
					table.setFiled(propertyFiled);
					int i=0;
					Iterator propertyIter =propertyList.iterator();
					while (propertyIter.hasNext()) {
						Element property  = (Element) propertyIter.next();
						 
						String propertyId = property.attributeValue(note_name);
						if(propertyId==null){
							throw new XmlException(note_table+":"+note_name+" is null");
						}
						String propertyType = property.attributeValue(note_type);
						if(filedType==null){
							throw new XmlException(note_table+":"+note_type+" is null");
						}
						String propertyNotNull = property.attributeValue(note_notNull);
						Filed filed=new Filed();
						filed.setName(propertyId);
						filed.setType(propertyType);
						propertyFiled[i]=filed;
						i++;
						if(propertyNotNull!=null&&propertyNotNull.equals("true")){
							filed.setNotNull(true);
						}
					}
					 
				}
			 }
		} catch (DocumentException e) {
			 
			e.printStackTrace();
		}
		return resources;
		
	}
	public Map loadFormByInput(InputStream input) throws XmlException {
		SAXReader reader = new SAXReader();
		Map resources = new HashMap (); 
		try {
			Document doc = reader.read(input);
			Element root = doc.getRootElement(); 
			Iterator iter = root.elementIterator(note_pp);
			 while (iter.hasNext()) {
				Element child = (Element) iter.next(); 
				Element noteTable=(Element)child.selectObject(note_table);  
				if(noteTable==null){
					throw new XmlException("not defind <"+note_table+"> node");
				}
				Element noteForm=(Element)child.selectObject(note_form);  
				if(noteForm==null){
					throw new XmlException("not defind <"+note_form+"> node");
				}
				Form form=new Form();
				 
				String tableKey = noteTable.attributeValue(note_key);
				if(tableKey==null){
					throw new XmlException(note_table+":"+note_key+" is null");
				}
				form.setKey(tableKey);
			 
				if(resources.containsKey(tableKey)){
					throw new XmlException(note_table+":"+note_key+" is exist");
				}
				resources.put(tableKey, form);
				
				List<FormObject> list=new ArrayList<FormObject>();
				form.setList(list);
				Iterator formIter = child.elementIterator(note_form);
				while (formIter.hasNext()) {
					Element formChild = (Element) formIter.next(); 
					List inputList=  formChild.selectNodes(note_input) ; 
					if(inputList!=null)
					{
						Iterator inputIter =inputList.iterator();
						while (inputIter.hasNext()) {
							
							Element inputProperty  = (Element) inputIter.next();
							String inputName = inputProperty.attributeValue(note_name);
							String inputType = inputProperty.attributeValue(note_type);
							String inputShow = inputProperty.attributeValue(note_show);
							String inputNotNull = inputProperty.attributeValue(note_notNull);
							String ref_filed = inputProperty.attributeValue(note_refFiled);
							if(inputType==null ){
								throw new XmlException( note_type+" input property  has null");
							}
							if( ref_filed==null){
								throw new XmlException( note_refFiled+" input property  has null");
							}
							if( inputName==null ){
								throw new XmlException(note_name+ " input property  has null");
							}
							if(inputType.equals(note_text)){
								
								
								Text text=new Text();
								list.add(text);
								text.setKey(ref_filed);
								text.setName(inputName); 
								if(inputNotNull!=null&&inputNotNull.equals("true")){
									text.setNotNull(true);
								}
								text.setShow(inputShow);
								
								
							}else if(inputType.equals(note_checkbox)){
								Checkbox checkbox=new Checkbox();
								list.add(checkbox);
								checkbox.setKey(ref_filed);
								checkbox.setName(inputName);
								checkbox.setShow(inputShow);
								if(inputNotNull!=null&&inputNotNull.equals("true")){
									checkbox.setNotNull(true);
								}
								List checkbocList=inputProperty.selectNodes(note_checkbox);
								if(checkbocList==null||checkbocList.size()==0)continue;
								Option[] option=new Option[checkbocList.size()];
								int i=0;
								Iterator checkboxIter = checkbocList.iterator(); 
								while (checkboxIter.hasNext()) {
									Element checkboxProperty  = (Element) checkboxIter.next();
									Option op =new Option();
									String checkboxValue = checkboxProperty.attributeValue(note_value);
									String checkboxShow = checkboxProperty.attributeValue(note_show);
									op.setShow(checkboxShow); 
									op.setValue(checkboxValue);
									if(inputType==null||inputName==null||ref_filed==null||checkboxValue==null){
										throw new XmlException( "input property  has null");
									}
									option[i]=op;
									i++;
								}
								
							} 
							else if(inputType.equals(note_radio)){ 
								Radio radio=new Radio();
								list.add(radio);
								radio.setKey(ref_filed);
								radio.setName(inputName);
								radio.setShow(inputShow);
								if(inputNotNull!=null&&inputNotNull.equals("true")){
									radio.setNotNull(true);
								}
								List radioList=inputProperty.selectNodes(note_radio);
								if(radioList==null||radioList.size()==0)continue;
								Option[] option=new Option[radioList.size()];
								int i=0;
								Iterator radioIter = radioList.iterator(); 
								while (radioIter.hasNext()) {
									Element radioProperty  = (Element) radioIter.next();
									Option op =new Option();
									String radioValue = radioProperty.attributeValue(note_value);
									String radioShow = radioProperty.attributeValue(note_show);
									op.setShow(radioShow); 
									op.setValue(radioValue);
									if(inputType==null||inputName==null||ref_filed==null||radioValue==null){
										throw new XmlException( "input property  has null");
									}
									option[i]=op;
									i++;
								} 
							}
						}
						
					}
					List selectList=  formChild.selectNodes(note_select) ; 
					if(selectList!=null){
						Iterator selectIter =selectList.iterator();
						while (selectIter.hasNext()) {
							
							Element selectProperty  = (Element) selectIter.next();
							String inputName = selectProperty.attributeValue(note_name);
							String inputShow = selectProperty.attributeValue(note_show);
							String inputNotNull = selectProperty.attributeValue(note_notNull);
							String ref_filed = selectProperty.attributeValue(note_refFiled);
							if( inputName==null||ref_filed==null){
								throw new XmlException( "input property  has null");
							}
							 
							Select select=new Select();
							list.add(select);
							select.setKey(ref_filed);
							select.setName(inputName);
							select.setShow(inputShow);
							if(inputNotNull!=null&&inputNotNull.equals("true")){
								select.setNotNull(true);
							}
							List optionList=selectProperty.selectNodes(note_option);
							if(optionList==null||optionList.size()==0)continue;
							Option[] option=new Option[optionList.size()];
							int i=0;
							Iterator radioIter = optionList.iterator(); 
							while (radioIter.hasNext()) {
								Element optionProperty  = (Element) radioIter.next();
								Option op =new Option();
								String radioValue = optionProperty.attributeValue(note_value);
								String radioShow = optionProperty.attributeValue(note_show);
								op.setShow(radioShow); 
								op.setValue(radioValue);
								if( inputName==null||ref_filed==null||radioValue==null){
									throw new XmlException( "input property  has null");
								}
								option[i]=op;
								i++;
							} 
						}
					}
					 
				}
			 }
		} catch (DocumentException e) {
			 
			e.printStackTrace();
		}
		return resources;
		
	}
	
	public Map<String, List<ProductType>> loadProductTypeByInput(InputStream input) throws XmlException {
		SAXReader reader = new SAXReader();
		Map<String, List<ProductType>> resources = new HashMap<String, List<ProductType>>();
		try {
			Document doc = reader.read(input);
			Element root = doc.getRootElement(); 
			Iterator iter = root.elementIterator(note_pp); 
			List<ProductType> list = new ArrayList<ProductType>(); 
			resources.put(note_root, list);
			while (iter.hasNext()) {
				Element child = (Element) iter.next(); 
				String id = child.attributeValue(note_id);
				if(id==null){
					throw new XmlException(note_id+" is null  ");
				}
				String name = child.attributeValue(note_name);
				if(name==null){
					throw new XmlException(note_name+"is null  ");
				}
				ProductType type = new ProductType(id, name);
				list.add(type);
				parseProductTypeXml(child, resources);
			}

		} catch (DocumentException e) {
			e.printStackTrace();
		}
		return resources;
	}

	 
	private void parseProductTypeXml(Element node, Map<String, List<ProductType>> resources) throws XmlException {
		List<ProductType> list = new ArrayList<ProductType>(); 
		String noteid = node.attributeValue(note_id); 
		if(noteid==null){
			throw new XmlException(note_id+" is null");
		}
		if(resources.containsKey(noteid)){
			throw new XmlException( note_id+" is exist");
		}
		resources.put(noteid, list);
		Iterator iter = node.elementIterator(note_pp);
		while (iter.hasNext()) {
			Element child = (Element) iter.next();
			String id = child.attributeValue(note_id);
			if(id==null){
				throw new XmlException(note_id+" is null  ");
			}
			String name = child.attributeValue(note_name);
			if(name==null){
				throw new XmlException(note_name+"is null  ");
			}
			ProductType type = new ProductType(id, name);
			list.add(type);
			if(!child.isTextOnly())
				parseProductTypeXml(child, resources);
		}
	}
	public static void main(String[] args)
	{
		ResourceUtil  resource=new ResourceUtil();
		String appNamePath=productTableResource;
		try {
			Map  map=resource.getFormMapByPath(appNamePath);
			
			 List list=null;//map.get(PRODUCT_TYPE_ROOT);
			
			/*Iterator iter=list.iterator();
			while(iter.hasNext()){
				ProductType type=(ProductType)iter.next();
				List nextlist=map.get(type.getId());
				Iterator nextiter=nextlist.iterator();
				 
			}*/
			System.out.println(map.size());
		} catch ( Exception e) {
			e.printStackTrace();
		}
	}

}
