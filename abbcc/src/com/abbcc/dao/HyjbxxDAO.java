package com.abbcc.dao;

import java.util.List;
import com.abbcc.pojo.Hyjbxx;

public interface HyjbxxDAO {
	//插入会员基本信息
	public int add(Hyjbxx hyjbxx);  

	//修改会员基本信息
	public void update(Hyjbxx hyjbxx);

	//删除会员基本信息
	public void delete(int hyjbxx) throws Exception;

	//根据主键查找会员基本信息
	public Hyjbxx queryById(int hyjbxx) throws Exception;

	//根据时间排列 *分页* 显示所有未审核的会员基本信息
	public List queryAll(int pageSize, int lineSize) throws Exception;

	public List findByName(String name);

	public int findByProperty(String name, String pass);
	
	public String getIdByName(String hydlm);

	//根据主键查找会员基本信息
	public Hyjbxx findById(String hyjbxxid);  
	
}
