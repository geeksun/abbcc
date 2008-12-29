package com.abbcc.service.impl;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.abbcc.dao.CpgqxxDAO;
import com.abbcc.dao.JytjDAO;
import com.abbcc.dao.MessageDAO;
import com.abbcc.dao.ProductDAO;
import com.abbcc.dao.ProductTypeDAO;
import com.abbcc.dao.PzDAO;

public class BaseServiceImpl {
	
	protected  Log log = LogFactory.getLog(BaseServiceImpl.class);

	protected ProductDAO productDao;

	protected ProductTypeDAO productTypeDao;

	protected PzDAO pzDao;

	protected CpgqxxDAO cpgqxxDao;

	protected JytjDAO jytjDao;

	protected MessageDAO messageDao;
	

	public CpgqxxDAO getCpgqxxDao() {
		return cpgqxxDao;
	}

	public void setCpgqxxDao(CpgqxxDAO cpgqxxDao) {
		this.cpgqxxDao = cpgqxxDao;
	}

	public JytjDAO getJytjDao() {
		return jytjDao;
	}

	public void setJytjDao(JytjDAO jytjDao) {
		this.jytjDao = jytjDao;
	}

	public ProductDAO getProductDao() {
		return productDao;
	}

	public void setProductDao(ProductDAO productDao) {
		this.productDao = productDao;
	}

	public ProductTypeDAO getProductTypeDao() {
		return productTypeDao;
	}

	public void setProductTypeDao(ProductTypeDAO productTypeDao) {
		this.productTypeDao = productTypeDao;
	}

	public PzDAO getPzDao() {
		return pzDao;
	}

	public void setPzDao(PzDAO pzDao) {
		this.pzDao = pzDao;
	}

	public MessageDAO getMessageDao() {
		return messageDao;
	}

	public void setMessageDao(MessageDAO messageDao) {
		this.messageDao = messageDao;
	}

}
