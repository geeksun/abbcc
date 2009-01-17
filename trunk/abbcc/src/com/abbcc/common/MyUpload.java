package com.abbcc.common;

import java.io.IOException;
import java.util.StringTokenizer;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jspsmart.upload.SmartUpload;
import com.jspsmart.upload.SmartUploadException;

/**  
 *   上传公共类,对SmartUpload进行了封装  
 *   @author   askr  
 *   @version  1.0  
 */  
public class MyUpload  
{  
   /**  
     *   保存上传的文件  
     *   @param   request   页面请求对象  
     *   @param   response   页面响应对象  
     *   @param   config     页面配置对象  
     *   @param   mainName   赋予的主文件名  
     *   @param   savePhyPath   文件保存的文件夹  
     *   @param   maxSizePool   上传时允许的最大容量，单位：KB  
     *   @param   maxSizeAllowed   文件上传时允许的最大大小，单位：KB  
     *   @param   formatListAllowed   允许的文件格式，以逗号分隔的字符串序列  
     *   @return  如果没有上传，返回空字符串，否则，是保存后的文件名  
     */  
   public static String SaveUpload(HttpServletRequest request, HttpServletResponse response,
		   ServletConfig  config, String  mainName, String savePhyPath,int maxSizePool,
		   int maxSizeAllowed, String  formatListAllowed) {  
           SmartUpload upl = new SmartUpload();  
           com.jspsmart.upload.File   f=null;  
           try {  
	           upl.init(config);   					//config是隐含内置对象  
	           upl.service(request,   response);  
	           //upl.setAllowedFilesList(formatListAllowed);  
	           upl.setTotalMaxFileSize(maxSizePool * 1024);   //字节  
	           upl.upload();  
	           f = upl.getFiles().getFile(0);  
	           String  name  =  f.getFileName();  
	           if (f.getSize() == 0) {  
	               return   "";  
	           }  
	           if (f.getSize() >  maxSizeAllowed * 1024)  
	               throw  new  RuntimeException("最大大小为" + maxSizeAllowed + "KB");  
	           String   ext=f.getFileExt();  
	           StringTokenizer   st=new   StringTokenizer(formatListAllowed,",");  
	           boolean  formatFlag=false;  
	           while(st.hasMoreTokens())  
	           {  
	               String element=st.nextToken();  
	               if(element.equalsIgnoreCase(ext))  
	                   {  
	                       formatFlag   =   true;  
	                       break;  
	                   }  
	           }  
	           if (formatFlag==false)   throw   new   RuntimeException("文件格式不对,必须是"+  
	             formatListAllowed+"中的一种");  
	           String path = savePhyPath + "\\" + mainName + "." + f.getFileExt();  
	           f.saveAs(path,com.jspsmart.upload.File.SAVEAS_PHYSICAL);  
	       }  
	       catch(RuntimeException ex)
	       {  
	           throw   ex;  
	       }  
	       catch(IOException ex)  
	       {  
	           ex.printStackTrace();  
	       }  
	       catch(SmartUploadException ex)  
	       {  
	           ex.printStackTrace();  
	       }  
	       catch(ServletException ex)
	       {  
	           ex.printStackTrace();  
	       }  
	   return  mainName + "." + f.getFileExt();  
   }  
   
}   
