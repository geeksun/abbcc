package com.abbcc.customer;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.DynaActionForm;

import com.abbcc.common.AppConstants;
import com.abbcc.common.JsonUtil;
import com.abbcc.common.StringUtils;
import com.abbcc.exception.CustomerException;
import com.abbcc.pojo.Gsjbxx;
import com.abbcc.pojo.Gsxxxx;
import com.abbcc.pojo.Hyjbxx;
import com.abbcc.pojo.ProductType;
import com.abbcc.service.HyjbxxService;
import com.abbcc.service.TradeInfoService;
import com.abbcc.struts.action.BaseAction;

/**
 * @author geeksun
 *  2008.12.5
 *  ��Ա�͹�˾����Ϣ����
 */
public class TraceInfoAction extends BaseAction {
	private HyjbxxService hyjbxxService;
	private TradeInfoService tradeInfoService;
	public void setHyjbxxService(HyjbxxService hyjbxxService) {
		this.hyjbxxService = hyjbxxService;
	}

	public void setTradeInfoService(TradeInfoService tradeInfoService) {
		this.tradeInfoService = tradeInfoService;
	}

	/**
	 *  @see ������Ϣ����-->��˾���-->��˾�������Ϲ���
	 */
	public ActionForward displayBasicInfo(ActionMapping mapping, ActionForm form,HttpServletRequest request,
			HttpServletResponse response) {
			try{
			HttpSession session = request.getSession(false);
			String hyjbxxid = (String) session.getAttribute("hyjbxxid");
			
			Hyjbxx hyjbxx = hyjbxxService.getCustomerById(hyjbxxid);
			List list = hyjbxxService.getMemberById(hyjbxxid);
			
			Gsjbxx gsjbxx = (Gsjbxx) list.get(0);
			//��˾������Ϣ�е���Ӫ��ҵ
			String zyhy=gsjbxx.getZyhy();
			
			//�жϲ�Ʒ�����Ƿ��д���Ӫ��ҵ
			List idsList=this.getProdcutTypeIdList(zyhy);
			if(idsList!=null){
				List textAreaList=this.productService.getTextAreaProductTypeListByIds(idsList);
				//��Ӫ��ҵ��ʾ�ı�
				request.setAttribute("textAreaList", textAreaList);
			}else{
				log.info("table producttype no this idsList object");
			}
			int parentid = 0;

			List<ProductType> topCategory = this.productService
					.getProductTypeByParentId(parentid);
			
			request.setAttribute("hyjbxx", hyjbxx);
			request.setAttribute("gsjbxx", gsjbxx);
			request.setAttribute("traList", topCategory);
			}catch(Exception e){
				log.error(e);
				e.printStackTrace();
			}
			 
			return mapping.findForward("basicinfo"); 
	}
	
	/**
	 * @param zyhy(��Ӫ��ҵ�ַ���)
	 * @return �õ���Ӫ��ҵ��Ӧ�Ĳ�Ʒ���ͣ�zyhy��Ӧproducttype��id
	 */
	private List<Integer> getProdcutTypeIdList(String zyhy){
		if(zyhy==null)
			return null;
		List<Integer> ret=new ArrayList<Integer>();
		String[] tempIds=zyhy.split(",");
		for(int i=0;i<tempIds.length;i++){ 
			String id=tempIds[i];
			try{
				Integer _id=Integer.valueOf(id);
				ret.add(_id);
			}catch(Exception e){
				log.error(e);
				e.printStackTrace();
			}
		}
		return ret;
	}
	
	/**
	 * @throws CustomerException 
	 * @see ������Ϣ����-->��˾���-->��˾��ϸ���Ϲ���
	 */
	public ActionForward displayDetailInfo(ActionMapping mapping, ActionForm form,HttpServletRequest request,
			HttpServletResponse response) throws Exception {
			HttpSession session = request.getSession(false);
			String hyjbxxid = (String) session.getAttribute("hyjbxxid");
			
			Gsxxxx gsxxxx = hyjbxxService.getGsxxxxById(hyjbxxid);
			if(gsxxxx!=null){
				request.setAttribute("gsxxxx", gsxxxx);
			}else{
				log.info("find Gsxxxx instance by hyjbxxid failed!");
				request.setAttribute("gsxxxx", null);
			}
			return mapping.findForward("detailinfo");
	}
	
