package com.abbcc.vo;

import java.util.ArrayList;
import com.abbcc.service.ManagerService;

/**
 * @author 姜志强
 *  会员管理分页
 *  create at 2009-1-20
 */
public class MemberPageBean {
	public int currentPage;				// 当前页数
	public int totalPage;				// 总页数
	public int totalRows;				// 总行数
	public int rowsPage = 10;			// 每页显示多少行
	public ArrayList data;				// 封装页面显示的数据
	public MemberPageBean(){}
	public void countTotalPage(){		// 计算总页数
		if(totalRows%rowsPage==0){
			this.totalPage = totalRows/rowsPage;
		}
		else{
			this.totalPage = totalRows/rowsPage + 1;
		}
	}
	public ArrayList getData(){				
		return data;
	}			
	public int getTotalPage(){
		return this.totalPage;		
	}
	public int getCurrentPage(){
		return this.currentPage;
	}
	public int getTotalRows(){
		return this.totalRows;
	}
	public int getRowsPage(){
		return this.rowsPage;
	}
	public MemberPageBean(ManagerService managerService){
		this.totalRows = managerService.getTotalRows();
		this.countTotalPage();
	}
}
