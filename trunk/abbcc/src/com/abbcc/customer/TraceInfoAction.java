package com.abbcc.customer;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.abbcc.common.AppConstants;
import com.abbcc.pojo.Hyjbxx;
import com.abbcc.service.HyjbxxService;
import com.abbcc.service.TradeInfoService;
import com.abbcc.struts.action.BaseAction;

/**
 * @author geeksun
 *  2008.12.5
 *  ��ҵ������Ϣ����
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
	 * @resolve �������Ϲ���
	 */
	public ActionForward execute(ActionMapping mapping, ActionForm form,HttpServletRequest request,
			HttpServletResponse response)	throws Exception{
			HttpSession session = request.getSession(true);
			String customer = (String) session.getAttribute("customer");
			List list = hyjbxxService.getMemberByName(customer);
			Hyjbxx leaguer = (Hyjbxx) list.get(0); 
			//System.out.println(leaguer.getHydlm()+" "+leaguer.getGslx());
			// Mlist: ��Ա��ȫ������
			List tradeList = tradeInfoService.getTableNameById(AppConstants.TOPCATEGORYID);
			System.out.println(tradeList.size());
			
			request.setAttribute("leaguer", leaguer);
			request.setAttribute("traList", tradeList);
			 
			return mapping.findForward("basicinfo"); 
	}
	
}