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
 * @author ��־ǿ
 * @see ֤ʵ��˾ʵ����Action,��������֤��,����ʵ��,��˾��־
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
	 * @see ������Ϣ����--> show ����֤��
	 */
	public ActionForward displayHonorCertificate(ActionMapping mapping, ActionForm form,HttpServletRequest request,
			HttpServletResponse response)	throws Exception{
			HttpSession session = request.getSession(false);
			String hyjbxxid = (String) session.getAttribute("hyjbxxid");
			
			Honor honor = hyjbxxService.findById(hyjbxxid);
			if(honor!=null){
				//Ҫ��ҳ����ʾ������
				String content = honor.getHonorInfo();
				if(StringUtils.isBlank(content))
						request.setAttribute("content", content);
			}
			
			return mapping.findForward("honor_certificate");
	}
	
	/**
	 * @see ������Ϣ����-->����֤��-->�ϴ���˾����֤��ͼƬ
	 */
	public ActionForward honorPictureHandle(ActionMapping mapping, ActionForm form,HttpServletRequest request,
			HttpServletResponse response)	throws Exception{
			HttpSession session = request.getSession(false);
			String hyjbxxid = (String) session.getAttribute("hyjbxxid");
			Integer intHyjbxxid = Integer.valueOf(hyjbxxid);
			
			String content = request.getParameter("content");
			
			/*DynaActionForm honorForm = (DynaActionForm) form;
			//�ϴ����ļ�
			FormFile file = (FormFile)honorForm.get("honorPicture");*/	
			/*String annexStart = file.getFileName();// �ļ���
	        int fileSize = file.getFileSize();// �ļ���С
	        InputStream is = file.getInputStream();// �ļ���
			 */			
			/*//��ʱͼƬ����
			String fname = this.getFielName(file, request);   */							
			
			//�������֤��ͼƬ�ľ���·��
			//String dir = servlet.getServletContext().getRealPath("/StrengthFiles/honor");   
			
			//�������֤��ͼƬ�����·����Post�µ�Ŀ¼
			//String dir = this.servlet.getServletContext().getResource("/upload").toString() ;
			
			//��Ŀ�ľ���·��applicationContext��spring�л��
			//applicationContext.getResource("").getFile().getAbsolutePath()+"\\" ;
			//request.setAttribute(AppConstants.CHECKFILE_INFO, checkfile);
			
			//Integer intHyjbxxid = Integer.valueOf(hyjbxxid);
			
			if(!StringUtils.isBlank(content)){
				request.setAttribute(AppConstants.CHECKFILE_INFO, "�ύ������Ϊ��");
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
	 * @return �ļ�����,
	 *  ���ļ�������ָ���ļ�����
	 * @throws MalformedURLException 
	 */
    public String getFielName(FormFile file,HttpServletRequest request){
		String fname = null;    //��ʱͼƬ����
		UploadUtil uutil = new UploadUtil();
		
		//�õ�����·��
		//String dir=servlet.getServletContext().getRealPath("/StrengthFiles/honor");
		String dir=request.getSession().getServletContext().getRealPath("/StrengthFiles/honor");
		//String dir = this.servlet.getServletContext().getResource("/StrengthFiles/honor").toString() ;
		 
		//dir:"'D:\work\Post\WebRoot\��upload\article_image'"
		System.out.println("dir:"+dir);
		String checkfile = uutil.checkFile(file);//����ļ�����
		
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

       String annexStart = file.getFileName();// �ļ���
       int fileSize = file.getFileSize();// �ļ���С
       InputStream is = null;
		try {
			is = file.getInputStream();
			
		} catch (FileNotFoundException e1) {
			e1.printStackTrace();
		} catch (IOException e1) {
			e1.printStackTrace();
		}
		  //�ļ���
		  String path = request.getContextPath();
		
		// �����������浽�ļ�
		//String rootPath = this.servlet.getServletContext().getRealPath(path);
       //String rootPath = this.servlet.getServletContext().getRealPath("/StrengthFiles/honor");
		String rootPath = null;
       File f = new File(rootPath);
       if (!f.exists())
           f.mkdirs(); // ����ļ��в�����,�򴴽�

       // ���������
       // �������ļ�������ʹ��ԭ����,���Է�ֹ���س���
       // ����������ļ���
       String annexNew = "";
       Random rnd = new Random();
       for (int i = 0; i < 10; i++) {
           annexNew += rnd.nextInt(10);
       }
       // ����ԭ�ļ�����չ��
       String ext = "";
       int pos = annexStart.lastIndexOf(".");
       ext = annexStart.substring(pos);// �õ���չ��
       // ƴ�����������ļ���
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

       System.out.println("�ļ���Ϣ:");
       System.out.println("\tԭ�ļ���:" + annexStart);
       System.out.println("\t���ļ���:" + annexNew);
       System.out.println("\t�ļ���С:" + fileSize);
      /* System.out.println("\t����"+file.getDescription());
      
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
