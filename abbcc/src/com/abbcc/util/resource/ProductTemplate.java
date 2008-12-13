package com.abbcc.util.resource;

import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.abbcc.util.resource.property.Checkbox;
import com.abbcc.util.resource.property.Form;
import com.abbcc.util.resource.property.FormObject;
import com.abbcc.util.resource.property.Option;
import com.abbcc.util.resource.property.Radio;
import com.abbcc.util.resource.property.Select;
import com.abbcc.util.resource.property.Table;
import com.abbcc.util.resource.property.Text;

public class ProductTemplate {
	public static final String PRODUCT_KEY="key";
	private static final ProductTemplate instance=new ProductTemplate();
	public static ProductTemplate getInstance(){
		 return instance;
	}
	private  ProductTemplate() {
		 
	} 
	public String getProductTemplate(Form form, String servletPath) {
		if (form == null || servletPath == null)
			return "";
		List<FormObject> list = form.getList();
		StringBuilder builder = new StringBuilder();
		builder
				.append("<table border='0' cellpadding='0' cellspacing='0' width='100%'>");
		builder.append("<tbody>");
		Iterator<FormObject> iter = list.iterator();
		boolean hasHidden=false;
		while (iter.hasNext()) {
			FormObject o = iter.next();
			builder .append("<tr><td class='list_left_box' align='right' valign='top'>");
			builder .append("<img id='img_right_feature112222' "
							+ "src='"
							+ servletPath
							+ "/user/product/product_files/icon_nowhitewhiteright_19x19.gif'"
							+ " align='absmiddle' width='19' height='16'>");
			builder.append("<b>" + o.getShow() + "</b>");
			if (o.isNotNull()) {
				builder.append("<font color='#ff0000'>*</font>");

			} else {
				builder.append("&nbsp;");

			}
			builder.append("</td>");
			builder.append("<td class='list_right_box' style='padding: 2px;'>");
			if (o instanceof Text) {
				Text text = (Text) o;
				builder
						.append("<input type='text' name='"
								+ text.getName()
								+ "' value='' size='23' maxlength='80'  "
								+ "onblur='doOnBlur(this.name,true)' onfocus='doOnFocus(this.name)'>");

			} else if (o instanceof Radio) {
				Radio radio = (Radio) o;
				Option[] option = radio.getOption();
				if (option != null) {
					for (int j = 0; j < option.length; j++) {
						Option op = option[j];
						builder.append(op.getShow());
						builder.append("<input type='radio' name='"
								+ radio.getName() + "' value='" + op.getValue()
								+ "'>");
					}
				}

			} else if (o instanceof Checkbox) {

				Checkbox checkbox = (Checkbox) o;
				Option[] option = checkbox.getOption();
				if (option != null) {
					for (int j = 0; j < option.length; j++) {
						Option op = option[j];
						builder.append(op.getShow());
						builder.append("<input type='checkbox' name='"
								+ checkbox.getName() + "' value='"
								+ op.getValue() + "'>");
					}
				}
			} else if (o instanceof Select) {
				Select select = (Select) o;
				builder
						.append("<select  name='"
								+ select.getName()
								+ "' maxlength='80' "
								+ "onchange='javascript:funcSelectOther(112242)' id='feature112242' "
								+ "onblur='doOnBlur(this.name,	true)' onfocus='doOnFocus(this.name)'>");
				builder.append("<option value=''>请选择</option>");
				Option[] option = select.getOption();
				if (option != null) {

					for (int j = 0; j < option.length; j++) {
						Option op = option[j];
						builder.append("<option value='" + op.getValue() + "'>"
								+ op.getShow() + "</option>");
					}
				}

				builder.append("</select>");
			}
			builder.append("<span style='padding-left:10px;'>");
			builder
					.append("<span id='wrong_feature112222' class='slh13wrong' style='display:none; width:110px;'> ");
			builder
					.append("<span  class='wrongwords' id='wrong_words_feature112222'>带<font	color='red'>*</font>为必填项。 </span> ");
			builder.append("</span></span>");
			if (o.isHidden()&&!hasHidden) {
				hasHidden=true;
				builder.append("<a style='cursor: pointer;' "
						+ "onclick='showMore(this)' ");
				builder.append(" class='Htab2_off' >" + "更多属性</a> </td> </tr>"
						+ "</tbody></table> ");
				builder
						.append("<table id='table_more' style='display: none;' border='0' cellpadding='0' cellspacing='0' width='100%'>");
				builder.append(" <tbody> ");
			} else {
				builder.append("</td></tr>");

			} 

		}
		builder.append("</tbody></table>");
		String template = builder.toString();
		return template;
	}
	public String getTable(Form form) {
		List<FormObject> list = form.getList();
		StringBuilder builder = new StringBuilder();
		builder.append("<table>");
		Iterator<FormObject> iter = list.iterator();
		while (iter.hasNext()) {
			FormObject o = iter.next();
			if (o instanceof Text) {
				Text text = (Text) o;
				builder.append("<tr><td>");
				builder.append("<input type='text' name='" + text.getName()
						+ "' value='' >");
				builder.append("</td></tr>");

			} else if (o instanceof Radio) {
				builder.append("<tr><td>");
				Radio radio = (Radio) o;
				Option[] option = radio.getOption();
				if (option != null) {
					for (int j = 0; j < option.length; j++) {
						Option op = option[j];
						builder.append(op.getShow());
						builder.append("<input type='radio' name='"
								+ radio.getName() + "' value='" + op.getValue()
								+ "'>");
					}
				}

				builder.append("</td></tr>");
			} else if (o instanceof Checkbox) {
				builder.append("<tr><td>");
				Checkbox checkbox = (Checkbox) o;
				Option[] option = checkbox.getOption();
				if (option != null) {
					for (int j = 0; j < option.length; j++) {
						Option op = option[j];
						builder.append(op.getShow());
						builder.append("<input type='checkbox' name='"
								+ checkbox.getName() + "' value='"
								+ op.getValue() + "'>");
					}
				}

				builder.append("</td></tr>");
			} else if (o instanceof Select) {
				Select select = (Select) o;
				builder.append("<select  name='" + select.getName() + "' >");
				builder.append("<option value=''>请选择</option>");
				Option[] option = select.getOption();
				if (option != null) { 
					for (int j = 0; j < option.length; j++) {
						Option op = option[j];
						builder.append("<option value='" + op.getValue() + "'>"
								+ op.getShow() + "</option>");
					}
				}

				builder.append("</select>");
				builder.append("</td></tr>");
			}
		}
		builder.append("</table>");
		return builder.toString();
	}

