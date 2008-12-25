package com.abbcc.customer;

import java.io.PrintWriter;
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
import com.abbcc.pojo.Gsjbxx;
import com.abbcc.pojo.Hyjbxx;
import com.abbcc.service.HyjbxxService;
import com.abbcc.service.TradeInfoService;
import com.abbcc.struts.action.BaseAction;

/**
 * @author geeksun
 *  2008.12.5
 *  企业基本信息设置
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

	/* 
	 * @resolve 公司基本资料管理
	 */
	public ActionForward displayBasicInfo(ActionMapping mapping, ActionForm form,HttpServletRequest request,
			HttpServletResponse response)	throws Exception{
			HttpSession session = request.getSession(false);
			
			String hyjbxxid = (String) session.getAttribute("hyjbxxid");
			
			Hyjbxx hyjbxx = hyjbxxService.getCustomerById(hyjbxxid);
			List list = hyjbxxService.getMemberById(hyjbxxid);
			
			Gsjbxx leaguer = (Gsjbxx) list.get(0);
			
			// Mlist: 会员的全部属性
			List tradeList = tradeInfoService.getTableNameById(AppConstants.TOPCATEGORYID);
			
			request.setAttribute("hyjbxx", hyjbxx);
			request.setAttribute("leaguer", leaguer);
			request.setAttribute("traList", tradeList);
			 
			return mapping.findForward("basicinfo"); 
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
			List subList = tradeInfoService.getTableNameById(topCatFormKey);
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
	 * 	@see 修改公司基本信息和会员基本信息
	 */
	public ActionForward updateBasicInfo(ActionMapping mapping, ActionForm form,HttpServletRequest request,
			HttpServletResponse response)	throws Exception{
			request.setCharacterEncoding("gbk");
			response.setCharacterEncoding("text/html;charset=gbk");
			DynaActionForm basicInfoForm = (DynaActionForm)form;
			HttpSession session = request.getSession(false);
		    
			Hyjbxx hyjbxx = new Hyjbxx();
			Integer hyjbxxid = Integer.valueOf((String) session.getAttribute("hyjbxxid"));
			BeanUtils.copyProperties(hyjbxx, basicInfoForm);
			//System.out.println(hyjbxx.getZsxm()+hyjbxx.getGddh()+hyjbxx.getJydz());
			
			hyjbxx.setHyjbxxid(hyjbxxid); 
			//hyjbxx.setZsxm(StringUtils.converse(hyjbxx.getZsxm()));
			
			Gsjbxx gsjbxx = new Gsjbxx();
			BeanUtils.copyProperties(gsjbxx, basicInfoForm);
			gsjbxx.setHyjbxxid(hyjbxxid);
			//System.out.println(gsjbxx.getJyms()+"|"+gsjbxx.getZyhy());
			String[] jyms = request.getParameterValues("jyms");
			//主营行业
			String[] zyhy = request.getParameterValues("product");
			StringBuffer su;
			if(jyms!=null){
				su = new StringBuffer();
				for(int i=0;i<jyms.length;i++){
					su.append(jyms[i]+",");
				}
				gsjbxx.setJyms(su.toString());
			}
			//System.out.println(gsjbxx.getJyms());
			if(zyhy!=null){
				su = new StringBuffer();
				for(int i=0;i<zyhy.length;i++){
					su.append(zyhy[i]+",");
				}
				gsjbxx.setZyhy(su.toString());
			}
			//System.out.println(gsjbxx.getJyms()+"|"+gsjbxx.getZyhy());
			
			hyjbxxService.update(hyjbxx, gsjbxx);
			
			//应该返回到管理首页
			return mapping.findForward("basicinfo");
	}
	
}
