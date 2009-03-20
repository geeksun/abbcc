/*
 *  File Name: SimpleUploaderServlet.java
 * 	Java File Uploader class. 
 *  JAVA 文件上传类  
 */ 
package com.fredck.FCKeditor.uploader;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.DiskFileUpload;
import org.apache.commons.fileupload.FileItem;

import com.abbcc.common.AppConstants;
import com.abbcc.common.StringUtils;

/**
 *  Servlet to upload files.<br>
 *  This servlet accepts just file uploads, eventually with a parameter specifying file type
 */

public class SimpleUploaderServlet extends HttpServlet {
	
	private static String baseDir;					//上传的基础目录
	private static boolean debug=false;
	private static boolean enabled=false;
	private static Hashtable allowedExtensions;		//允许的扩展名（文件类型）
	private static Hashtable deniedExtensions;		//拒绝的扩展名（文件类型）
	
	/**
	 * Retrieve from the servlet configuration the "baseDir" which is the root of the file repository:<br>
	 * If not specified the value of "/UserFiles/" will be used.<br>
	 * Also it retrieve all allowed and denied extensions to be handled.
	 * 取出从 servlet的配置的“ baseDir ” ，这是根本的档案库如下： <br> 
	 * 如果没有指定的值为“ / UserFiles / ”将被使用。 <br> 
	 * 又允许它检索所有，并否认扩展处理。
	 * 根据从client端的cookie的不同值,把文件传到不同的文件 Directory
	 */
	 public void init() throws ServletException {
	 	debug=(new Boolean(getInitParameter("debug"))).booleanValue();
	 	if(debug) System.out.println("\r\n---- SimpleUploaderServlet initialization started ----");
	 	
		baseDir=getInitParameter("baseDir");
		enabled=(new Boolean(getInitParameter("enabled"))).booleanValue();
		if(baseDir==null)
			baseDir="/UserFiles/";

		String realBaseDir = getServletContext().getRealPath(baseDir);
		File baseFile=new File(realBaseDir);
		if(!baseFile.exists()){
			baseFile.mkdir();
		}
		
		allowedExtensions = new Hashtable(3);
		deniedExtensions = new Hashtable(3);
				
		allowedExtensions.put("File",stringToArrayList(getInitParameter("AllowedExtensionsFile")));
		deniedExtensions.put("File",stringToArrayList(getInitParameter("DeniedExtensionsFile")));

		allowedExtensions.put("Image",stringToArrayList(getInitParameter("AllowedExtensionsImage")));
		deniedExtensions.put("Image",stringToArrayList(getInitParameter("DeniedExtensionsImage")));
		
		allowedExtensions.put("Flash",stringToArrayList(getInitParameter("AllowedExtensionsFlash")));
		deniedExtensions.put("Flash",stringToArrayList(getInitParameter("DeniedExtensionsFlash")));
		
		if(debug) System.out.println("---- SimpleUploaderServlet initialization completed ----\r\n");
	}
	

