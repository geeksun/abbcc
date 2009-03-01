package com.abbcc.dao;

import com.abbcc.pojo.Pz;

public interface PzDAO {
	public Pz getPzByTableName(String tableName);

	public void updatePz(Pz pz);

	public void updateTableID(String tableName);

	public void updateTableCount(String tableName);

	public Pz updateAndGetPz(String tableName);
	
}
