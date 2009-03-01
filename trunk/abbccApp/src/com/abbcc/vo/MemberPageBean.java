package com.abbcc.vo;

import java.util.ArrayList;
import com.abbcc.service.ManagerService;

/**
 * @author ��־ǿ
 *  ��Ա�����ҳ
 *  create at 2009-1-20
 */
public class MemberPageBean {
	public int currentPage;				// ��ǰҳ��
	public int totalPage;				// ��ҳ��
	public int totalRows;				// ������
	public int rowsPage = 10;			// ÿҳ��ʾ������
	public ArrayList data;				// ��װҳ����ʾ������
	public MemberPageBean(){}
	public void countTotalPage(){		// ������ҳ��
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
