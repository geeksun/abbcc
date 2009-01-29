package com.abbcc.struts.form;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;
import org.apache.struts.action.ActionMessages;
import org.apache.struts.upload.FormFile;
import org.apache.struts.upload.MultipartRequestHandler;

public class ProductUpdateForm extends ActionForm {
	
	  
	private static final long serialVersionUID = -2949440654423974186L;

	public static final String ERROR_PROPERTY_MAX_LENGTH_EXCEEDED = "org.apache.struts.webapp.upload.MaxLengthExceeded"; 

	private FormFile updatePic1;

	private FormFile updatePic2;

	private FormFile updatePic3;

	public FormFile getUpdatePic1() {
		return updatePic1;
	}

	public void setUpdatePic1(FormFile updatePic1) {
		this.updatePic1 = updatePic1;
	}

	public FormFile getUpdatePic2() {
		return updatePic2;
	}

	public void setUpdatePic2(FormFile updatePic2) {
		this.updatePic2 = updatePic2;
	}

	public FormFile getUpdatePic3() {
		return updatePic3;
	}

	public void setUpdatePic3(FormFile updatePic3) {
		this.updatePic3 = updatePic3;
	}
	/*public ActionErrors validate( 
	        ActionMapping mapping, 
	        HttpServletRequest request) { 
	             
	        ActionErrors errors = null; 
	        //has the maximum length been exceeded? 
	        Boolean maxLengthExceeded = 
	            (Boolean) request.getAttribute( 
	                MultipartRequestHandler.ATTRIBUTE_MAX_LENGTH_EXCEEDED); 
	                 
	        if ((maxLengthExceeded != null) && (maxLengthExceeded.booleanValue())) { 
	            errors = new ActionErrors(); 
	            errors.add( 
	                ActionMessages.GLOBAL_MESSAGE , 
	                new ActionMessage("maxLengthExceeded")); 
	            errors.add( 
	                ActionMessages.GLOBAL_MESSAGE , 
	                new ActionMessage("maxLengthExplanation")); 
	        } 
	        return errors; 

	    } 
*/

}
