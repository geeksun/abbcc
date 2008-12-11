package com.abbcc.util.resource;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.abbcc.exception.ValueNullException;
import com.abbcc.util.RequestUtils;
import com.abbcc.util.resource.property.Checkbox;
import com.abbcc.util.resource.property.Filed;
import com.abbcc.util.resource.property.Form;
import com.abbcc.util.resource.property.FormObject;
import com.abbcc.util.resource.property.Radio;
import com.abbcc.util.resource.property.Select;
import com.abbcc.util.resource.property.Table;
import com.abbcc.util.resource.property.Text;

public class TableResourceUtil {

	 
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
}
