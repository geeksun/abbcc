package com.abbcc.dao;

import java.util.List;

import com.abbcc.pojo.TradeInfo;

public interface TradeInfoDAO extends BaseDao {
	//	 �����Ա��������
	public void save(TradeInfo trade);
	// �޸Ļ�Ա��������
	public void update(TradeInfo trade);

	// ɾ����Ա��������
	public void delete(int tradeInfoId);

	// �����������һ�Ա��������
	public TradeInfo queryById(int tradeInfoId) ;

	public List findByProperty(String name);

	public int findByProperty(String name, String pass);

	//public List getMemberByName(String customer); 
}
