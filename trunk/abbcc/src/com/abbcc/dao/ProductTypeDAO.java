package com.abbcc.dao;

import java.util.List;

public interface ProductTypeDAO {

	List getProductTypeByParentId(int parentId);

}
