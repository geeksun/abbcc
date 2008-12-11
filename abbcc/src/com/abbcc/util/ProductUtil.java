package com.abbcc.util;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.abbcc.exception.ValueNullException;
import com.abbcc.util.product.Checkbox;
import com.abbcc.util.product.Filed;
import com.abbcc.util.product.Form;
import com.abbcc.util.product.FormObject;
import com.abbcc.util.product.Option;
import com.abbcc.util.product.Radio;
import com.abbcc.util.product.Select;
import com.abbcc.util.product.Table;
import com.abbcc.util.product.Text;

public class ProductUtil {

	 
	public Map<String, Object> getFormValue(Form form,
			HttpServletRequest request) throws ValueNullException {
		Map<String, Object> ret = new HashMap<String, Object>();
		List<FormObject> list = form.getList();
		Iterator<FormObject> iter = list.iterator();
		while (iter.hasNext()) {
			FormObject o = iter.next();
			if (o instanceof Text) {
				Text text = (Text) o;
				String value = RequestUtils.getParameter(request, text
						.getName());
				if (text.isNotNull() && value == null) {
					throw new ValueNullException(text.getName() + " is null");
				}
				ret.put(text.getKey(), value);
			} else if (o instanceof Radio) {
				Radio radio = (Radio) o;
				String value = RequestUtils.getParameter(request, radio
						.getName());
				if (radio.isNotNull() && value == null) {
					throw new ValueNullException(radio.getName() + " is null");
				}
				ret.put(radio.getKey(), value);
			} else if (o instanceof Checkbox) {
				Checkbox checkbox = (Checkbox) o;
				int[] value = RequestUtils.getIntParameters(request, checkbox
						.getName());
				if (checkbox.isNotNull() && value == null) {
					throw new ValueNullException(checkbox.getName()
							+ " is null");
				}
				ret.put(checkbox.getKey(), value);
			} else if (o instanceof Select) {
				Select select = (Select) o;
				String value = RequestUtils.getParameter(request, select
						.getName());
				if (select.isNotNull() && value == null) {
					throw new ValueNullException(select.getName() + " is null");
				}
				ret.put(select.getKey(), value);
			}
		}

		return ret;
	}
  
	public String getInsertSql(Table table) {
		StringBuilder builder = new StringBuilder("insert into ");
		builder.append(table.getName() + "(");
		Filed[] filed = table.getFiled();
		for (int i = 0; i < filed.length; i++) {
			Filed f = filed[i];
			if (i == filed.length - 1) {
				builder.append(f.getName() + ")");
			} else {
				builder.append(f.getName() + ",");
			}

		}
		builder.append(" value (");
		for (int i = 0; i < filed.length; i++) {
			if (i == filed.length - 1) {
				builder.append("?)");
			} else {
				builder.append("?,");
			}

		}
		return builder.toString();

	}

	public String getUpdateSql(Table table) {
		StringBuilder builder = new StringBuilder("update ");
		builder.append(table.getName() + " set ");
		Filed[] filed = table.getFiled();
		for (int i = 0; i < filed.length; i++) {
			Filed f = filed[i];
			if (i == 0) {
				builder.append(f.getName() + "=?");
			} else {
				builder.append(f.getName() + ",=?");
			}

		}
		return builder.toString();

	}

	public String getUpdateSql(Table table, Map<String, Object> valueMap)
			throws ValueNullException {
		StringBuilder builder = new StringBuilder("update ");
		builder.append(table.getName() + " set ");
		Filed[] filed = table.getFiled();
		for (int i = 0; i < filed.length; i++) {
			Filed f = filed[i];
			String key = f.getName();
			Object value = valueMap.get(key);
			if (value == null) {
				if (f.isNotNull()) {
					throw new ValueNullException("filed " + f.getName()
							+ " value is null");
				}

			} else {
				if (i == 0) {
					builder.append(f.getName() + "=?");
				} else {
					builder.append(f.getName() + ",=?");
				}
			}

		}
		return builder.toString();

	}

	public String getDeleteSql(Table table, int number) {
		StringBuilder builder = new StringBuilder("delete from ");
		builder.append(table.getName() + " where " + table.getId());
		if (number == 1) {
			builder.append("=?");
		} else {
			builder.append("in (");
			for (int i = 0; i < number; i++) {
				if (i == number - 1) {
					builder.append("?)");
				} else {
					builder.append("?,");
				}
			}
		}
		return builder.toString();
	}

	public String getDeleteSql(Table table, int[] ids) {
		StringBuilder builder = new StringBuilder("delete from ");
		builder.append(table.getName() + " where " + table.getId());
		if (ids.length == 1) {
			builder.append("=" + ids[0]);
		} else {
			builder.append("in (");
			for (int i = 0; i < ids.length; i++) {
				if (i == ids.length - 1) {
					builder.append(ids[i] + ")");
				} else {
					builder.append(ids[i] + ",");
				}
			}
		}
		return builder.toString();
	}

	public String getSelectObjectSql(Table table, int id) {
		StringBuilder builder = new StringBuilder("select * from ");
		builder.append(table.getName() + " where " + table.getId() + "=" + id);
		return builder.toString();
	}

	public String getSelectListSql(Table table, int[] ids) {
		StringBuilder builder = new StringBuilder("select * from ");
		builder.append(table.getName() + " where " + table.getId());
		if (ids.length == 1) {
			builder.append("=" + ids[0]);
		} else {
			builder.append(" in (");
			for (int i = 0; i < ids.length; i++) {
				if (i == ids.length - 1) {
					builder.append(ids[i] + ")");
				} else {
					builder.append(ids[i] + ",");
				}
			}
		}
		return builder.toString();
	}

	public String getSelectListSql(Table table, int number) {
		StringBuilder builder = new StringBuilder("select * from ");
		builder.append(table.getName() + " where " + table.getId());
		if (number == 1) {
			builder.append("=?");
		} else {
			builder.append("in (");
			for (int i = 0; i < number; i++) {
				if (i == number - 1) {
					builder.append("?)");
				} else {
					builder.append("?,");
				}
			}
		}
		return builder.toString();
	}

	public String getInsertSql(Table table, Map<String, Object> valueMap)
			throws ValueNullException {
		StringBuilder builder = new StringBuilder("insert into ");
		builder.append(table.getName() + "(");
		Filed[] filed = table.getFiled();
		for (int i = 0; i < filed.length; i++) {
			Filed f = filed[i];

			String key = f.getName();
			Object value = valueMap.get(key);
			if (value == null) {
				if (f.isNotNull()) {
					throw new ValueNullException("filed " + f.getName()
							+ " value is null");
				}
				if (i == filed.length - 1) {
					builder.append(")");
				}
			} else {
				if (i == filed.length - 1) {
					builder.append(f.getName() + ")");
				} else {
					builder.append(f.getName() + ",");
				}
			}

		}
		builder.append(" value (");
		for (int i = 0; i < filed.length; i++) {
			Filed f = filed[i];
			String key = f.getName();
			Object value = valueMap.get(key);
			if (value != null) {
				if (i == filed.length - 1) {
					builder.append("?)");
				} else {
					builder.append("?,");
				}
			}
		}
		return builder.toString();

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

}
