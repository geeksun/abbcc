package com.abbcc.service.impl;

import java.util.List;

import com.abbcc.dao.TradeInfoDAO;
import com.abbcc.service.TradeInfoService;

public class TradeInfoServiceImpl implements TradeInfoService {
	private TradeInfoDAO tradeInfoDao;

	public void setTradeInfoDao(TradeInfoDAO tradeInfoDao) {
		this.tradeInfoDao = tradeInfoDao;
	}

	public List getTableNameById(String id) {
		List list = tradeInfoDao.getTableNameById(id);
		return list;
	}
	

}
