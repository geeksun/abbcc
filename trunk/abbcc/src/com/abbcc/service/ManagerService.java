package com.abbcc.service;

import java.util.List;

import com.abbcc.pojo.Hyjbxx;
import com.abbcc.vo.MemberPageBean;

public interface ManagerService {
	public int login(String managerName, String pass);

	public int getTotalRows();

	public MemberPageBean listData(String jumpPage);

	public Hyjbxx findById(String hyjbxxid);

	public void auditRegisterMember(Hyjbxx hyjbxx);

	public MemberPageBean listPendMemberData(String jumpPage);

	public Hyjbxx getCustomerById(String hyjbxxid);

	public List getMemberById(String hyjbxxid);

	public MemberPageBean listChargedMemberData(String jumpPage);       
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
