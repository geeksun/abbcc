package com.abbcc.dao;

import java.util.List;
import com.abbcc.pojo.Jghz;

public interface JghzDAO {
	// 插入加工合作
	public void insert(Jghz jghz) throws Exception;

	// 修改加工合作
	public void update(Jghz jghz) throws Exception;

	// 删除加工合作
	public void delete(int hyjbxxid, int jghzid) throws Exception;

	// 根据主键查找加工合作
	public Jghz queryById(int hyjbxxid, int jghzid) throws Exception;

	// 根据时间排列显示所有未审核的加工合作
	public List queryAll(int hyjbxxid, int currentPage, int lineSize)
			throws Exception;
}
