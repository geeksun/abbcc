/*
 *  File Name: ConnectorServlet.java
 * 	Java Connector for Resource Manager class.
 * 	Simone Chiaretta (simo@users.sourceforge.net)
 *  Java连接器的资源管理器类：创建和浏览文件目录
 */ 
package com.fredck.FCKeditor.connector;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;

import org.apache.commons.fileupload.DiskFileUpload;
import org.apache.commons.fileupload.FileItem;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;

/**
 * Servlet to upload and browse files.<br>
 * This servlet accepts 4 commands used to retrieve and create files and folders from a server directory.
 * The allowed commands are:
 * <li>GetFolders: Retrive the list of directory under the current folder
 * <li>GetFoldersAndFiles: Retrive the list of files and directory under the current folder
 * <li>CreateFolder: Create a new directory under the current folder
 * <li>FileUpload: Send a new file to the server (must be sent with a POST)
 * 文件连接器
 * Servlet的上传和浏览文件。 <br> 
 * 本的servlet接受4命令用于检索和创建文件和文件夹从一个服务器目录。 
 * 在允许的命令如下： 
 * <li> GetFolders ：检索的清单目录下的当前文件夹
 * <li> GetFoldersAndFiles ：检索的文件列表和目录下的当前文件夹
 * <li> CreateFolder ：创建一个新的目录下的当前文件夹
 * <li> FileUpload ：发送一个新的文件到服务器（必须发出帖子）
 */

public class ConnectorServlet extends HttpServlet {
	
	private static String baseDir;
	private static boolean debug=false;
	
	/**
	 * Retrieve from the servlet configuration the "baseDir" which is the root of the file repository:<br>
	 * If not specified the value of "/UserFiles/" will be used.
	 * 从检索的servlet配置的“ baseDir ” ，这是根本的档案库如下： <br> 
	 * 如果没有指定的值为“ / UserFiles / ”将被使用。
	 */
	 public void init() throws ServletException { 
		baseDir=getInitParameter("baseDir");
		debug=(new Boolean(getInitParameter("debug"))).booleanValue();
		if(baseDir==null)
			baseDir="/UserFiles/";
		String realBaseDir=getServletContext().getRealPath(baseDir);
		File baseFile=new File(realBaseDir);
		if(!baseFile.exists()){
			baseFile.mkdir();
		}
	}
	
	/**
	 * Manage the Get requests (GetFolders, GetFoldersAndFiles, CreateFolder).<br>
	 * The servlet accepts commands sent in the following format:<br>
	 * connector?Command=CommandName&Type=ResourceType&CurrentFolder=FolderPath<br><br>
	 * It execute the command and then return the results to the client in XML format.
	 * 管理GET请求（ GetFolders ， GetFoldersAndFiles ， CreateFolder ） 。 <br> 
	 * 在接受命令的servlet发送以下面的格式如下： <br> 
	 * 连接器？司令部= commandname的＆类型= ResourceType ＆ CurrentFolder = FolderPath <br> <br> 
	 * 它执行命令，然后返回结果给客户端的XML格式。
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response) 
		throws ServletException, IOException {
		if (debug) System.out.println("--- BEGIN DOGET ---");
		
		response.setContentType("text/xml; charset=UTF-8");
		response.setHeader("Cache-Control","no-cache");
		PrintWriter out = response.getWriter();
		
		String commandStr=request.getParameter("Command");
		String typeStr=request.getParameter("Type");
		//文件要上传到的文件夹
		String currentFolderStr=request.getParameter("CurrentFolder");
		
		//文件要上传到的路径
		String currentPath=baseDir+typeStr+currentFolderStr;
		//文件要上传到的绝对路径
		String currentDirPath=getServletContext().getRealPath(currentPath);
		
		File currentDir=new File(currentDirPath);
		if(!currentDir.exists()){
			currentDir.mkdir();
		}
		
		Document document=null;
		try {
			DocumentBuilderFactory factory=DocumentBuilderFactory.newInstance();
			DocumentBuilder builder = factory.newDocumentBuilder();
			document=builder.newDocument();
		} catch (ParserConfigurationException pce) {
			pce.printStackTrace();
		}
		
		Node root=CreateCommonXml(document,commandStr,typeStr,currentFolderStr,
				request.getContextPath()+currentPath);
		if (debug) System.out.println("Command = " + commandStr);
		
		if(commandStr.equals("GetFolders")) {
			getFolders(currentDir,root,document);
		}
		else if (commandStr.equals("GetFoldersAndFiles")) {
			getFolders(currentDir,root,document);
			getFiles(currentDir,root,document);
		}
		else if (commandStr.equals("CreateFolder")) {
			String newFolderStr=request.getParameter("NewFolderName");
			File newFolder=new File(currentDir,newFolderStr);
			String retValue="110";
			
			if(newFolder.exists()){
				retValue="101";
			}
			else {
				try {
					boolean dirCreated = newFolder.mkdir();
					if(dirCreated)
						retValue="0";
					else
						retValue="102";
				}catch(SecurityException sex) {
					retValue="103";
				}
			}			
			setCreateFolderResponse(retValue,root,document);
		}		
		
		document.getDocumentElement().normalize();
		try {
		TransformerFactory tFactory = TransformerFactory.newInstance();
		Transformer transformer = tFactory.newTransformer();
		
		DOMSource source = new DOMSource(document);

		StreamResult result = new StreamResult(out);
		transformer.transform(source, result);
		
		if (debug) {
			StreamResult dbgResult = new StreamResult(System.out);
			transformer.transform(source, dbgResult);
			System.out.println("");
			System.out.println("--- END DOGET ---");
		}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		out.flush();
		out.close();
	}
	

	/**
	 * Manage the Post requests (FileUpload).<br>
	 * The servlet accepts commands sent in the following format:<br>
	 * connector?Command=FileUpload&Type=ResourceType&CurrentFolder=FolderPath<br><br>
	 * It store the file (renaming it in case a file with the same name exists) and then return an HTML file
	 * with a javascript command in it.
	 * 管理POST请求（ FileUpload ） 。 <br> 
	 * 在接受命令的servlet发送以下面的格式如下： <br> 
	 * 连接器？司令部= FileUpload ＆类型= ResourceType ＆ CurrentFolder = FolderPath <br> <br> 
	 * 它存储文件（重新命名它的情况下一个文件具有相同名称的存在） ，然后返回一个HTML文件
	 * 使用JavaScript命令它。
	 */	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if (debug) System.out.println("--- BEGIN DOPOST ---");

