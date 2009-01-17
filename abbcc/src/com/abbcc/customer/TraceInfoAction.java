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
 *  会员用户,会员公司的信息管理和用户密码修改
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
	 *  @see 基本信息设置-->公司简介-->公司基本资料管理
	 */
	public ActionForward displayBasicInfo(ActionMapping mapping, ActionForm form,HttpServletRequest request,
			HttpServletResponse response) {
			try{
			HttpSession session = request.getSession(false);
			String hyjbxxid = (String) session.getAttribute("hyjbxxid");
			
			Hyjbxx hyjbxx = hyjbxxService.getCustomerById(hyjbxxid);
			List list = hyjbxxService.getMemberById(hyjbxxid);
			
			Gsjbxx gsjbxx = (Gsjbxx) list.get(0);
			//公司基本信息中的主营行业
			String zyhy=gsjbxx.getZyhy();
			
			//判断产品表中是否有此主营行业
			List idsList=this.getProdcutTypeIdList(zyhy);
			if(idsList!=null){
				List textAreaList=this.productService.getTextAreaProductTypeListByIds(idsList);
				//主营行业显示文本
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
	 * @param zyhy(主营行业字符串)
	 * @return 得到主营行业对应的产品类型：zyhy对应producttype的id
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
	 * @see 基本信息设置-->公司简介-->公司详细资料管理
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
	 * @see得到上级行业的对应子行业
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
	 * 	@see 基本信息设置-->基本资料管理-->更新会员基本信息和公司基本信息
	 */
	public ActionForward updateBasicInfo(ActionMapping mapping, ActionForm form,HttpServletRequest request,
			HttpServletResponse response)	throws Exception{
			request.setCharacterEncoding("gbk");
			response.setCharacterEncoding("text/html;charset=gbk");
			DynaActionForm basicInfoForm = (DynaActionForm)form;
			HttpSession session = request.getSession(false);
			String hyjbxxid = (String) session.getAttribute("hyjbxxid");
			
			//会员基本信息
			Hyjbxx hyjbxx = new Hyjbxx();
			Integer intHyjbxxid = Integer.valueOf(hyjbxxid);
			BeanUtils.copyProperties(hyjbxx, basicInfoForm);
			hyjbxx.setHyjbxxid(intHyjbxxid); 
			
			//公司电话（固定电话）
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
			
			//公司基本信息
			Gsjbxx gsjbxx = new Gsjbxx();
			BeanUtils.copyProperties(gsjbxx, basicInfoForm);
			gsjbxx.setHyjbxxid(intHyjbxxid);
			
			//经营模式
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
			
			//主营行业
			String zyhy = request.getParameter("product");
			//String[] zyhy = request.getParameterValues("product");
			if(zyhy.equals(""))zyhy=null;
			gsjbxx.setZyhy(zyhy);
			
			hyjbxxService.update(hyjbxx, gsjbxx);
			
			//公司详细信息
			Gsxxxx gsxxxx = hyjbxxService.getGsxxxxById(hyjbxxid);
			if(gsxxxx!=null){
				request.setAttribute("gsxxxx", gsxxxx);
			}else{
				// 出现数据丢失或遗漏，增加新详细信息对象
				log.info("add new Gsxxxx instance because lose the object in handling updateBasicInfo");
				gsxxxx = new Gsxxxx();
 				gsxxxx.setHyjbxxid(Integer.valueOf(intHyjbxxid));
 				hyjbxxService.addLoseObject(gsxxxx);
			}
			
			//转到公司详细信息页,让用户继续完善公司详细信息
			request.setAttribute("basicInfoUpdated", AppConstants.BASICINFOUPDATED);
			return mapping.findForward("detailinfo");
	}
	
	/**
	 * @see 基本信息设置-->公司简介-->更新公司详细信息
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
			
			//月产量:数字+单位
			String monthProduction = request.getParameter("monthProduction");
			String unit = request.getParameter("unit"); 
			if(StringUtils.isBlank(monthProduction)){
				String ycl = monthProduction + "/" + unit;
				gsxxxx.setYcl(ycl);
			}
			
			//管理体系认证
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
			
			//主要市场
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
			
 			//设置公司信息成功提交标记,用来区分不同的提交操作
 			request.setAttribute(AppConstants.OPERA_FLAG, AppConstants.UPDATE_DATAILINFO);
			return mapping.findForward("modifySuccess");
	}
	
	/**
	 *  @see 基本信息设置-->用户修改密码
	 *   show:真实姓名和会员登录名memberId
	 */
	public ActionForward displayModifyCipher(ActionMapping mapping, ActionForm form,HttpServletRequest request,
			HttpServletResponse response)	throws Exception{
			HttpSession session = request.getSession(false);
			String hyjbxxid = (String) session.getAttribute("hyjbxxid");
			
			Hyjbxx hyjbxx = hyjbxxService.getCustomerById(hyjbxxid);
			if(hyjbxx!=null){
				request.setAttribute("truename", hyjbxx.getZsxm());
				request.setAttribute("memberId", hyjbxx.getHydlm());
				request.setAttribute(AppConstants.ACCESS_MARK, AppConstants.ACCESS_FIRST);
			}else{
				log.debug("modifyPassword handle failed,not find Hyjbxx instance by hyjbxxid："+hyjbxxid);
				//服务器异常500
				request.setAttribute(AppConstants.DISPLAY_FLAG, AppConstants.DISPLAY_CRASH);
				return mapping.findForward("service_exception");
			}
			
			return mapping.findForward("modify_password");
	}
	
	/**
	 * @see  基本信息设置-->用户修改密码-->修改密码-->修改密码
	 */
	public ActionForward ModifyPasswordHandle(ActionMapping mapping, ActionForm form,HttpServletRequest request,
			HttpServletResponse response)	throws Exception{
			HttpSession session = request.getSession(false);
			String hyjbxxid = (String) session.getAttribute("hyjbxxid");
			
			DynaActionForm modifyPassword = (DynaActionForm)form;
			String old_password = (String) modifyPassword.get("old_password");
			String new_password = (String) modifyPassword.get("new_password");
			
			String truename = modifyPassword.getString("truename");
			String memberId = modifyPassword.getString("memberId");
			if(StringUtils.isBlank(truename)) request.setAttribute("truename", truename);
			if(StringUtils.isBlank(memberId)) request.setAttribute("memberId", memberId);
			
			//下面密码保护的提示信息
			//String promptQuestionInfo = (String) modifyPassword.get("promptQuestionInfo");
			
			if(hyjbxxService.checkPassword(hyjbxxid, old_password)){
				
				hyjbxxService.updatePassword(hyjbxxid, new_password);
			}else{
				request.setAttribute("promptPasswordInfo","·旧的密码错误，请重新输入！");
				return mapping.findForward("modify_password");
			}
			
			//设置用户密码修改成功标记
			request.setAttribute(AppConstants.OPERA_FLAG, AppConstants.MODIFY_PASS);
			
			return mapping.findForward("modifySuccess");
	}
	
	/**
	 * @see 基本信息设置-->用户修改密码-->修改密码-->设置密码保护问题
	 */
	public ActionForward questionAboutPasswordAction(ActionMapping mapping, ActionForm form,HttpServletRequest request,
			HttpServletResponse response)	throws Exception{
			HttpSession session = request.getSession(false);
			String hyjbxxid = (String) session.getAttribute("hyjbxxid");
			
			DynaActionForm questionAboutPassword = (DynaActionForm)form;
			String password_question = (String) questionAboutPassword.get("password_question");
			String password_answer = (String) questionAboutPassword.get("password_answer");
			String confirmAnswer = (String) questionAboutPassword.get("confirmAnswer");
			
			String truename = questionAboutPassword.getString("truename");
			String memberId = questionAboutPassword.getString("memberId");

			if(StringUtils.isBlank(truename)) request.setAttribute("truename", truename);
			if(StringUtils.isBlank(memberId)) request.setAttribute("memberId", memberId);
			
			//访问标记,密码保护问题
			request.setAttribute(AppConstants.ACCESS_MARK, AppConstants.ACCESS_QUESTION_PASSWORD);
			
			if(password_question.trim().equals("")){
				request.setAttribute("promptQuestionInfo", "·密码保护问题不能为空");
				return mapping.findForward("modify_password");
			}
			else if(password_question.length()<5||password_question.length()>50){
				request.setAttribute("promptQuestionInfo", "·密码保护问题必须是5-50个字");
				return mapping.findForward("modify_password");
			}
			else if(password_answer.trim().equals("")){
				request.setAttribute("promptQuestionInfo", "·密码保护答案不能为空");
				return mapping.findForward("modify_password");
			}
			else if(password_answer.length()<2||password_answer.length()>20){
				request.setAttribute("promptQuestionInfo", "·密码保护答案必须是2-20个字");
				return mapping.findForward("modify_password");				
			}
			else if(confirmAnswer.trim().equals("")){
				request.setAttribute("promptQuestionInfo", "·确认密码保护答案不能为空");
				return mapping.findForward("modify_password");
			}else if(confirmAnswer.length()<2||confirmAnswer.length()>10){
				request.setAttribute("promptQuestionInfo", "·确认密码保护答案必须是2-20个字");
				return mapping.findForward("modify_password");	
			}
			
			if(hyjbxxService.updateQuestion(hyjbxxid, password_question, password_answer)>0){
				request.setAttribute(AppConstants.OPERA_FLAG, AppConstants.MODIFY_PASS_QUESTION);
				return mapping.findForward("modifySuccess");
			}else{
				log.error("update question about password failed by hyjbxxid:"+hyjbxxid);
				request.setAttribute("updateQuestionAboutPassword", "·机器繁忙，请换个时间段再试。");
				return mapping.findForward("modifyFail");
			}
	}
	
}
