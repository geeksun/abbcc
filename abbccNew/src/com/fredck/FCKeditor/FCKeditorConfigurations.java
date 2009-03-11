/*
 * FCKeditor - The text editor for internet
 * File Name: FCKeditorConfigurations.java
 * FCK 配置容器-->FCKeditor configurations container.
 */

package com.fredck.FCKeditor;

import java.util.*;

/**
 * Contains the configuration settings for the FCKEditor.<br>
 * Adding element to this collection you can override the settings specified in the config.js file.
 */
public class FCKeditorConfigurations extends HashMap{
	
	/**
     * Initialize the configuration collection
     */
	public FCKeditorConfigurations() {
		super();
	}

	/**
     * Generate the url parameter sequence used to pass this configuration to the editor.
     *  生成URL参数序列用于传递到编辑器进行配置
     *@return html endocode sequence of configuration parameters
     */	
	public String getUrlParams() {
		StringBuffer osParams = new StringBuffer();
		
		for(Iterator i=this.entrySet().iterator();i.hasNext();) {
			Map.Entry entry = (Map.Entry) i.next();
			if(entry.getValue()!=null)
				osParams.append("&"+encodeConfig(entry.getKey().toString())+"="+encodeConfig(entry.getValue().toString()));
		}
		return osParams.toString();
	}
	
	/**
	 * @param txt
	 * @see 对配置编码 
	 */
	private String encodeConfig(String txt) {
		txt=txt.replaceAll("&","%26");
		txt=txt.replaceAll("=","%3D");
		txt=txt.replaceAll("\"","%22");
		return txt;
	}
	
}