	public String getTable(Form form, Map<String, Object> valueMap) {
		List<FormObject> list = form.getList();
		StringBuilder builder = new StringBuilder();
		builder.append("<table>");
		Iterator<FormObject> iter = list.iterator();

		while (iter.hasNext()) {
			FormObject o = iter.next();
			if (o instanceof Text) {
				Text text = (Text) o;
				builder.append("<tr><td>");
				String key = text.getKey();
				String value = (String) valueMap.get(key);
				if (value == null)
					value = "";
				builder.append("<input type='text'name='" + text.getName()
						+ "' value='" + value + "' >");
				builder.append("</td></tr>");

			} else if (o instanceof Radio) {
				builder.append("<tr><td>");
				Radio radio = (Radio) o;
				Option[] option = radio.getOption();
				if (option != null) {
					String key = radio.getKey();
					String value = (String) valueMap.get(key);
					if (value == null)
						value = "";
					for (int j = 0; j < option.length; j++) {
						Option op = option[j];
						builder.append(op.getShow());

						if (value.equals(op.getValue())) {
							builder.append("<input type='radio' name='"
									+ radio.getName() + "' value='"
									+ op.getValue() + "' checked >");
						} else {
							builder.append("<input type='radio' name='"
									+ radio.getName() + "' value='"
									+ op.getValue() + "'>");
						}

					}
				}

				builder.append("</td></tr>");
			} else if (o instanceof Checkbox) {
				builder.append("<tr><td>");
				Checkbox checkbox = (Checkbox) o;
				Option[] option = checkbox.getOption();
				if (option != null) {
					String key = checkbox.getKey();
					String[] value = (String[]) valueMap.get(key);
					for (int j = 0; j < option.length; j++) {
						Option op = option[j];
						builder.append(op.getShow());
						if (value != null) {
							boolean checked = false;
							for (int i = 0; i < value.length; i++) {
								String v = value[i];
								if (v.equals(op.getValue())) {
									builder
											.append("<input type='checkbox' name='"
													+ checkbox.getName()
													+ "' value='"
													+ op.getValue()
													+ "' checked >");
									checked = true;
									break;

								}
							}
							if (!checked)
								builder.append("<input type='checkbox' name='"

								+ checkbox.getName() + "' value='"
										+ op.getValue() + "'>");
						} else {
							builder.append("<input type='checkbox' name='"

							+ checkbox.getName() + "' value='" + op.getValue()
									+ "'>");
						}
					}
				}

				builder.append("</td></tr>");
			} else if (o instanceof Select) {
				Select select = (Select) o;
				builder.append("<select  name='" + select.getName() + "' >");
				builder.append("<option value=''>请选择</option>");
				String key = select.getKey();
				String value = (String) valueMap.get(key);
				if (value == null)
					value = "";
				Option[] option = select.getOption();
				if (option != null) {

					for (int j = 0; j < option.length; j++) {
						Option op = option[j];
						if (value.equals(op.getValue())) {
							builder.append("<option value='" + op.getValue()
									+ "' selected >" + op.getShow()
									+ "</option>");
						} else {
							builder.append("<option value='" + op.getValue()
									+ "'>" + op.getShow() + "</option>");
						}

					}
				}

				builder.append("</select>");
				builder.append("</td></tr>");
			}
		}
		builder.append("</table>");
		return builder.toString();
	}
	public String getProductInsertValueSql(HttpServletRequest request,String key) throws  Exception{ 
		if(key!=null){
			Form form=InitResource.getFormMap().get(key);
			Table table=InitResource.getTableMap().get(key);
			if(form!=null&&table!=null){
				Map<String,Object> values=	TableResourceUtil.getInstance().getFormValue(form,request);
				String sql=TableResourceUtil.getInstance().getInsertValueSql(table,values);
				return sql;
			}  
		}
		return null;
	}
	public String getProductSelectValueSql(HttpServletRequest request,String key) throws  Exception{ 
		if(key!=null){
			Form form=InitResource.getFormMap().get(key);
			Table table=InitResource.getTableMap().get(key);
			if(form!=null&&table!=null){ 
				String id=	TableResourceUtil.getInstance().getFormIdValue(table,form,request);	
				String sql=TableResourceUtil.getInstance().getSelectObjectSql(table, Integer.parseInt(id)) ;
				return sql;
			}  
		}
		return null;
	}
	

}
