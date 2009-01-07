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

import com.abbcc.common.JsonUtil;
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
			HttpServletResponse response) {
			try{
			HttpSession session = request.getSession(false);
			
			String hyjbxxid = (String) session.getAttribute("hyjbxxid");
			
			Hyjbxx hyjbxx = hyjbxxService.getCustomerById(hyjbxxid);
			List list = hyjbxxService.getMemberById(hyjbxxid);
			
			
			
			Gsjbxx leaguer = (Gsjbxx) list.get(0);
			
			String zyhy=leaguer.getZyhy();
			List idsList=this.getProdcutTypeIdList(zyhy);
			List textAreaList=this.productService.getTextAreaProductTypeListByIds(idsList);
			// Mlist: 会员的全部属性
			//List tradeList = tradeInfoService.getTableNameById(AppConstants.TOPCATEGORYID);
			int parentid = 0;

			List<ProductType> topCategory = this.productService
					.getProductTypeByParentId(parentid);
			request.setAttribute("textAreaList", textAreaList);
			request.setAttribute("hyjbxx", hyjbxx);
			request.setAttribute("leaguer", leaguer);
			request.setAttribute("traList", topCategory);
			}catch(Exception e){
				log.error(e);
				e.printStackTrace();
			}
			 
			return mapping.findForward("basicinfo"); 
	}
	private List<Integer> getProdcutTypeIdList(String ids){
		if(ids==null)return null;
		List ret=new ArrayList();
		String[] tempIds=ids.split(",");
		for(int i=0;i<tempIds.length;i++){
			String id=tempIds[i];
			try{
				Integer _id=Integer.valueOf(id);
				ret.add(_id);
			}catch(Exception e){
				
			}
		}
		return ret;
	}
	
	/**
	 * @see 公司简介-->公司详细资料管理
	 */
	public ActionForward displayDetailInfo(ActionMapping mapping, ActionForm form,HttpServletRequest request,
			HttpServletResponse response)	throws Exception{
			HttpSession session = request.getSession(false);
			
			/*Gsxxxx gsxxxxx = new Gsxxxx();
			DynaActionForm detailInfoForm = (DynaActionForm)form;
			BeanUtils.copyProperties(gsxxxxx, detailInfoForm);
			Integer hyjbxxid = Integer.valueOf((String) session.getAttribute("hyjbxxid"));
			gsxxxxx.setHyjbxxid(hyjbxxid);
			String ycl = request.getParameter("monthProduction")+request.getParameter("unit"); 
			gsxxxxx.setYcl(ycl);
			
 			System.out.println(gsxxxxx.getZczb()+gsxxxxx.getGsclsj()+gsxxxxx.getGszcd());
			
			hyjbxxService.add(gsxxxxx);*/
			
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
			
			hyjbxx.setHyjbxxid(hyjbxxid); 
			//hyjbxx.setZsxm(StringUtils.converse(hyjbxx.getZsxm()));
			
			Gsjbxx gsjbxx = new Gsjbxx();
			BeanUtils.copyProperties(gsjbxx, basicInfoForm);
			gsjbxx.setHyjbxxid(hyjbxxid);
			String[] jyms = request.getParameterValues("jyms");
			//主营行业
			String[] zyhy = request.getParameterValues("product");
			StringBuffer su;
			if(jyms!=null){
				su = new StringBuffer();
				for(int i=0;i<jyms.length;i++){
					su.append(jyms[i]);
					su.append(",");
				}
				gsjbxx.setJyms(su.toString());
			}
			//System.out.println(gsjbxx.getJyms());
			if(zyhy!=null){
				su = new StringBuffer();
				for(int i=0;i<zyhy.length;i++){
					su.append(zyhy[i]);
					su.append(",");
				}
				gsjbxx.setZyhy(su.toString());
			}
			//System.out.println(gsjbxx.getJyms()+"|"+gsjbxx.getZyhy());
			
			hyjbxxService.update(hyjbxx, gsjbxx);
			
			//应该返回到管理首页
			return mapping.findForward("basicinfo");
	}
	
	/**
	 * @see 公司简介-->公司详细资料管理-->修改公司详细信息
	 */
	public ActionForward updateDetailInfo(ActionMapping mapping, ActionForm form,HttpServletRequest request,
			HttpServletResponse response)	throws Exception{
			HttpSession session = request.getSession(false);
			request.setCharacterEncoding("gbk");
			response.setCharacterEncoding("text/html;charset=gbk");
			
			Gsxxxx gsxxxx = new Gsxxxx();
			DynaActionForm detailInfoForm = (DynaActionForm)form;
			BeanUtils.copyProperties(gsxxxx, detailInfoForm);
			Integer hyjbxxid = Integer.valueOf((String) session.getAttribute("hyjbxxid"));
			gsxxxx.setHyjbxxid(hyjbxxid);
			String ycl = request.getParameter("monthProduction")+request.getParameter("unit"); 
			gsxxxx.setYcl(ycl);
			//管理体系认证
			String[] gltxrz = request.getParameterValues("gltxrz");
			//主要市场
			String[] zysc = request.getParameterValues("zysc"); 
			StringBuffer sub;
			if(gltxrz!=null){
				sub = new StringBuffer();
				for(int i=0;i<gltxrz.length;i++){
					sub.append(gltxrz[i]);
					sub.append(",");
				}
				gsxxxx.setGltxrz(sub.toString());
			}
			
			if(zysc!=null){ 
				sub = new StringBuffer();
				for(int i=0;i<zysc.length;i++){
					sub.append(zysc[i]);
					sub.append(",");
				}
				gsxxxx.setZysc(sub.toString());
			}
			
 			System.out.println(gsxxxx.getZczb()+gsxxxx.getGsclsj()+gsxxxx.getGszcd()+gsxxxx.getGltxrz());
			
			hyjbxxService.add(gsxxxx);
			
			return mapping.findForward("detailinfo");
	}
	
	
}
