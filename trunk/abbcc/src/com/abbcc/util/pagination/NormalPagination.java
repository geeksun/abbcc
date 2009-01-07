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
 
	public void style(){
		
	}
	
	
	public String getHtml() {
		if(this.getTotalResults()==0)return "";
		StringBuffer html = new StringBuffer();
		int totalPage=this.getTotalPage();
		Map<String, Object> params=this.getParams();
		int[] values = this.getSelectValue();
		if(values==null)
			   values=new int[]{10,20,50,100};
		html.append("\n<form style=\"margin:0\" name= \"" + getFormName()
				+ "\" method=\"post\" action=\"" + getAction() + "\">\n");
		html.append("<input type=\"hidden\" name= \""
				+ PageConstants.PAGINATION_TOTAL_RESULTS + "\" value=\""
				+ getTotalResults() + "\">\n");
		html.append("<input type=\"hidden\" name= \""
				+ PageConstants.PAGINATION_CURRENT_PAGE + "\" value=\""
				+ this.getCurrentPage() + "\">\n");
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
				if(paramValue!=null&&!paramValue.equals("")){
					html.append("<input type=\"hidden\" name= \"" + paramName
							+ "\" value=\"" + paramValue + "\">\n");
				}
			
			}
		}
		 
		if (totalPage   >= 1) {
			html.append("<div align=\"right\">\n");
			if(this.isShowTotalResults()){
				html.append("当前： 第"+this.getCurrentPage()+"页  共"+this.getTotalPage()+"页 |");
			}
			html .append("<img src='../images/pagination/navLeft.gif' width='14' height='16' alt='第一页' onclick='gotoPage(1)'>\n");
			html .append("<img src='../images/pagination/left.gif' width='16' height='16' alt='上一页'  onclick='gotoPage("
							+ this.getPreviousPage() + ")'>\n");
			html .append("<img src='../images/pagination/right.gif' width='16' height='16'  alt='下一页'     onclick='gotoPage("
							+ this.getNextPage() + ")'>\n");
			html .append("<img src='../images/pagination/navRight.gif' width='14' height='16'  alt='最后一页'  onclick='gotoPage("
							+ totalPage + ")'>\n");

			 
			html.append("<select name='"
					+ PageConstants.PAGINATION_CURRENT_PAGE
					+ "' onchange='gotoPage(this.value)'>\n");

			for (int i = 1; i <= totalPage; i++) {
				html.append("<option value='" + i + "'  "
						+ (i == this.getCurrentPage() ? " selected" : ""));
				html.append(" >\u7B2C" + i + "\u9875</option>\n");

			}
			html.append("</select>\n");

			html.append("每页行数：");
			
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
							html.append(" selected ");
						}
						html.append(" >");
						//html.append("\u6BCF\u9875" + value + "\u6761");
						html.append(value);
						html.append("</option>\n");
					}

				}
				html.append("</select>\n");
			}
		/*	html.append("<script type='text/javascript'>\n  "
					+ "function gotoPage(pageValue){  \n" 
					+ "document."
					+ this.getFormName() + ".action='" + getAction() );*/
			html.append("<script type='text/javascript'>\n  "
					+ "function gotoPage(pageValue){  \n");
			html.append("document."+this.getFormName()+"."+PageConstants.PAGINATION_CURRENT_PAGE
					+".value=pageValue;\n");
			html.append("document." + this.getFormName() + ".submit();" + "\n}\n");
			if (values != null) {
				html.append("function gotopageSize(size){  \n");
				html
						.append("document." + this.getFormName() + "."
								+ PageConstants.PAGINATION_CURRENT_PAGE
								+ ".value=1;\n");
				html.append("document." + this.getFormName() + "."
						+ PageConstants.PAGINATION_ONE_PAGE_SIZE
						+ ".value=size;\n");
				html.append("document." + this.getFormName() + ".submit();"
						+ "\n}\n");
			}
			/*if(this.getAction().contains("?"))
			{
				html.append("&");
			}else
			{
				html.append("?");
			}
			html.append(PageConstants.PAGINATION_CURRENT_PAGE + "='+pageValue; "
					+ "\n" + "document." + this.getFormName() + ".submit();"
					+ "\n}\n");*/
			
			/*if (values!=null) {
				html.append("function gotopageSize(size){  \n" + "document."
						+ this.getFormName() + ".action='" + getAction() );
				if(this.getAction().contains("?")){
					html.append("&");
				}else
				{
					html.append("?");
				}
				html.append(  PageConstants.PAGINATION_CURRENT_PAGE + "=1" + "&"
						+ PageConstants.PAGINATION_ONE_PAGE_SIZE + "='"
						+ "+size;\n" + "document." + this.getFormName()
						+ ".submit();" + "\n}\n ");
			}*/
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