		response.setContentType("text/html; charset=UTF-8");
		response.setHeader("Cache-Control","no-cache");
		PrintWriter out = response.getWriter();
		
		String commandStr=request.getParameter("Command");
		String typeStr=request.getParameter("Type");
		String currentFolderStr=request.getParameter("CurrentFolder");
		
		//要上传到到的路径
		String currentPath=baseDir+typeStr+currentFolderStr;
		//要上传的绝对路径
		String currentDirPath=getServletContext().getRealPath(currentPath);
		
		if (debug) System.out.println(currentDirPath);
		
		String retVal="0";
		String newName="";
		
		if(!commandStr.equals("FileUpload"))
			retVal="203";
		else {
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
				
				String nameWithoutExt=getNameWithoutExtension(fileName);
				String ext=getExtension(fileName);
				File pathToSave=new File(currentDirPath,fileName);
				int counter=1;
				while(pathToSave.exists()){
					newName=nameWithoutExt+"("+counter+")"+"."+ext;
					retVal="201";
					pathToSave=new File(currentDirPath,newName);
					counter++;
					}
				uplFile.write(pathToSave);
			}catch (Exception ex) {
				retVal="203";
			}
			
		}
		
		out.println("<script type=\"text/javascript\">");
		out.println("window.parent.frames['frmUpload'].OnUploadCompleted("+retVal+",'"+newName+"');");
		out.println("</script>");
		out.flush();
		out.close();
	
		if (debug) System.out.println("--- END DOPOST ---");	
		
	}

	private void setCreateFolderResponse(String retValue,Node root,Document doc) {
		Element myEl=doc.createElement("Error");
		myEl.setAttribute("number",retValue);
		root.appendChild(myEl);
	}
	

	/**
	 * @param dir
	 * @param root
	 * @param doc
	 *  得到文件夹
	 */
	private void getFolders(File dir,Node root,Document doc) {
		Element folders=doc.createElement("Folders");
		root.appendChild(folders);
		File[] fileList=dir.listFiles();
		for(int i=0;i<fileList.length;++i) {
			if(fileList[i].isDirectory()){
				Element myEl=doc.createElement("Folder");
				myEl.setAttribute("name",fileList[i].getName());
				folders.appendChild(myEl);
				}
			}		
	}

	/**
	 * @param dir
	 * @param root
	 * @param doc
	 *  得到文件
	 */
	private void getFiles(File dir,Node root,Document doc) {
		Element files=doc.createElement("Files");
		root.appendChild(files);
		File[] fileList=dir.listFiles();
		for(int i=0;i<fileList.length;++i) {
			if(fileList[i].isFile()){
				Element myEl=doc.createElement("File");
				myEl.setAttribute("name",fileList[i].getName());
				myEl.setAttribute("size",""+fileList[i].length()/1024);
				files.appendChild(myEl);
				}
			}	
	}	

	private Node CreateCommonXml(Document doc,String commandStr, String typeStr,  
			String currentPath, String currentUrl ) {
		Element root=doc.createElement("Connector");
		doc.appendChild(root);
		root.setAttribute("command",commandStr);
		root.setAttribute("resourceType",typeStr);
		
		Element myEl=doc.createElement("CurrentFolder");
		myEl.setAttribute("path",currentPath);
		myEl.setAttribute("url",currentUrl);
		root.appendChild(myEl);
		
		return root;
		
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


}