	/**
	 * @see�õ��ϼ���ҵ�Ķ�Ӧ����ҵ
	 * @return subCategoryList
	 */
	public ActionForward getSubCategory(ActionMapping mapping, ActionForm form,HttpServletRequest request,
			HttpServletResponse response)	throws Exception{
			response.setContentType("text/xml;charset=GBK");
			response.setHeader("Cache-Control", "no-cache");
			PrintWriter out = response.getWriter();
			
			String topCatFormKey = request.getParameter("topCatFormKey");
			//System.out.println("topCatFormKey:"+topCatFormKey);
			//List subList = tradeInfoService.getTableNameById(topCatFormKey);
			
			List subList=this.productService.getProductTypeByParentId(Integer.valueOf(topCatFormKey));
			//String subList = tradeInfoService.getSubCategory(topCatFormKey);
			
			//String json = "[";
			//JSONObject json = JSONObject.forObject(subList);  
			String json = JsonUtil.list2json(subList);
			//System.out.print(json);
			out.print(json);
			
			//request.setAttribute("subList", subList);
			return null;
	}
	
	/**
	 * 	@see ������Ϣ����-->�������Ϲ���-->���»�Ա������Ϣ�͹�˾������Ϣ
	 */
	public ActionForward updateBasicInfo(ActionMapping mapping, ActionForm form,HttpServletRequest request,
			HttpServletResponse response)	throws Exception{
			request.setCharacterEncoding("gbk");
			response.setCharacterEncoding("text/html;charset=gbk");
			DynaActionForm basicInfoForm = (DynaActionForm)form;
			HttpSession session = request.getSession(false);
			String hyjbxxid = (String) session.getAttribute("hyjbxxid");
			
			//��Ա������Ϣ
			Hyjbxx hyjbxx = new Hyjbxx();
			Integer intHyjbxxid = Integer.valueOf(hyjbxxid);
			BeanUtils.copyProperties(hyjbxx, basicInfoForm);
			hyjbxx.setHyjbxxid(intHyjbxxid); 
			
			//��˾�绰���̶��绰��
			String area = request.getParameter("area");
			String phone = request.getParameter("phone");
			String extension = request.getParameter("extension");
			StringBuffer sf;
			if(!extension.trim().equals("")){
				sf = new StringBuffer();
				sf.append(area).append("/").append(phone).append("/").append(extension);
				hyjbxx.setGddh(sf.toString());
			}else{
				sf = new StringBuffer();
				sf.append(area).append("/").append(phone);
				hyjbxx.setGddh(sf.toString()); 
			}
			
			//��˾������Ϣ
			Gsjbxx gsjbxx = new Gsjbxx();
			BeanUtils.copyProperties(gsjbxx, basicInfoForm);
			gsjbxx.setHyjbxxid(intHyjbxxid);
			
			//��Ӫģʽ
			String[] jyms = request.getParameterValues("jyms");
			StringBuffer su;
			if(jyms.length>0){
				su = new StringBuffer();
				for(int i=0;i<jyms.length;i++){
					su.append(jyms[i]);
					su.append(",");
				}
				gsjbxx.setJyms(su.toString());
			}
			
			//��Ӫ��ҵ
			String zyhy = request.getParameter("product");
			//String[] zyhy = request.getParameterValues("product");
			if(zyhy.equals(""))zyhy=null;
			gsjbxx.setZyhy(zyhy);
			
			hyjbxxService.update(hyjbxx, gsjbxx);
			
			//��˾��ϸ��Ϣ
			Gsxxxx gsxxxx = hyjbxxService.getGsxxxxById(hyjbxxid);
			if(gsxxxx!=null){
				request.setAttribute("gsxxxx", gsxxxx);
			}else{
				log.info("add new Gsxxxx instance because lose the object in handling updateBasicInfo");
 				gsxxxx.setHyjbxxid(Integer.valueOf(hyjbxxid));
 				hyjbxxService.addLoseObject(gsxxxx);
			}
			
			//ת����˾��ϸ��Ϣҳ,���û��������ƹ�˾��ϸ��Ϣ
			request.setAttribute("basicInfoUpdated", AppConstants.BASICINFOUPDATED);
			return mapping.findForward("detailinfo");
	}
	
