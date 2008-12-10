package com.abbcc.customer;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.abbcc.common.AppConstants;
import com.abbcc.common.JsonUtil;
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
	 * @resolve 基本资料管理
	 */
	public ActionForward displayBasicInfo(ActionMapping mapping, ActionForm form,HttpServletRequest request,
			HttpServletResponse response)	throws Exception{
			HttpSession session = request.getSession(true);
			String customer = (String) session.getAttribute("customer");
			List list = hyjbxxService.getMemberByName(customer);
			Hyjbxx leaguer = (Hyjbxx) list.get(0); 
			//System.out.println(leaguer.getHydlm()+" "+leaguer.getGslx());
			// Mlist: 会员的全部属性
			List tradeList = tradeInfoService.getTableNameById(AppConstants.TOPCATEGORYID);
			System.out.println(tradeList.size());
			
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
			System.out.println("topCatFormKey:"+topCatFormKey);
			List subList = tradeInfoService.getTableNameById(topCatFormKey);
			//String subList = tradeInfoService.getSubCategory(topCatFormKey);
			
			//String json = "[";
			//JSONObject json = JSONObject.forObject(subList);  
			String json = JsonUtil.list2json(subList);
			System.out.print(json);
			out.print(json);
			
			//request.setAttribute("subList", subList);
			return null;
	}
	
}
