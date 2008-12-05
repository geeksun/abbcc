package com.abbcc.dao;

import java.util.List;

import com.abbcc.pojo.Hyjbxx;

public interface HyjbxxDAO {
	
	// 插入会员个人资料
	public int insert(Hyjbxx hyjbxx); 

	// 修改会员个人资料
	public void update(Hyjbxx hyjbxx) throws Exception;

	// 删除会员个人资料
	public void delete(int hyjbxx) throws Exception;

	// 根据主键查找会员个人资料
	public Hyjbxx queryById(int hyjbxx) throws Exception;

	// 根据时间排列 *分页* 显示所有未审核的会员个人资料
	public List queryAll(int pageSize, int lineSize) throws Exception;

	//public boolean findByExample(Hyjbxx hy);
	//public int findByName(String name);
	public List<Hyjbxx> findByName(String name);

	public int findByProperty(String name, String pass);

	public void save(Hyjbxx hy); 

}
