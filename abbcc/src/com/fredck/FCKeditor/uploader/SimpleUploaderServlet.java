/*
 *  File Name: SimpleUploaderServlet.java
 * 	Java File Uploader class. 
 *  JAVA �ļ��ϴ���  
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
	
	private static String baseDir;					//�ϴ��Ļ���Ŀ¼
	private static boolean debug=false;
	private static boolean enabled=false;
	private static Hashtable allowedExtensions;		//�������չ�����ļ����ͣ�
	private static Hashtable deniedExtensions;		//�ܾ�����չ�����ļ����ͣ�
	
	/**
	 * Retrieve from the servlet configuration the "baseDir" which is the root of the file repository:<br>
	 * If not specified the value of "/UserFiles/" will be used.<br>
	 * Also it retrieve all allowed and denied extensions to be handled.
	 * ȡ���� servlet�����õġ� baseDir �� �����Ǹ����ĵ��������£� <br> 
	 * ���û��ָ����ֵΪ�� / UserFiles / ������ʹ�á� <br> 
	 * ���������������У���������չ����
	 * ���ݴ�client�˵�cookie�Ĳ�ֵͬ,���ļ�������ͬ���ļ� Directory
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
	 * �����ϴ����� <br> 
	 * �ڽ��������servlet����������ĸ�ʽ���£� <br> 
	 * simpleUploader ������= ResourceType <br> <br> 
	 * ���洢�ļ��������������������һ���ļ�������ͬ���ƵĴ��ڣ� ��Ȼ�󷵻�һ��HTML�ļ�
	 * ʹ��JavaScript������
	 */	
	public void doPost(HttpServletRequest request, HttpServletResponse response) 
		throws ServletException, IOException {
		if (debug) System.out.println("--- BEGIN DOPOST ---");

		response.setContentType("text/html; charset=UTF-8");
		response.setHeader("Cache-Control","no-cache");
		PrintWriter out = response.getWriter();

		String typeStr = request.getParameter("Type");
		
		//cookie��ȡ,����cookie�Ĳ�ͬ���ļ��ϴ�����ͬ��dir
		String strength_cookie = "";
		Cookie[] strength_path = request.getCookies();
		if(strength_path!=null){
			for(int i=0;i<strength_path.length;i++){
				Cookie cookie = strength_path[i];
				if(cookie.getName().equals(AppConstants.FCK_UPLOADPATH)){
					strength_cookie = cookie.getValue();
					//����cookie
					Cookie cover_path = new Cookie(AppConstants.FCK_UPLOADPATH, "");
					response.addCookie(cover_path);
				}
			}
		}
		
		//Ҫ�ϴ�����·��
		String currentPath;
		if(StringUtils.isBlank(strength_cookie)){
			currentPath = baseDir+strength_cookie;
		}else{
			currentPath = baseDir+typeStr;
		}
		
		String currentDirPath=getServletContext().getRealPath(currentPath);
		//����ļ����Ƿ����
		File validDir = new File(currentDirPath);
		if(!validDir.exists()){
			//validDir.createNewFile();
			validDir.mkdir();
		}
		
		currentPath=request.getContextPath()+currentPath;
		
		if (debug) System.out.println(currentDirPath);
		
		//����״̬����ֵ
		String retVal="0";
		String newName="";
		String fileUrl="";
		String errorMessage="";
		
		//�����ϴ�
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
				
				//ȥ����չ���� file����
				String nameWithoutExt = getNameWithoutExtension(fileName);
				String ext=getExtension(fileName);
				
				//��·������·���������ļ�ʵ��
				File pathToSave = new File(currentDirPath,fileName);
				fileUrl=currentPath+"/"+fileName;
				
				//check �ļ������Ƿ�����
				if(extIsAllowed(typeStr,ext)) 
				{
					if(checkFileSize(uplFile))
					{
						int counter = 1;
						//����������ļ�,Ĭ�����ļ���ӣ�i������ʶ��
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
	 * @return ����ļ��Ĵ�С�Ƿ����Ҫ�� �ݶ�1*M
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
	 * ���ֹ���ת�������ַ�����ArrayList 
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
	 *  �������ܣ�����֤����ļ���չ�������������ġ�
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

