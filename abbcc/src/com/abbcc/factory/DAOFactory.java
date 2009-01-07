package com.abbcc.factory;

import com.abbcc.dao.*;
import com.abbcc.dao.impl.*;

public class DAOFactory {
	public static PubAbbcc getPubAbbcc() {
		return PubAbbcc.getInstance();
	}

	 

	public static DljmsxDAO getDljmsxDAOInstance() {
		return DljmsxDAOImpl.getInstance();
	}

	public static FwsxDAO getFwsxDAOInstance() {
		return FwsxDAOImpl.getInstance();
	}

	public static GlyDAO getGlyDAOInstance() {
		return GlyDAOImpl.getInstance();
	}

	/*public static GsjbxxDAO getGsjbxxDAOInstance() {
		//return GsjbxxDAOImpl.getInstance();
	}*/

	/*public static GsxxxxDAO getGsxxxxDAOInstance() {
		return GsxxxxDAOImpl.getInstance();
	}
*/
	public static HygrzlDAO getHygrzlDAOInstance() {
		return HygrzlDAOImpl.getInstance();
	}

	public static HygzjlDAO getHygzjlDAOInstance() {
		return HygzjlDAOImpl.getInstance();
	}

	public static HyjyjlDAO getHyjyjlDAOInstance() {
		//return HyjyjlDAOImpl.getInstance();
		return null;
	}

	public static HzsxDAO getHzsxDAOInstance() {
		return HzsxDAOImpl.getInstance();
	}

	public static HyshDAO getHyshDAOInstance() {
		return new HyshDAOImpl();
	}

	public static JghzDAO getJghzDAOInstance() {
		return JghzDAOImpl.getInstance();
	}

	 

	public static WzjbxxDAO getWzjbxxDAOInstance() {
		return WzjbxxDAOImpl.getInstance();
	}

	public static XxshDAOImpl getXxshDAOInstance() {
		return XxshDAOImpl.getInstance();
	}

	public static ZpxxDAO getZpxxDAOInstance() {
		return ZpxxDAOImpl.getInstance();
	}
}
