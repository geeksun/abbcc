/*
 * FCKeditor - The text editor for internet
 * File Name: FCKeditor.java
 * 	FCKeditor control class.
 *  FCK 编辑器的控制类
 */
 
package com.fredck.FCKeditor;

import javax.servlet.http.HttpServletRequest;

/**
 * The main class of the class lib.<br>
 * It's the container for all properties and the class that generate the output based on browser capabilities and configurations passed by the developer.
 * 这是容器的所有属性和类产生的基础上的产出能力，并配置浏览器通过开发者。
 */
public class FCKeditor {
	
	private FCKeditorConfigurations oConfig;
	private String instanceName;
	private String value = "";
	private String basePath;
	private String toolbarSet = "Default";
	private String width = "100%";
	private String height = "200";
	
	HttpServletRequest request;
	
    /**
     * Get the unique name of the editor
     * @see 得到编辑器的唯一名字
     * @return name
     */
	public String getInstanceName() {
		return instanceName;
	}

    /**
     * Set the unique name of the editor
     * @param value name
     */	
	public void setInstanceName(String value) {
		instanceName=value;
	}

    /**
     * Get the initial value to be edited.<br>
     * In HTML code
     * @return value
     */	
	public String getValue() {
		return value;
	}
	
    /**
     * Set the initial value to be edited.<br>
     * In HTML code
     * @param value value
     */		
	public void setValue(String value) {
		this.value=value;
	}

    /**
     * Get the dir where the FCKeditor files reside on the server
     * @return path
     */		
	public String getBasePath() {
		return basePath;
	}
	
    /**
     * Set the dir where the FCKeditor files reside on the server.<br>
	 *<b>Remarks</b>:<br>
	 *Avoid using relative paths. It is preferable to set the base path starting from the root (/).<br>
	 *Always finish the path with a slash (/).
     * @param value path
     */		
	public void setBasePath(String value) {
		basePath=value;
	}

    /**
     * Get the name of the toolbar to display
     * @return toolbar name
     */	
	public String getToolbarSet() {
		return toolbarSet;
	}

    /**
     * Set the name of the toolbar to display
     * @param value toolbar name
     */		
	public void setToolbarSet(String value) {
		toolbarSet=value;
	}

    /**
     * Get the width of the textarea
     * @return width
     */	
	public String getWidth() {
		return width;
	}

    /**
     * Set the width of the textarea
     * @param value width
     */		
	public void setWidth(String value) {
		width=value;
	}

    /**
     * Get the height of the textarea
     * @return height
     */	
	public String getHeight() {
		return height;
	}

    /**
     * Set the height of the textarea
     * @param value height
     */		
	public void setHeight(String value) {
		height=value;
	}

    /**
     * Get the advanced configuation set.<br>
     * Adding element to this collection you can override the settings specified in the config.js file.
     * @return configuration collection
     */		
	public FCKeditorConfigurations getConfig() {
		return oConfig;
	}

    /**
     * Set the advanced configuation set.
     *
     * @param value configuration collection
     */		
	public void setConfig(FCKeditorConfigurations value) {
		oConfig=value;
	}

    /**
     * Initialize the object setting all value to the default ones.
     * <li>width: 100%</li>
     * <li>height: 200</li>
     * <li>toolbar name: Default</li>
     * <li>basePath: context root + "/FCKeditor/"</li>
     * @param req request object
     */	
	public FCKeditor(HttpServletRequest req){
		request=req;
		basePath = request.getContextPath() + "/FCKeditor/";
		oConfig = new FCKeditorConfigurations() ;
	}

    /**
     * Initialize the object setting the unique name and then all value to the default ones.
     * <li>width: 100%</li>
     * <li>height: 200</li>
     * <li>toolbar name: Default</li>
     * <li>basePath: context root + "/FCKeditor/"</li>
     * @param req request object
     * @param parInstanceName unique name
     */		
	public FCKeditor(HttpServletRequest req, String parInstanceName){
		request=req;
		basePath = request.getContextPath() + "/FCKeditor/";
		instanceName=parInstanceName;
		oConfig = new FCKeditorConfigurations() ;
	}

