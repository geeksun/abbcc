package com.abbcc.common;

import java.io.FileOutputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.apache.struts.upload.FormFile;

/**
 * @author 姜志强
 *  Struts 文件上传工具类
 *  create at 2009-1-15 0:05
 */
public class UploadUtil{ 
	/**
	 * @param filei
	 * @param dir
	 * @return 生成文件的名字（不重复）,使用GUID（globally  unique  identifie）
	 */
	public String uploadutil(FormFile filei,String dir){
			String fname = filei.getFileName();
			String lastname = fname.substring(fname.lastIndexOf("."));
			
			try {
				//随机生成
				RandomGUID rg = new RandomGUID();
				String guidname = rg.toString();
				
				fname = guidname+lastname;
				InputStream streamIn = filei.getInputStream();
				OutputStream streamOut = new FileOutputStream(dir + "/"+fname);

				int bytesRead = 0;
				byte[] buffer = new byte[2048000];
				
				while ((bytesRead = streamIn.read(buffer, 0, 2048000)) != -1) {
				    streamOut.write(buffer, 0, bytesRead);
				}
				
				streamOut.close();
				streamIn.close();
				filei.destroy();
			} catch (FileNotFoundException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			} 
			
	        return fname;
	}
	
	/**
	 * @param file
	 * @see 检查上传文件类型是否符合要求
	 * @return  
	 */
	public String checkFile(FormFile file){
		String error = "ok";
		if (file == null ) {
			error ="请选择图片文件";
			return error;
		}
		String fname = file.getFileName();
		//提取后缀名。	  正则表达式：/\.\w+$/gi
		String lastname = fname.substring(fname.lastIndexOf("."));
		if(!lastname.equals(".jpg")&&!lastname.equals(".JPG")&&!lastname.equals(".gif")&&!lastname.equals(".GIF")&&!lastname.equals(".jpeg")&&!lastname.equals(".JPEG")){
			error = "只能上传jpg,gif,jpeg格式的图片";
			return error;
		}
        int size = file.getFileSize();
        if(size>2048000){
        	error ="您上传的文件大小超过限制2M";
        	return error;
        }
        
        return error;
	}

}
