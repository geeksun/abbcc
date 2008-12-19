package com.abbcc.util.pagination;

import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/**
 * 
 * @author dongyili
 * 
 * 
 */

public class NormalPagination extends Pagination {

	private static final long serialVersionUID = 8796894663458384077L;

	public NormalPagination(int currentPage, String action, int onePageSize,
			Map<String, Object> params) {
		super(currentPage, action, onePageSize, params,null);

	}
	public NormalPagination(int currentPage, String action, int onePageSize,
			Map<String, Object> params,int[] selectVaue) {
		super(currentPage, action, onePageSize, params,selectVaue);

	}
 

	public String getHtml() {
		if(this.getTotalResults()==0)return "";
		StringBuffer html = new StringBuffer();
		int totalPage=this.getTotalPage();
		Map<String, Object> params=this.getParams();
		int[] values = this.getSelectValue();

		html.append("\n<form style=\"margin:0\" name= \"" + getFormName()
				+ "\" method=\"post\" action=\"" + getAction() + "\">\n");
		html.append("<input type=\"hidden\" name= \""
				+ PageConstants.PAGINATION_TOTAL_RESULTS + "\" value=\""
				+ getTotalResults() + "\">\n");
		if (values != null) {
			html.append("<input type=\"hidden\" name= \""
					+ PageConstants.PAGINATION_ONE_PAGE_SIZE + "\" value=\""
					+ getOnePageSize() + "\">\n");
		} 
		if (params!= null) {
			Set<String> set = params.keySet();
			Iterator<String> it = set.iterator();
			while (it.hasNext()) {
				String paramName = (String) it.next();
				Object paramValue = params.get(paramName);
				html.append("<input type=\"hidden\" name= \"" + paramName
						+ "\" value=\"" + paramValue + "\">\n");
			}
		}
		
		if (totalPage   >= 1) {
			html.append("<div align=\"right\">\n");
			if(this.isShowTotalResults()){
				html.append("\u8BB0\u5F55\u6570&nbsp;:&nbsp;&nbsp;"+this.getTotalResults()+"&nbsp;&nbsp;");
			}
			html .append("<img src='../images/button_begins.gif' width='15' height='15' ALT='Ê×Ò³' name='B4' onclick='gotoPage(1)'>&nbsp;&nbsp;\n");
			html .append("<img src='../images/button_prvs.gif' width='15' height='15' ALT='ÉÏÒ³' name='B5'   onclick='gotoPage("
							+ this.getPreviousPage() + ")'>&nbsp;&nbsp;\n");
			html .append("<img src='../images/button_nexts.gif' width='15' height='15' ALT='ÏÂÒ³' name='B6'   onclick='gotoPage("
							+ this.getNextPage() + ")'>&nbsp;&nbsp;\n");
			html .append("<img src='../images/button_ends.gif' width='15' height='15' ALT='Î²Ò³' name='B7'   onclick='gotoPage("
							+ totalPage + ")'>&nbsp;&nbsp;\n");

			html.append("<select name='"
					+ PageConstants.PAGINATION_CURRENT_PAGE
					+ "' onchange='gotoPage(this.value)'>\n");

			for (int i = 1; i <= totalPage; i++) {
				html.append("<option value='" + i + "'  "
						+ (i == this.getCurrentPage() ? " selected" : ""));
				html.append(" >\u7B2C" + i + "\u9875</option> &nbsp;&nbsp;\n");

			}
			html.append("</select>\n  &nbsp;&nbsp;");

		
			if (values != null && values.length > 0) {
				html.append("<select name=\""
						+ PageConstants.PAGINATION_ONE_PAGE_SIZE
						+ "\" onchange=\"gotopageSize(this.value)\">\n");
				int len = values.length;

				for (int i = 0; i < len; i++) {
					int value = values[i];
					if (value > 0) {
						html.append("<option value=\'" + value + "' ");
						if (this.getOnePageSize() == value) {
							html.append("selected ");
						}
						html.append(" >");
						html.append("\u6BCF\u9875" + value + "\u6761");
						html.append("</option>\n");
					}

				}
				html.append("</select>\n");
			}

			html.append("<script type='text/javascript'>\n  "
					+ "function gotoPage(pageValue){  \n" + "document."
					+ this.getFormName() + ".action='" + getAction() + "?"
					+ PageConstants.PAGINATION_CURRENT_PAGE + "='+pageValue; "
					+ "\n" + "document." + this.getFormName() + ".submit();"
					+ "\n}\n");
			if (values!=null) {
				html.append("function gotopageSize(size){  \n" + "document."
						+ this.getFormName() + ".action='" + getAction() + "?"
						+ PageConstants.PAGINATION_CURRENT_PAGE + "=1" + "&"
						+ PageConstants.PAGINATION_ONE_PAGE_SIZE + "='"
						+ "+size;\n" + "document." + this.getFormName()
						+ ".submit();" + "\n}\n ");
			}
			html.append("</script>\n");
			html.append("</div>\n");
		}
		html.append(" </form>");

		return html.toString();
	}

	@Override
	public String getStyle() {

		return null;
	}

}
