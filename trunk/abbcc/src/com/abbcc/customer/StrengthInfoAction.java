package com.abbcc.customer;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.util.Date;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.DynaActionForm;
import org.apache.struts.upload.FormFile;

import com.abbcc.common.AppConstants;
import com.abbcc.common.StringUtils;
import com.abbcc.common.TimeProcess;
import com.abbcc.common.UploadUtil;
import com.abbcc.pojo.Honor;
import com.abbcc.service.HyjbxxService;
import com.abbcc.struts.action.BaseAction;

/**
 * @author 姜志强
 * @see 证实公司实力的Action,包括荣誉证书,技术实力,公司标志
 *  create at 2009-1-13
 */
public class StrengthInfoAction extends BaseAction {
	private HyjbxxService hyjbxxService;
	/*private SmartUpload smartUpload;

	public void setSmartUpload(SmartUpload smartUpload) {
		this.smartUpload = smartUpload;
	}*/
	public void setHyjbxxService(HyjbxxService hyjbxxService) {
		this.hyjbxxService = hyjbxxService;
	}

	/**
	 * @see 基本信息设置--> show 荣誉证书
	 */
	public ActionForward displayHonorCertificate(ActionMapping mapping, ActionForm form,HttpServletRequest request,
			HttpServletResponse response)	throws Exception{
			HttpSession session = request.getSession(false);
			String hyjbxxid = (String) session.getAttribute("hyjbxxid");
			
			Honor honor = hyjbxxService.findById(hyjbxxid);
			if(honor!=null){
				//要在页面显示的内容
				String content = honor.getHonorInfo();
				if(StringUtils.isBlank(content))
						request.setAttribute("content", content);
			}
			
			return mapping.findForward("honor_certificate");
	}
	
	/**
	 * @see 基本信息设置-->荣誉证书-->上传公司荣誉证书图片
	 */
	public ActionForward honorPictureHandle(ActionMapping mapping, ActionForm form,HttpServletRequest request,
			HttpServletResponse response)	throws Exception{
			HttpSession session = request.getSession(false);
			String hyjbxxid = (String) session.getAttribute("hyjbxxid");
			Integer intHyjbxxid = Integer.valueOf(hyjbxxid);
			
			String content = request.getParameter("content");
			
			/*DynaActionForm honorForm = (DynaActionForm) form;
			//上传的文件
			FormFile file = (FormFile)honorForm.get("honorPicture");*/	
			/*String annexStart = file.getFileName();// 文件名
	        int fileSize = file.getFileSize();// 文件大小
	        InputStream is = file.getInputStream();// 文件流
			 */			
			/*//临时图片变量
			String fname = this.getFielName(file, request);   */							
			
			//存放荣誉证书图片的绝对路径
			//String dir = servlet.getServletContext().getRealPath("/StrengthFiles/honor");   
			
			//存放荣誉证书图片的相对路径：Post下的目录
			//String dir = this.servlet.getServletContext().getResource("/upload").toString() ;
			
			//项目的绝对路径applicationContext在spring中获得
			//applicationContext.getResource("").getFile().getAbsolutePath()+"\\" ;
			//request.setAttribute(AppConstants.CHECKFILE_INFO, checkfile);
			
			//Integer intHyjbxxid = Integer.valueOf(hyjbxxid);
			
			if(!StringUtils.isBlank(content)){
				request.setAttribute(AppConstants.CHECKFILE_INFO, "提交的内容为空");
				return mapping.findForward("honor_certificate");
			}
			Honor honor = hyjbxxService.findById(hyjbxxid);
			if(honor==null){
				honor = new Honor();
				honor.setHyjbxxid(intHyjbxxid);
				honor.setHonorInfo(content);
				Date date = new Date();
				String createTime = TimeProcess.timeFormat(date);
				honor.setCreateTime(createTime);
				hyjbxxService.add(honor);
			}else{
				honor.setHyjbxxid(intHyjbxxid);
				honor.setHonorInfo(content);
				Date date = new Date();
				String createTime = TimeProcess.timeFormat(date);
				honor.setCreateTime(createTime);
				hyjbxxService.update(honor);
			}
			request.setAttribute(AppConstants.OPERA_FLAG, AppConstants.HONOR_REFER);
			return mapping.findForward("modifySuccess");
	}
	
