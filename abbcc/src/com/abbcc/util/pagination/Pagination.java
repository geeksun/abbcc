package com.abbcc.util.pagination;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

/**
 * 
 * @author dongyili
 * 
 * 
 */

public abstract class Pagination implements Serializable {
	private Map<String, Object> params;
	private String tableClass;
	private String action;
	private String anchor;
	private int currentPage; 
	private int firstResult;
	private int totalResults;
	private int onePageSize;
	private int totalPage;
	private int nextPage;
	private int previousPage;
	private int formCount;
	
	private boolean showTotalResults=true;
 
	private int[] selectValue;
	
	
	
	public boolean isShowTotalResults() {
		return showTotalResults;
	}

	public void setShowTotalResults(boolean showTotalResults) {
		this.showTotalResults = showTotalResults;
	}

	/**
	 * @return the anchor
	 */
	public String getAnchor() {
		return anchor;
	}

	/**
	 * @param anchor the anchor to set
	 */
	public void setAnchor(String anchor) {
		this.anchor = anchor;
	}

	public Pagination(int currentPage, String action, int onePageSize,
			Map<String, Object> params,int[] selectVaue) {
		this.selectValue=  selectVaue;
		this.params = params;
		this.action = action;
		this.onePageSize = onePageSize;
		if (currentPage > 1)
			this.currentPage = currentPage;
		else
			this.currentPage = 1;

		// this.setCurrentPage(currentPage);
		// this.setTotalResults(totalResults);
		this.firstResult = (this.currentPage - 1) * this.onePageSize;
		if (this.currentPage > 1) {
			this.previousPage = this.currentPage - 1;
		} else {
			this.previousPage = 1;
		}

	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
		if (currentPage <= 0)
			this.currentPage = 1;
		if (currentPage > this.totalPage)
			this.currentPage = totalPage;
		this.firstResult = (this.currentPage - 1) * this.onePageSize;

	}

	public int getOnePageSize() {
		return onePageSize;
	}

	public void setOnePageSize(int onePageSize) {
		this.onePageSize = onePageSize;
	}

	public int getTotalResults() {
		return totalResults;
	}

	public void setTotalResults(int totalResults) {
		this.totalResults = totalResults;
		if (totalResults % this.onePageSize == 0) {
			this.totalPage = totalResults / this.onePageSize;
		} else {
			this.totalPage = (int) Math.floor(totalResults / this.onePageSize) + 1;
		}

		if (this.totalPage == 0) {
			this.totalPage = 1;
		}
		if (this.currentPage > totalPage) {
			this.currentPage = totalPage;
			this.firstResult = (this.currentPage - 1) * this.onePageSize;
			
		}
		if (this.currentPage > 1) {
			this.previousPage = this.currentPage - 1;
		} else {
			this.previousPage = 1;
		}
	}

	public int getFirstResult() {
		return firstResult;
	}

	public abstract String getHtml();

	public int getNextPage() {
		if (this.currentPage < this.totalPage) {
			this.nextPage = this.currentPage + 1;
		} else {
			this.nextPage = this.totalPage;
		}
		return nextPage;
	}

	public int getPreviousPage() {
		return previousPage;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public Map<String, Object> getParams() {
		return params;
	}

	public void setParams(Map<String, Object> params) {
		this.params = params;
	}

	public String getAction() {
		return action;
	}
	
	public String getFormName(){
		 formCount++;
		return "PaginationForm" ;
		
	}
	abstract public String getStyle();

	/**
	 * @return the tableClass
	 */
	public String getTableClass() {
		return tableClass;
	}

	/**
	 * @param tableClass the tableClass to set
	 */
	public void setTableClass(String tableClass) {
		this.tableClass = tableClass;
	}
	public String getCurrentPageHidden(){
		return "<input type='hidden' name='"+PageConstants.PAGINATION_CURRENT_PAGE+"' value='"+this.currentPage+"' >";
	}

	 

	public int[] getSelectValue() {
		return selectValue;
	}

	public void setSelectValue(int[] selectValue) {
		this.selectValue = selectValue;
	}

 

}
