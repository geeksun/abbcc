/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.abbcc.struts.form;

import javax.servlet.http.HttpServletRequest;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;

/** 
 * MyEclipse Struts
 * Creation date: 10-02-2008
 * 
 * XDoclet definition:
 * @struts.form name="userForm"
 */
public class adminLoginForm extends ActionForm {
	/*
	 * Generated fields
	 */

	/** password property */
	private String password;

	/** user property */
	private String user;

	/*
	 * Generated Methods
	 */

	/** 
	 * Method validate
	 * @param mapping
	 * @param request
	 * @return ActionErrors
	 */
	public ActionErrors validate(ActionMapping mapping,
			HttpServletRequest request) {
		// TODO Auto-generated method stub
		return null;
	}

	/** 
	 * Method reset
	 * @param mapping
	 * @param request
	 */
	public void reset(ActionMapping mapping, HttpServletRequest request) {
		// TODO Auto-generated method stub
	}

	/** 
	 * Returns the password.
	 * @return String
	 */
	public String getPassword() {
		return password;
	}

	/** 
	 * Set the password.
	 * @param password The password to set
	 */
	public void setPassword(String password) {
		this.password = password;
	}

	/** 
	 * Returns the user.
	 * @return String
	 */
	public String getUser() {
		return user;
	}

	/** 
	 * Set the user.
	 * @param user The user to set
	 */
	public void setUser(String user) {
		this.user = user;
	}
}