	/** 
	 * @return 文件名字,
	 *  将文件保存在指定文件夹里
	 * @throws MalformedURLException 
	 */
    public String getFielName(FormFile file,HttpServletRequest request){
		String fname = null;    //临时图片变量
		UploadUtil uutil = new UploadUtil();
		
		//得到绝对路径
		//String dir=servlet.getServletContext().getRealPath("/StrengthFiles/honor");
		String dir=request.getSession().getServletContext().getRealPath("/StrengthFiles/honor");
		//String dir = this.servlet.getServletContext().getResource("/StrengthFiles/honor").toString() ;
		 
		//dir:"'D:\work\Post\WebRoot\、upload\article_image'"
		System.out.println("dir:"+dir);
		String checkfile = uutil.checkFile(file);//检查文件类型
		
		if(checkfile.equals("ok")){
			fname = uutil.uploadutil(file,dir);
			fname = "/StrengthFiles/honor"+"/"+fname;
			//frame:upload/article_image/150FEF64D6509425AF83.JPG
			System.out.println("frame:"+fname);
		}
		return fname;
	}
	
    
	
	public ActionForward test(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			  HttpServletResponse response) {
		System.out.println(servlet);
		System.out.println(request.getSession().getServletContext());
		
		System.out.println(this.servlet.getServletContext());
       //FileForm file = (FileForm) form;
       DynaActionForm add = (DynaActionForm) form;
	   FormFile file = (FormFile)add.get("honorPicture");	

       String annexStart = file.getFileName();// 文件名
       int fileSize = file.getFileSize();// 文件大小
       InputStream is = null;
		try {
			is = file.getInputStream();
			
		} catch (FileNotFoundException e1) {
			e1.printStackTrace();
		} catch (IOException e1) {
			e1.printStackTrace();
		}
		  //文件流
		  String path = request.getContextPath();
		
		// 将输入流保存到文件
		//String rootPath = this.servlet.getServletContext().getRealPath(path);
       //String rootPath = this.servlet.getServletContext().getRealPath("/StrengthFiles/honor");
		String rootPath = null;
       File f = new File(rootPath);
       if (!f.exists())
           f.mkdirs(); // 如果文件夹不存在,则创建

       // 创建输出流
       // 保存后的文件名不能使用原来的,可以防止下载出错
       // 随机生成新文件名
       String annexNew = "";
       Random rnd = new Random();
       for (int i = 0; i < 10; i++) {
           annexNew += rnd.nextInt(10);
       }
       // 读出原文件的扩展名
       String ext = "";
       int pos = annexStart.lastIndexOf(".");
       ext = annexStart.substring(pos);// 得到扩展名
       // 拼出完整的新文件名
       annexNew += ext;
       try{
       FileOutputStream fos = new FileOutputStream(new File(f, annexNew));

       byte[] b = new byte[1024];
       int real = 0;
       real = is.read(b);
       while (real > 0) {
           fos.write(b, 0, real);
           real = is.read(b);
       }

       fos.close();
       is.close();
       }catch(Exception e){
    	   e.printStackTrace();
       }

       System.out.println("文件信息:");
       System.out.println("\t原文件名:" + annexStart);
       System.out.println("\t新文件名:" + annexNew);
       System.out.println("\t文件大小:" + fileSize);
      /* System.out.println("\t描述"+file.getDescription());
      
       AnnexVo fi = new AnnexVo();
       fi.setAnnexNew(annexNew);
       fi.setAnnexStart(annexStart);
       fi.setCid(file.getCid());
       fi.setDescription(file.getDescription());
       fi.setUid(file.getUid());
  
       aservice.insertAnnex(fi);*/

       //file.getFile().destroy();
       return new ActionForward("/projectforpz/success.jsp");
   
		
	}
	
	
}
