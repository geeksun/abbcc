package com.abbcc.common;

import java.util.HashMap;

public class SessionUtil {
	private static HashMap hmSession = new HashMap();

	public static void putSession(String strSID, String userName) throws Exception {
		if (!hmSession.containsKey(strSID)) {
			hmSession.put(strSID, userName);
		}
	}

	public static String getSession(String strSID) throws Exception {
		return (String) hmSession.get(strSID);
	}

	public static void removeSession(String strSID) throws Exception {
		if (hmSession.containsKey(strSID)) {
			hmSession.remove(strSID);
		}
	}

}
