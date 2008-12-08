package com.abbcc.dao;

import java.util.List;

import com.abbcc.pojo.TradeInfo;

public interface TradeInfoDAO  {
	//	 插入会员个人资料
	public void save(TradeInfo trade);
	// 修改会员个人资料
	public void update(TradeInfo trade);

	// 删除会员个人资料
	public void delete(int tradeInfoId);

	// 根据主键查找会员个人资料
	public TradeInfo queryById(int tradeInfoId) ;

	public List findByProperty(String name);

	public int findByProperty(String name, String pass);
	
	public List getTableNameById(String id); 

	//public List getMemberByName(String customer); 
}
