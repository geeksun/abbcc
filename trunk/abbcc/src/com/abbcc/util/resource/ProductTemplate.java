package com.abbcc.util.resource;

import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.abbcc.util.RequestUtils;
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
				builder.append("<input type='text'name='" + text.getName()
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
				builder.append("<option value=''>«Î—°‘Ò</option>");
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
				builder.append("<option value=''>«Î—°‘Ò</option>");
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
	public String getProductInsertValueSql(HttpServletRequest request) throws  Exception{
		String key=RequestUtils.getParameter(request,PRODUCT_KEY);
		if(key!=null){
			Form form=InitResource.getFormMap().get(key);
			if(form!=null){
				Map<String,Object> values=	TableResourceUtil.getInstance().getFormValue(form,request);
				Table table=InitResource.getTableMap().get(key);
				String sql=TableResourceUtil.getInstance().getInsertValueSql(table,values);
				return sql;
			}  
		}
		return null;
	}

}