	/**
	 * @see ������Ϣ����-->��˾���-->���¹�˾��ϸ��Ϣ
	 *  traceDetailInfo.do
	 */
	public ActionForward updateDetailInfo(ActionMapping mapping, ActionForm form,HttpServletRequest request,
			HttpServletResponse response)	throws Exception{
			request.setCharacterEncoding("gbk");
			response.setCharacterEncoding("text/html;charset=gbk");
			HttpSession session = request.getSession(false);
			String hyjbxxid = (String) session.getAttribute("hyjbxxid");
			
			Gsxxxx gsxxxx = new Gsxxxx();
			DynaActionForm detailInfoForm = (DynaActionForm)form;
			BeanUtils.copyProperties(gsxxxx, detailInfoForm);
			Integer intHyjbxxid = Integer.valueOf(hyjbxxid);
			gsxxxx.setHyjbxxid(intHyjbxxid);
			
			//�²���:����+��λ
			String monthProduction = request.getParameter("monthProduction");
			String unit = request.getParameter("unit"); 
			if(StringUtils.isBlank(monthProduction)){
				String ycl = monthProduction + "/" + unit;
				gsxxxx.setYcl(ycl);
			}
			
			//������ϵ��֤
			String[] gltxrz = request.getParameterValues("gltxrz");
			StringBuffer sub;
			if(gltxrz!=null){
				sub = new StringBuffer();
				for(int i=0;i<gltxrz.length;i++){
					sub.append(gltxrz[i]);
					sub.append(",");
				}
				gsxxxx.setGltxrz(sub.toString());
			}
			
			//��Ҫ�г�
			String[] zysc = request.getParameterValues("zysc"); 
			if(zysc!=null){ 
				sub = new StringBuffer();
				for(int i=0;i<zysc.length;i++){
					sub.append(zysc[i]);
					sub.append(",");
				}
				gsxxxx.setZysc(sub.toString());
			}
			
 			Gsxxxx validate = hyjbxxService.getGsxxxxById(hyjbxxid);
 			if(validate!=null){
 				hyjbxxService.update(gsxxxx);
 			}else{
 				log.info("add new Gsxxxx instance because lose the object in handling updateDetailInfo");
 				gsxxxx.setHyjbxxid(Integer.valueOf(hyjbxxid));
 				hyjbxxService.addLoseObject(gsxxxx);
 			}
			
 			//���ù�˾��Ϣ�ɹ��ύ���
 			request.setAttribute("flag", "");
			return mapping.findForward("modifySuccess");
	}
	
	/**
	 *  @see ������Ϣ����-->�û��޸�����
	 */
	public ActionForward displayModify(ActionMapping mapping, ActionForm form,HttpServletRequest request,
			HttpServletResponse response)	throws Exception{
			HttpSession session = request.getSession(false);
			String hyjbxxid = (String) session.getAttribute("hyjbxxid");
			
			Hyjbxx hyjbxx = hyjbxxService.getCustomerById(hyjbxxid);
			if(hyjbxx!=null){
				request.setAttribute("truename", hyjbxx.getZsxm());
				request.setAttribute("memberId", hyjbxx.getHydlm());
			}else{
				log.debug("modifyPassword handle failed,not find Hyjbxx instance by hyjbxxid");
			}
			
			return mapping.findForward("modify_password");
	}
	
	/**
	 * @see @see ������Ϣ����-->�û��޸�����-->�޸Ĳ���
	 */
	public ActionForward ModifyPasswordHandle(ActionMapping mapping, ActionForm form,HttpServletRequest request,
			HttpServletResponse response)	throws Exception{
			HttpSession session = request.getSession(false);
			String hyjbxxid = (String) session.getAttribute("hyjbxxid");
			
			
			//�����û������޸ĳɹ����
			request.setAttribute("flag", "");
			return mapping.findForward("modifySuccess");
	}
	
	
}
