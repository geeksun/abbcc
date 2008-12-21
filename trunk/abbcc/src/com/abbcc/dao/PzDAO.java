package com.abbcc.dao;

import com.abbcc.pojo.Pz;

public interface PzDAO {
	Pz getPzByTableName(String tableName);
	void updatePz(Pz pz);

}
