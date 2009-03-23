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
 *   �ϴ�������,��SmartUpload�����˷�װ  
 *   @author   askr  
 *   @version  1.0  
 */  
public class MyUpload  
{  
   /**  
     *   �����ϴ����ļ�  
     *   @param   request   ҳ���������  
     *   @param   response   ҳ����Ӧ����  
     *   @param   config     ҳ�����ö���  
     *   @param   mainName   ��������ļ���  
     *   @param   savePhyPath   �ļ�������ļ���  
     *   @param   maxSizePool   �ϴ�ʱ����������������λ��KB  
     *   @param   maxSizeAllowed   �ļ��ϴ�ʱ���������С����λ��KB  
     *   @param   formatListAllowed   ������ļ���ʽ���Զ��ŷָ����ַ�������  
     *   @return  ���û���ϴ������ؿ��ַ����������Ǳ������ļ���  
     */  
   public static String SaveUpload(HttpServletRequest request, HttpServletResponse response,
		   ServletConfig  config, String  mainName, String savePhyPath,int maxSizePool,
		   int maxSizeAllowed, String  formatListAllowed) {  
           SmartUpload upl = new SmartUpload();  
           com.jspsmart.upload.File   f=null;  
           try {  
	           upl.init(config);   					//config���������ö���  
	           upl.service(request,   response);  
	           //upl.setAllowedFilesList(formatListAllowed);  
	           upl.setTotalMaxFileSize(maxSizePool * 1024);   //�ֽ�  
	           upl.upload();  
	           f = upl.getFiles().getFile(0);  
	           String  name  =  f.getFileName();  
	           if (f.getSize() == 0) {  
	               return   "";  
	           }  
	           if (f.getSize() >  maxSizeAllowed * 1024)  
	               throw  new  RuntimeException("����СΪ" + maxSizeAllowed + "KB");  
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
	           if (formatFlag==false)   throw   new   RuntimeException("�ļ���ʽ����,������"+  
	             formatListAllowed+"�е�һ��");  
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
