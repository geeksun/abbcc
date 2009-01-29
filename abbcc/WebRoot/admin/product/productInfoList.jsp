<%@ page language="java" import="java.util.List,java.util.Iterator" pageEncoding="gbk"%>
<%@page import="com.abbcc.pojo.Cpgqxx" %>
<%@page import="com.abbcc.util.pagination.Pagination" %>
<%@page import="com.abbcc.common.AppConstants" %>
<%
	String path = request.getContextPath(); 
%>
<%
	
	List productInfoList=(List)request.getAttribute("productInfoList");
	Pagination pagination=(Pagination)request.getAttribute("pagination");
	String auditType=(String)request.getAttribute("auditType");
	String overdue=(String)request.getAttribute("overdue");
	if(auditType==null)auditType=AppConstants.CPGQXX_SFYX_3;
	if(overdue==null)overdue=AppConstants.CPGOXX_UN_OVERDUE;
	boolean isOverdue=false;
	 if(overdue.equals(AppConstants.CPGOXX_OVERDUE)){
	    isOverdue=true;
	}
	
	
	

 %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
 <HTML>
	<HEAD>
		<TITLE></TITLE> 
		<META http-equiv=Content-Type content="text/html; charset=gb2312">  
		<SCRIPT src="<%=path%>/user/product/productInfoList.files/AlicnTree.js" type=text/javascript></SCRIPT>
		<LINK rev=stylesheet href="<%=path%>/user/product/productInfoList.files/AlicnTree.css"
			type=text/css rel=stylesheet>
		<LINK rev=stylesheet href="<%=path%>/user/product/productInfoList.files/myali_search_v02.css"
			type=text/css rel=stylesheet>
		<LINK rev=stylesheet href="<%=path%>/user/product/productInfoList.files/mainframe.css"
			type=text/css rel=stylesheet>
		<LINK rev=stylesheet href="<%=path%>/user/product/productInfoList.files/content.css"
			type=text/css rel=stylesheet> 
		<script type="text/javascript">
			function updateAuditType(productInfoId,auditType){ 
			var page_form='<%=pagination!=null?pagination.getFormName():""%>'; 
			var action=document.<%=pagination!=null?pagination.getFormName():""%>.action="<%=path%>/admin/product.do?method=updateProductInfoAuditType&productInfoIds="+productInfoId+"&newAuditType="+auditType;
			document.<%=pagination!=null?pagination.getFormName():""%>.submit();
			}
			
			function deleteProduct(productInfoId){ 
			var page_form='<%=pagination!=null?pagination.getFormName():""%>'; 
			var action=document.<%=pagination!=null?pagination.getFormName():""%>.action="<%=path%>/admin/product.do?method=deleteProductInfo&productInfoIds="+productInfoId;
			document.<%=pagination!=null?pagination.getFormName():""%>.submit();
			}
			
			function clickSearchButton(){
			 	
				document.manageSearchForm.submit();
			}
		
		</script>
	</HEAD>
	<BODY> 
		<TABLE width="100%">
			<TBODY>
				<TR>
					<TD class=bigtitle width=200> 
						 管理供求信息 
					</TD>
					 
				</TR>
			</TBODY>
		</TABLE>
		<BR> 
		 
		<BR>
		<TABLE cellSpacing=0 cellPadding=0 width="100%">
			<TBODY>
				<TR>
					<TD class=card_blank_73 width=10>
						&nbsp;
					</TD>
						<%if(auditType.equals(AppConstants.CPGQXX_SFYX_3)&&!isOverdue){
						
						%>
						<TD class=card_down_73 style="WIDTH: 140px">
					
						 <FONT id=beChangedColor color=#000000>审核未通过(0)</FONT>
						</TD>
						<%
						}else
						{
						%>
						<TD class=card_normal_73 style="WIDTH: 140px">
					
						   <A href="<%=path%>/admin/product.do?method=productInfoList&auditType=<%=AppConstants.CPGQXX_SFYX_3 %>&overdue=<%=AppConstants.CPGOXX_UN_OVERDUE %>"> <FONT id=beChangedColor color=#000000>审核未通过(0)</FONT></A>
						
						</TD>
						<%
						}
					   %>
						<%if(auditType.equals(AppConstants.CPGQXX_SFYX_1)&&!isOverdue){
						
						%>
						<TD class=card_down_73 style="WIDTH: 140px">
					
						 <FONT id=beChangedColor color=#000000>已发布上网(13)</FONT>
						</TD>
						<%
						}else
						{
						%>
						<TD class=card_normal_73 style="WIDTH: 140px">
					
						<A href="<%=path%>/admin/product.do?method=productInfoList&auditType=<%=AppConstants.CPGQXX_SFYX_1 %>&overdue=<%=AppConstants.CPGOXX_UN_OVERDUE %>"> <FONT id=beChangedColor color=#000000>已发布上网(13)</FONT></A>
						
						</TD>
						<%
						}
					   %>
					   <%if(auditType.equals(AppConstants.CPGQXX_SFYX_2)&&!isOverdue){
						
						%>
						<TD class=card_down_73 style="WIDTH: 140px">
					
						 <FONT id=beChangedColor color=#000000>审核中(0)</FONT>
						</TD>
						<%
						}else
						{
						%>
						<TD class=card_normal_73 style="WIDTH: 140px">
					
						<A href="<%=path%>/admin/product.do?method=productInfoList&auditType=<%=AppConstants.CPGQXX_SFYX_2 %>&overdue=<%=AppConstants.CPGOXX_UN_OVERDUE %>"> <FONT id=beChangedColor color=#000000>审核中(0)</FONT></A>
						
						</TD>
						<%
						}
					   %> 
					 <%if(isOverdue){
						
						%>
						<TD class=card_down_73 style="WIDTH: 140px">
					
						 <FONT id=beChangedColor color=#000000>已过期(0)</FONT>
						</TD>
						<%
						}else
						{
						%>
						<TD class=card_normal_73 style="WIDTH: 140px">
					
						<A href="<%=path%>/admin/product.do?method=productInfoList&overdue=<%=AppConstants.CPGOXX_OVERDUE %>"> <FONT id=beChangedColor color=#000000>已过期(0)</FONT></A>
						
						</TD>
						<%
						}
					   %>   
					<TD class=card_blank_73>
						&nbsp;
					</TD>
				</TR>
			</TBODY>
		</TABLE>
		<FORM style="MARGIN: 0px" name=manageSearchForm method=post action="<%=path%>/admin/product.do?method=productInfoList&auditType=<%=auditType %>&overdue=<%=AppConstants.CPGOXX_UN_OVERDUE %>"> 
			<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
				<TBODY>
					<TR>
						<TD
							style="BORDER-RIGHT: #ff7300 1px solid; PADDING-RIGHT: 5px; PADDING-LEFT: 5px; PADDING-BOTTOM: 5px; BORDER-LEFT: #ff7300 1px solid; PADDING-TOP: 5px; BORDER-BOTTOM: #ff7300 1px solid"
							height=35>
							<TABLE cellSpacing=0 cellPadding=5 width="100%" border=0>
								<TBODY>
									<TR>
										<TD class=s align=left width=350>
											产品名称：
											<INPUT maxLength=100 size=12 name=productName>
											<SELECT name=orderType>
												<OPTION value="" selected>
													所有信息
												</OPTION>
												<OPTGROUP label=按照买卖方向>
													<OPTION value=<%=AppConstants.PRODUCT_SALE%>>
														供应信息
													</OPTION>
													<OPTION value=<%=AppConstants.PRODUCT_BUY%>>
														求购信息
													</OPTION>
												</OPTGROUP>
												<OPTGROUP label=按照贸易形式>
													<OPTION value=tradeType,1>
														产品信息
													</OPTION>
													<OPTION value=tradeType,2>
														加工信息
													</OPTION>
													<OPTION value=tradeType,3>
														代理信息
													</OPTION>
													<OPTION value=tradeType,4>
														合作信息
													</OPTION>
													<OPTION value=tradeType,5>
														商务服务
													</OPTION>
												</OPTGROUP>
											</SELECT>
											<INPUT onmousedown="return clickSearchButton();"
												  type=button value=查询
												name=submit_search>
										</TD>
										 
									</TR>
								</TBODY>
							</TABLE>
						</TD>
					</TR>
				</TBODY>
			</TABLE>
		</FORM>
		<BR>
	 	<FORM name=dealForm
				action=# method=post>
		<TABLE class=list_lb_loca cellSpacing=1 cellPadding=0 width="100%"> 
				<COLGROUP>
					<COL align=left>
					<COL align=middle>
					<COL align=middle>
					<COL align=middle>
					<COL align=middle>
					<COL align=middle>
					<COL align=middle>
					<COL align=middle>
				</COLGROUP>
			<TBODY>
				<TR>
					<TD class=list_lb_title align=left width=20>
						&nbsp;
					</TD>
					<TD class=list_lb_title align=middle width=100>
						图片
					</TD>
					<TD class=list_lb_title align=middle>
						标题
					</TD>
					<TD class=list_lb_title align=middle width=60>
						到期时间
					</TD>
					  
					<TD class=list_lb_title align=middle width=50>
						用户
					</TD>
					 <TD class=list_lb_title align=middle width=200>
						操作
					</TD>
				</TR>
				<%
					if(productInfoList!=null){
					
						Iterator iter=productInfoList.iterator();
						while(iter.hasNext()){
							Cpgqxx cpgqxx=(Cpgqxx)iter.next();
							if(cpgqxx!=null){
							String title=cpgqxx.getXxbt();
							Long id=cpgqxx.getCpgqxxid();
							 
				 %>
				<TR>
					<TD class=list_lb_content align=left width=20>
						<INPUT id=checkBox1 type=checkbox value=290577907 name=offerId>
						<SPAN id=290577907_type style="DISPLAY: none">SALE</SPAN>
					</TD>
					<TD class=list_lb_content align=left width=100>
						<A onmousedown="return aliclick(this,'?tracelog=gl_onweb_pic');"
							href="#"
							target=_blank>
							<DIV class=list_picbox>
								<IMG  src="<%=path%>/user/product/productInfoList.files/290577907.summ.jpg"
									  border=0>
							</DIV>
						</A>
					</TD>
					<TD class=list_lb_content align=left>
						<DIV style="FLOAT: left">
							<FONT color=#079807>【卖】</FONT>
						</DIV>
						<DIV style="FLOAT: left">
							<A
								onmousedown="return aliclick(this,'?tracelog=gl_onweb_title');"
								style="WORD-BREAK: break-all"
								href="<%=path %>/admin/product.do?method=showProductInfo&productInfoId=<%=id %>"
								target=right><%=title %> </A>
							<BR>
							<FONT style="WHITE-SPACE: nowrap"></FONT>
						</DIV>
					</TD>
					<TD class=list_lb_content align=middle>
						<A onmouseover="MM_showHideLayers('TimeLayer1','','show')"
							style="TEXT-DECORATION: none"
							onmouseout="MM_showHideLayers('TimeLayer1','','hide')"
							href="#">2009-06-22
						</A>
						 
					</TD> 
					<TD class=list_lb_content align=middle width=50>
						<A href="#"> 呵呵 </A>
						 
					</TD>
					 <TD class=list_lb_content align=middle >
						<A href="#"  onclick="updateAuditType(<%= id%>,<%= AppConstants.CPGQXX_SFYX_1%>)">审核通过
						</A><br>
						<A href="#"  onclick="updateAuditType(<%= id%>,<%= AppConstants.CPGQXX_SFYX_3%>)">审核未通过
						</A><br>
						<A href="#"  onclick="updateAuditType(<%= id%>,<%= AppConstants.CPGQXX_SFYX_2%>)">审核中
						</A><br>
						<A href="#"  onclick="deleteProduct(<%= id%>)">删除
						</A>
					</TD>
				</TR>
				<% 
							}
						}
					} 
				 %>
			</TBODY>
		</TABLE> </FORM>
		<BR>
		<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
			<TBODY>
				<TR>
					<TD style="PADDING-LEFT: 5px" vAlign=top>
						<INPUT onclick=javascript:doSelectAllBox(13,this) type=checkbox
							value=checkbox name=selectAllBox>
						全选&nbsp;&nbsp;  
						<INPUT onclick=""
							type=button value=审核通过 name=submit_move>
						&nbsp;
						<INPUT onclick=""
							type=button value=审核未通过 name=submit_move>
						&nbsp;
						<INPUT onclick=""
							type=button value=删除 name=submit_move>
						&nbsp;
						 
					</TD>
				</TR>
			</TBODY>
		</TABLE>
		<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
			<TBODY>
				<TR>
					<TD style="PADDING-LEFT: 8px" align=right>
					 	<%=pagination!=null?pagination.getHtml():"" %>
					</TD>
				</TR>
				 
			</TBODY>
		</TABLE> 
	</BODY>
</HTML>
