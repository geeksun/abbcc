package com.abbcc.util.product;

import java.util.Map;

import com.abbcc.pojo.Product;

public class ProductTemplate {
	public static final String PRODUCT_KEY = "key";

	private static final ProductTemplate instance = new ProductTemplate();

	public static ProductTemplate getInstance() {
		return instance;
	}

	private ProductTemplate() {

	}

	public String[] getFromName(Product product){
		return null;
	}
	public String getTableStyle(Product product, String servletPath) {
		if(product==null||servletPath==null)return ""; 
		String formName = product.getFormName();
		String isShow = product.getIsShow();
		String isNull = product.getIsNull();
		String unit = product.getUnit();
		String propertyName = product.getPropertyName();
		String type = product.getType();
		String isHidden = product.getIsHidden();

		String[] formNames = ProductUtil.arrayToString(formName);
		String[] isShows = ProductUtil.arrayToString(isShow);
		String[] isNulls = ProductUtil.arrayToString(isNull);
		String[] units = ProductUtil.arrayToString(unit);
		String[] propertyNames = ProductUtil.arrayToString(propertyName);
		String[] types = ProductUtil.arrayToString(type);
		String[] isHiddens = ProductUtil.arrayToString(isHidden);

		StringBuilder builder = new StringBuilder();
		StringBuilder hiddendBuilder = new StringBuilder();
		
		boolean hasHidden = false;
		builder.append("<table border='0' cellpadding='0' cellspacing='0' width='100%'>");
		builder.append("<tbody>\n");
		for (int i = 0; i < formNames.length; i++) {
			String _formName = formNames[i];
			String _isShow = isShows[i];
			String _isNull = isNulls[i];
			String _unit = units[i];
			String _propertyNames = propertyNames[i];
			String _type = types[i];
			String _isHidden = isHiddens[i];
			if (!_isShow.equals("true")) {
				continue;
			} 
			StringBuilder tempBuilder = new StringBuilder();
			tempBuilder .append("<tr>\n<td class='list_left_box' align='right' valign='top'>"); 
			if (_type.equals("text")) {
				tempBuilder.append("<b>" + _propertyNames + "</b>");
				if (_isNull.equals("true")) {
					tempBuilder.append("<font color='#ff0000'>*</font>"); 
				} else {
					tempBuilder.append("&nbsp;");

				}
				tempBuilder.append("</td>\n");
				tempBuilder .append("<td class='list_right_box' style='padding: 2px;'>");
				tempBuilder.append("<input type='text' name='" + _formName
						+ "' value='' size='23' maxlength='80'  " 
						+ ">");
				
			} else if (_type.equals("select")) {
				boolean isProperty = ProductUtil.isPropertyMatchType(types,
						propertyNames);
				if (!isProperty) {

				} else {
					String[] temp = _propertyNames.split(":|："); 
					tempBuilder.append("<b>" + temp[0] + "</b>");
					if (_isNull.equals("true")) {
						tempBuilder.append("<font color='#ff0000'>*</font>");

					} else {
						tempBuilder.append("&nbsp;");

					}
					tempBuilder.append("</td>\n");
					tempBuilder
							.append("<td class='list_right_box' style='padding: 2px;'>");

					tempBuilder.append("<select  name='" + _formName
							+ "' maxlength='80' "
							// + "onchange='javascript:funcSelectOther(112242)'
							// id='feature112242' "
							// + "onblur='doOnBlur(this.name, true)'
							// onfocus='doOnFocus(this.name)'>");
							+ ">");
					String[] temp2 = temp[1].split("#");
					tempBuilder.append("<option value=''>请选择</option>");
					for (int t = 0; t < temp2.length; t++) {
						tempBuilder.append("<option value='" + (t + 1) + "'>"
								+ temp2[t] + "</option>");
					}
					tempBuilder.append("</select>");
				}
				
			}
			if(_unit!=null)
			    tempBuilder.append(_unit);
		 		tempBuilder.append("</td></tr>\n");
			if (_isHidden.equals("true")) {
				hasHidden = true;
				hiddendBuilder.append(tempBuilder);
			} else {
				
				builder.append(tempBuilder);
			} 
		}
		if (hasHidden) {
			int len=builder.length();
			builder.delete(len-12, len);
			builder.append("<a style='cursor: pointer;' "
					+ "onclick='showMore(this)' ");
			builder.append(" class='Htab2_off' >" + "更多属性</a> </td> </tr>"
					+ "</tbody></table> ");
			builder .append("<table id='table_more' style='display: none;' border='0' cellpadding='0' cellspacing='0' width='100%'>");
			builder.append(" <tbody> ");
			builder.append(hiddendBuilder);
		}
		 
		builder.append("</tbody></table>");
		String template = builder.toString();
		return template;
	}
	public String getTableStyle(Product product, String servletPath,Map objectValue) {
		if(product==null||servletPath==null)return ""; 
		String formName = product.getFormName();
		String isShow = product.getIsShow();
		String isNull = product.getIsNull();
		String unit = product.getUnit();
		String propertyName = product.getPropertyName();
		String type = product.getType();
		String isHidden = product.getIsHidden();
		String otherFiled=product.getOtherFiledName();
		

		String[] formNames = ProductUtil.arrayToString(formName);
		String[] isShows = ProductUtil.arrayToString(isShow);
		String[] isNulls = ProductUtil.arrayToString(isNull);
		String[] units = ProductUtil.arrayToString(unit);
		String[] propertyNames = ProductUtil.arrayToString(propertyName);
		String[] types = ProductUtil.arrayToString(type);
		String[] isHiddens = ProductUtil.arrayToString(isHidden);
		String[] otherFileds= ProductUtil.arrayToString(otherFiled);
		
		StringBuilder builder = new StringBuilder();
		StringBuilder hiddendBuilder = new StringBuilder();
		
		boolean hasHidden = false;
		builder.append("<table border='0' cellpadding='0' cellspacing='0' width='100%'>");
		builder.append("<tbody>\n");
		for (int i = 0; i < formNames.length; i++) {
			String _formName = formNames[i];
			String _isShow = isShows[i];
			String _isNull = isNulls[i];
			String _unit = units[i];
			String _propertyNames = propertyNames[i];
			String _type = types[i];
			String _isHidden = isHiddens[i];
			String _filed=otherFileds[i];
			String value=(String)objectValue.get(_filed);
			if(value==null)value="";
			if (!_isShow.equals("true")) {
				continue;
			} 
			StringBuilder tempBuilder = new StringBuilder();
			tempBuilder .append("<tr>\n<td class='list_left_box' align='right' valign='top'>"); 
			if (_type.equals("text")) {
				tempBuilder.append("<b>" + _propertyNames + "</b>");
				if (_isNull.equals("true")) {
					tempBuilder.append("<font color='#ff0000'>*</font>"); 
				} else {
					tempBuilder.append("&nbsp;");

				}
				tempBuilder.append("</td>\n");
				tempBuilder .append("<td class='list_right_box' style='padding: 2px;'>");
				tempBuilder.append("<input type='text' name='" + _formName
						+ "' value='"+value+"' size='23' maxlength='80'  " 
						+ ">");
				
			} else if (_type.equals("select")) {
				boolean isProperty = ProductUtil.isPropertyMatchType(types,
						propertyNames);
				if (!isProperty) {

				} else {
					String[] temp = _propertyNames.split(":|："); 
					tempBuilder.append("<b>" + temp[0] + "</b>");
					if (_isNull.equals("true")) {
						tempBuilder.append("<font color='#ff0000'>*</font>");

					} else {
						tempBuilder.append("&nbsp;");

					}
					tempBuilder.append("</td>\n");
					tempBuilder
							.append("<td class='list_right_box' style='padding: 2px;'>");

					tempBuilder.append("<select  name='" + _formName
							+ "' maxlength='80' "
							// + "onchange='javascript:funcSelectOther(112242)'
							// id='feature112242' "
							// + "onblur='doOnBlur(this.name, true)'
							// onfocus='doOnFocus(this.name)'>");
							+ ">");
					String[] temp2 = temp[1].split("#");
					tempBuilder.append("<option value=''>请选择</option>");
					for (int t = 0; t < temp2.length; t++) {
						String optionValue=""+t+1;
						boolean selected=false;
						if(value.equals(optionValue)){
							selected=true;
						}
						if(selected){
							 tempBuilder.append("<option value='" + (t + 1) + "' selected >"
										+ temp2[t] + "</option>");
						}
						   
						else{
							 tempBuilder.append("<option value='" + (t + 1) + "' >"
										+ temp2[t] + "</option>");
						}
					}
					tempBuilder.append("</select>");
				}
				
			}
			if(_unit!=null)
			    tempBuilder.append(_unit);
		 		tempBuilder.append("</td></tr>\n");
			if (_isHidden.equals("true")) {
				hasHidden = true;
				hiddendBuilder.append(tempBuilder);
			} else {
				
				builder.append(tempBuilder);
			} 
		}
		if (hasHidden) {
			int len=builder.length();
			builder.delete(len-12, len);
			builder.append("<a style='cursor: pointer;' "
					+ "onclick='showMore(this)' ");
			builder.append(" class='Htab2_off' >" + "更多属性</a> </td> </tr>"
					+ "</tbody></table> ");
			builder .append("<table id='table_more' style='display: none;' border='0' cellpadding='0' cellspacing='0' width='100%'>");
			builder.append(" <tbody> ");
			builder.append(hiddendBuilder);
		}
		 
		builder.append("</tbody></table>");
		String template = builder.toString();
		return template;
	}
	  
	public static void main(String[] args){
		Product product=new Product();
		product.setIdFiledName("id");
		product.setIsHidden("false,false,false,false");
		product.setIsNull("true,true,true,flase");
		product.setIsShow("true,true,true,true");
		product.setOtherFiledName("f_1,f_2,f_3,f_4");
		product.setPropertyName("品牌,品牌2,类别:hehe#heihei#lala,品牌3");
		product.setRemark("ss,ss,ss,ss");
		product.setType("text,text,text,select");
		product.setUnit("mm,mm,nn,nn");
		product.setFormName("f_1,f_2,f_3,f_4"); 
		product.setProductTypeId("010101");
		product.setState(Product.PRODUCT_STATE_IN_USED);
		product.setTableName("t_010101");
		  
		String servletPath="";
		String table=ProductTemplate.getInstance().getTableStyle(product, servletPath);
		
		System.out.println(table);
	}

}
