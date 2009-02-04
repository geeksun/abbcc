package com.abbcc.service.impl;

import java.util.ArrayList;
import java.util.List;

import com.abbcc.dao.GsjbxxDAO;
import com.abbcc.dao.HyjbxxDAO;
import com.abbcc.dao.ManagerDAO;
import com.abbcc.pojo.Hyjbxx;
import com.abbcc.service.ManagerService;
import com.abbcc.vo.MemberPageBean;

public class ManagerServiceImpl implements ManagerService {
	private ManagerDAO managerDao;
	private HyjbxxDAO hyjbxxDao;
	private GsjbxxDAO gsjbxxDao;

	public void setGsjbxxDao(GsjbxxDAO gsjbxxDao) {
		this.gsjbxxDao = gsjbxxDao;
	}

	public void setManagerDao(ManagerDAO managerDao) {
		this.managerDao = managerDao;
	}
	
	public void setHyjbxxDao(HyjbxxDAO hyjbxxDao) {
		this.hyjbxxDao = hyjbxxDao;
	}
	
	public int login(String managerName, String pass) {
		return managerDao.findByProperty(managerName, pass);
	}

	public int getTotalRows() {
		int totalRows = hyjbxxDao.getTotalRows();
		return totalRows;
	}

	public MemberPageBean listData(String jumpPage) {
		MemberPageBean page = new MemberPageBean(this);
		
		int pageNum = Integer.parseInt(jumpPage);
		if(pageNum<0)
			pageNum = 1;
		if(pageNum>page.totalPage)
			pageNum = page.totalPage;
		String sql = "from Hyjbxx order by hyjbxxid DESC";
		ArrayList data = hyjbxxDao.getData(sql,page.rowsPage*(pageNum-1), page.rowsPage);
		page.currentPage = pageNum;
		page.data = data;
		
		return page;
	}

	public void auditRegisterMember(Hyjbxx hyjbxx) {
		hyjbxxDao.auditRegisterMember(hyjbxx);
	}

	public Hyjbxx findById(String hyjbxxid) {
		return hyjbxxDao.findById(hyjbxxid);
	}

	public MemberPageBean listPendMemberData(String jumpPage) {
		MemberPageBean page = new MemberPageBean(this);
		
		int pageNum = Integer.parseInt(jumpPage);
		if(pageNum<0)
			pageNum = 1;
		if(pageNum>page.totalPage)
			pageNum = page.totalPage;
		String sql = "from Hyjbxx where sfyx='0' order by hyjbxxid DESC";
		ArrayList data = hyjbxxDao.getData(sql,page.rowsPage*(pageNum-1), page.rowsPage);
		page.currentPage = pageNum;
		page.data = data;
		
		return page;
	}

	public Hyjbxx getCustomerById(String hyjbxxid) {
		Hyjbxx hyjbxx = hyjbxxDao.findById(hyjbxxid);
		return hyjbxx;
	}

	public List getMemberById(String hyjbxxid) {
		List list = gsjbxxDao.getMemberByName(hyjbxxid);
		return  list;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