	/**
	 * Manage the Upload requests.<br>
	 * The servlet accepts commands sent in the following format:<br>
	 * simpleUploader?Type=ResourceType<br><br>
	 * It store the file (renaming it in case a file with the same name exists) and then return an HTML file
	 * with a javascript command in it.
	 * 管理上传请求。 <br> 
	 * 在接受命令的servlet发送以下面的格式如下： <br> 
	 * simpleUploader ？类型= ResourceType <br> <br> 
	 * 它存储文件（重新命名它的情况下一个文件具有相同名称的存在） ，然后返回一个HTML文件
	 * 使用JavaScript命令它
	 */	
	public void doPost(HttpServletRequest request, HttpServletResponse response) 
		throws ServletException, IOException {
		if (debug) System.out.println("--- BEGIN DOPOST ---");

		response.setContentType("text/html; charset=UTF-8");
		response.setHeader("Cache-Control","no-cache");
		PrintWriter out = response.getWriter();

		String typeStr = request.getParameter("Type");
		
		//cookie读取,根据cookie的不同把文件上传到不同的dir
		String strength_cookie = "";
		Cookie[] strength_path = request.getCookies();
		if(strength_path!=null){
			for(int i=0;i<strength_path.length;i++){
				Cookie cookie = strength_path[i];
				if(cookie.getName().equals(AppConstants.FCK_UPLOADPATH)){
					strength_cookie = cookie.getValue();
					//销毁cookie
					Cookie cover_path = new Cookie(AppConstants.FCK_UPLOADPATH, "");
					response.addCookie(cover_path);
				}
			}
		}
		
		//要上传到的路径
		String currentPath;
		if(StringUtils.isBlank(strength_cookie)){
			currentPath = baseDir+strength_cookie;
		}else{
			currentPath = baseDir+typeStr;
		}
		
		String currentDirPath=getServletContext().getRealPath(currentPath);
		//检查文件夹是否存在
		File validDir = new File(currentDirPath);
		if(!validDir.exists()){
			//validDir.createNewFile();
			validDir.mkdir();
		}
		
		currentPath=request.getContextPath()+currentPath;
		
		if (debug) System.out.println(currentDirPath);
		
		//操作状态返回值
		String retVal="0";
		String newName="";
		String fileUrl="";
		String errorMessage="";
		
		//可以上传
		if(enabled) {		
			DiskFileUpload upload = new DiskFileUpload();
			try {
				List items = upload.parseRequest(request);
				
				Map fields=new HashMap();
				
				Iterator iter = items.iterator();
				while (iter.hasNext()) {
				    FileItem item = (FileItem) iter.next();
				    if (item.isFormField())
				    	fields.put(item.getFieldName(),item.getString());
				    else
				    	fields.put(item.getFieldName(),item);
				}
				FileItem uplFile=(FileItem)fields.get("NewFile");
				String fileNameLong=uplFile.getName();
				fileNameLong=fileNameLong.replace('\\','/');
				
				String[] pathParts=fileNameLong.split("/");
				String fileName=pathParts[pathParts.length-1];
				
				//去除扩展名的 file名字
				String nameWithoutExt = getNameWithoutExtension(fileName);
				String ext=getExtension(fileName);
				
				//父路径＋子路径创建新文件实例
				File pathToSave = new File(currentDirPath,fileName);
				fileUrl=currentPath+"/"+fileName;
				
				//check 文件类型是否允许
				if(extIsAllowed(typeStr,ext)) 
				{
					if(checkFileSize(uplFile))
					{
						int counter = 1;
						//如果有重名文件,默认在文件后加（i）加以识别
						while(pathToSave.exists()){
							newName = nameWithoutExt + "("+counter+")" + "." + ext;
							fileUrl=currentPath+"/"+newName;
							retVal="201";
							pathToSave=new File(currentDirPath,newName);
							counter++;
							}
						uplFile.write(pathToSave);
					}else{
						if(debug) System.out.println("The capacity of the file too larger");
						retVal = "101";
					}
				}
				else {
					retVal="202";
					errorMessage="";
					if (debug) System.out.println("Invalid file type: " + ext);	
				}
			}catch (Exception ex) {
				if (debug) ex.printStackTrace();
				retVal="203";
			}
		}
		else {
			retVal="1";
			errorMessage="This file uploader is disabled. Please check the WEB-INF/web.xml file";
		}
		
		out.println("<script type=\"text/javascript\">");
		out.println("window.parent.OnUploadCompleted("+retVal+",'"+fileUrl+"','"+newName+"','"+errorMessage+"');");
		out.println("</script>");
		out.flush();
		out.close();
	
		if (debug) System.out.println("--- END DOPOST ---");	
	}


	/**
	 * @param uplFile
	 * @return 检查文件的大小是否符合要求 暂定1*M
	 */
	private boolean checkFileSize(FileItem uplFile)
	{
		long size = uplFile.getSize();
		if(size>1024000)
			return false;
		return true;
	}


	/*
	 * This method was fixed after Kris Barnhoorn (kurioskronic) submitted SF bug #991489
	 */
  	private static String getNameWithoutExtension(String fileName) {
    		return fileName.substring(0, fileName.lastIndexOf("."));
    	}
    	
	/*
	 * This method was fixed after Kris Barnhoorn (kurioskronic) submitted SF bug #991489
	 */
	private String getExtension(String fileName) {
		return fileName.substring(fileName.lastIndexOf(".")+1);
	}

	
	/**
	 * Helper function to convert the configuration string to an ArrayList.
	 * 助手功能转换配置字符串到ArrayList 
	 */
	 private ArrayList stringToArrayList(String str) {
		 if(debug) System.out.println(str);
		 String[] strArr=str.split("\\|");
		 	 
		 ArrayList<String> tmp=new ArrayList<String>();
		 if(str.length()>0) {
			 for(int i=0;i<strArr.length;++i) {
			 		if(debug) System.out.println(i +" - "+strArr[i]);
			 		tmp.add(strArr[i].toLowerCase()); 
				}
			}
			return tmp;
	 }


	/**
	 *  Helper function to verify if a file extension is allowed or not allowed.
	 *  辅助功能，以验证如果文件扩展名是允许或不允许的。
	 */
	 private boolean extIsAllowed(String fileType, String ext) {
	 		ext = ext.toLowerCase();
	 		
	 		ArrayList allowList=(ArrayList)allowedExtensions.get(fileType);
	 		ArrayList denyList=(ArrayList)deniedExtensions.get(fileType);
	 		
	 		if(allowList.size()==0)
	 			if(denyList.contains(ext))
	 				return false;
	 			else
	 				return true;

	 		if(denyList.size()==0)
	 			if(allowList.contains(ext))
	 				return true;
	 			else
	 				return false;
	 
	 		return false;
	 }

}

