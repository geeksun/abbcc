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

	public String getSubCategory(String topCatFormKey) {
		List list = tradeInfoDao.getTableNameById(topCatFormKey);
		StringBuffer su = new StringBuffer();
		
		for(int i=0;i<list.size();i++){
			try {
				su.append("\r<option value='" + list.get(i).getClass().getField("productId") + "' />" + list.get(i).getClass().getField("tableName") + "</option>");
			} catch (SecurityException e) {
				e.printStackTrace();
			} catch (NoSuchFieldException e) {
				e.printStackTrace();
			}
		}
		System.out.println(su);
		return su.toString();
	}

}