    /**
     * Initialize the object setting all basic configurations.<br>
     * The basePath is context root + "/FCKeditor/"
     * @param req request object
     * @param parInstanceName unique name
     * @param parWidth width
     * @param parHeight height
     * @param parToolbarSet toolbarSet name
     * @param parValue initial value
     */		
	public FCKeditor(HttpServletRequest req, String parInstanceName, String parWidth, String parHeight, String parToolbarSet, String parValue){
		request=req;
		basePath = request.getContextPath() + "/FCKeditor/";
		instanceName=parInstanceName;
		width=parWidth;
		height=parHeight;
		toolbarSet=parToolbarSet;
		value=parValue;
		oConfig = new FCKeditorConfigurations() ;
	}
	
	
	private boolean isCompatible() {
		String userAgent=request.getHeader("user-agent");
		if(userAgent==null)
			return false;
		userAgent=userAgent.toLowerCase();
		if ((userAgent.indexOf("msie") !=-1) && (userAgent.indexOf("mac") == -1) && (userAgent.indexOf("opera") == -1)) {
			if(retrieveBrowserVersion(userAgent)>=5.5)
				return true;
		}
		else if (userAgent.indexOf("gecko") !=-1){
			if(retrieveBrowserVersion(userAgent)>=20030210)
				return true;
		}
		return false;
	}
	
	private double retrieveBrowserVersion(String userAgent) {
		if(userAgent.indexOf("msie")>-1) {
			String str = userAgent.substring(userAgent.indexOf("msie") + 5);
			return Double.parseDouble(str.substring(0, str.indexOf(";")));
		}
		else {
			String str = userAgent.substring(userAgent.indexOf("gecko") + 6);
			return Double.parseDouble(str.substring(0, 8));
		}
	}
	
	private String HTMLEncode(String txt) {
		txt=txt.replaceAll("&","&amp;");
		txt=txt.replaceAll("<","&lt;");
		txt=txt.replaceAll(">","&gt;");
		txt=txt.replaceAll("\"","&quot;");
		txt=txt.replaceAll("'","&#146;");
		return txt;
	}
	

    /**
     * Generate the HTML Code for the editor.
     * Evalute the browser capabilities and generate the editor if IE 5.5 or Gecko 20030210 or greater,
     * or a simple textarea otherwise. 
     * @return html code
     */	
	public String create() {
		StringBuffer strEditor=new StringBuffer();
		
		strEditor.append("<div>");
		String encodedValue=HTMLEncode(value);
		
		if(isCompatible()) {
			strEditor.append("<input type=\"hidden\" id=\"" + instanceName + "\" name=\"" + instanceName + "\" value=\"" + encodedValue + "\">");
			strEditor.append(createConfigHTML());
			strEditor.append(createIFrameHTML());
		}
		else{
			strEditor.append("<TEXTAREA name=\"" + instanceName + "\" rows=\"4\" cols=\"40\" style=\"WIDTH: " + width + "; HEIGHT: " + height + "\" wrap=\"virtual\">"+encodedValue+"</TEXTAREA>");
		}
		strEditor.append("</div>");
		return strEditor.toString();
	}
	
	private String createConfigHTML() {
		String configStr=oConfig.getUrlParams();
		if(!configStr.equals(""))
			configStr=configStr.substring(1);			
		return "<input type=\"hidden\" id=\"" + instanceName + "___Config\" value=\"" + configStr + "\">" ;
	}

	private String createIFrameHTML() {
		String sLink=basePath + "editor/fckeditor.html?InstanceName=" + instanceName;
		if (!toolbarSet.equals(""))
			sLink+="&Toolbar=" + toolbarSet;
		 return "<iframe id=\"" + instanceName + "___Frame\" src=\"" + sLink + "\" width=\"" + width + "\" height=\"" + height + "\" frameborder=\"no\" scrolling=\"no\"></iframe>";
	}
	
	
}
