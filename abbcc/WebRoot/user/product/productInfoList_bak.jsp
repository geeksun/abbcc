 <%@ page language="java" import="java.util.List,java.util.Iterator" pageEncoding="utf-8"%>
<%@page import="com.abbcc.pojo.Cpgqxx" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%
	
	List productInfoList=(List)request.getAttribute("productInfoList");

 %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
 <HTML>
	<HEAD>
		<TITLE></TITLE>
		<LINK href="http://i02.c.aliimg.com/favicon.ico" rel="shortcut icon">
		<META http-equiv=Content-Type content="text/html; charset=gb2312">
		 
		<SCRIPT language=JavaScript src="<%=path%>/user/product/productInfoList.files/aliclick.js"></SCRIPT>

		<SCRIPT src="<%=path%>/user/product/productInfoList.files/search.js" type=text/javascript
			charset=gb2312></SCRIPT>

		<SCRIPT src="<%=path%>/user/product/productInfoList.files/AlicnTree.js" type=text/javascript></SCRIPT>
		<LINK rev=stylesheet href="<%=path%>/user/product/productInfoList.files/AlicnTree.css"
			type=text/css rel=stylesheet>
		<LINK rev=stylesheet href="<%=path%>/user/product/productInfoList.files/myali_search_v02.css"
			type=text/css rel=stylesheet>
		<LINK rev=stylesheet href="<%=path%>/user/product/productInfoList.files/mainframe.css"
			type=text/css rel=stylesheet>
		<LINK rev=stylesheet href="<%=path%>/user/product/productInfoList.files/content.css"
			type=text/css rel=stylesheet> 
	</HEAD>
	<BODY> 
		<TABLE width="100%">
			<TBODY>
				<TR>
					<TD class=bigtitle width=200>
						管理供求信息
					</TD>
					<TD class=s align=right>
						<A
							onmousedown="return aliclick(this,'?tracelog=fb_yoursort_tpentry');"
							style="TEXT-DECORATION: none"
							href="#"><IMG
								height=26 src="<%=path%>/user/product/productInfoList.files/myali_custom.gif" width=102
								align=absMiddle border=0>
		
					<IMG height=10 src="<%=path%>/user/product/productInfoList.files/icon_new02_12x.gif"
								width=16 border=0> </A>&nbsp;&nbsp;
					</TD>
					<TD align=right width=120>
						<A
							onmousedown="return aliclick(this,'?tracelog=gl_onweb_newbutton');"
							href="#"><IMG
								height=26 src="<%=path%>/user/product/productInfoList.files/postnewoffer.gif" width=123
								align=absMiddle border=0> </A>
					</TD>
				</TR>
			</TBODY>
		</TABLE>
		<BR> 
		<TABLE class=tx_box cellSpacing=0 cellPadding=0 width="100%"
			align=center>
			<TBODY>
				<TR>
					<TD vAlign=center align=middle width=80 rowSpan=2>
						<IMG height=53 src="<%=path%>/user/product/productInfoList.files/icon1.gif" width=53>
					</TD>
					<TD class=tx_title height=20>
						 
					</TD>
				</TR>
				<TR>
					<TD class=tx_content>
						<STRONG>修改：</STRONG>仅修改信息内容，经审核通过更新上网，信息排名不变。
						<BR>
						<STRONG>重发：</STRONG>信息内容保持不变，仅更新发布时间，让您的信息排名靠前，每天限重发一次！
						<BR>
						<A
							href="#"
							target=_blank>看看买家怎么搜</A>：利用买家搜索排行榜，优化您的产品名称，提高曝光度！
					</TD>
				</TR>
			</TBODY>
		</TABLE>
		<BR>
		<TABLE cellSpacing=0 cellPadding=0 width="100%">
			<TBODY>
				<TR>
					<TD class=card_blank_73 width=10>
						&nbsp;
					</TD>
					<TD class=card_down_73 style="WIDTH: 140px">
						已发布上网(13)
					</TD>
					<TD class=card_normal_73 style="WIDTH: 140px">
						<A
							href="#">审核中(0)</A>
					</TD>
					<TD class=card_normal_73 style="WIDTH: 140px">
						<A
							href="#"><FONT
							id=beChangedColor color=#000000>审核未通过(0)</FONT>
						</A>
					</TD>
					<TD class=card_normal_73 style="WIDTH: 140px">
						<A title=轻松点击按钮，重发所有过期信息！
							href="#">已过期(0)</A>
					</TD>
					<TD class=card_blank_73>
						&nbsp;
					</TD>
				</TR>
			</TBODY>
		</TABLE>
		<FORM style="MARGIN: 0px" name=manageSearchForm method=post> 
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
											<INPUT maxLength=100 size=12 name=keywords>
											<SELECT
												onkeyup=mixedTypeChanged(document.manageSearchForm,this.value)
												onchange=mixedTypeChanged(document.manageSearchForm,this.value)
												name=mixedType>
												<OPTION value="" selected>
													所有信息
												</OPTION>
												<OPTGROUP label=按照买卖方向>
													<OPTION value=type,SALE>
														供应信息
													</OPTION>
													<OPTION value=type,BUY>
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
											<INPUT onmousedown="return clickSearchButton(this);"
												  type=button value=查询
												name=submit_search>
										</TD>
										<TD class=s align=right>
											&nbsp;
											<A
												onmousedown="return aliclick(this,'?tracelog=myalibaba_offer_price')"
												href="#">批量修改价格</A>
											（
											<IMG height=16
												src="<%=path%>/user/product/productInfoList.files/icon_green_help16.gif" width=16
												align=absMiddle>
											<A
												href="#"
												target=_blank>如何批量修改价格？</A>） │
											<A
												href="#">批量重发过期信息</A>
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
		<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
			<TBODY>
				<TR>
					<TD vAlign=center height=20>
						&nbsp;共有
						<STRONG><FONT color=#ff0000>13</FONT>
						</STRONG> 条已发布上网的信息！
					</TD>
					<TD align=right width=200>
						<FONT color=#999999>上一页</FONT>
						<B>1</B>
						<FONT color=#999999>下一页</FONT>
					</TD>
				</TR>
			</TBODY>
		</TABLE>	<FORM name=dealForm
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
						修改
					</TD>
					<TD class=list_lb_title align=middle width=50>
						重发
					</TD>
					<TD class=list_lb_title align=middle width=120>
						我的分类
					</TD>
					<TD class=list_lb_title align=middle width=48>
						竞价排名
					</TD>
				</TR>
				<%
					if(productInfoList!=null){
					
						Iterator iter=productInfoList.iterator();
						while(iter.hasNext()){
							Cpgqxx cpgqxx=(Cpgqxx)iter.next();
							if(cpgqxx!=null){
							String title=cpgqxx.getXxbt();
							 
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
								<IMG alt=供应油动遥控船 src="<%=path%>/user/product/productInfoList.files/290577907.summ.jpg"
									onload="" border=0>
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
								href="#"
								target=_blank><%=title %> </A>
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
						<DIV id=TimeLayer1
							onmouseover="MM_showHideLayers('TimeLayer1','','show')"
							style="PADDING-RIGHT: 0px; PADDING-LEFT: 0px; LEFT: -80px; VISIBILITY: hidden; PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-TOP: 0px; POSITION: relative; TOP: -60px; BACKGROUND-COLOR: #ffffff"
							onmouseout="MM_showHideLayers('TimeLayer1','','hide')">
							<DIV
								style="BORDER-RIGHT: #ff7300 1px solid; PADDING-RIGHT: 5px; BORDER-TOP: #ff7300 1px solid; PADDING-LEFT: 5px; BACKGROUND: #fff5d8; PADDING-BOTTOM: 5px; BORDER-LEFT: #ff7300 1px solid; WIDTH: 160px; PADDING-TOP: 5px; BORDER-BOTTOM: #ff7300 1px solid; POSITION: absolute; HEIGHT: 30px">
								发布时间：2008-12-24
							</DIV>
						</DIV>
					</TD>
					<TD class=list_lb_content align=middle width=50>
						<A
							onmousedown="return aliclick(this,'?tracelog=gl_onweb_modify');"
							onclick="javascript: {return confirm('修改信息审核通过才能上网，且无法更改信息排名，确定要修改吗？')} "
							href="#"><IMG
								onmouseover="swapImage(this,'#')"
								onmouseout="swapImage(this,'#')"
								height=20 alt=修改 src="<%=path%>/user/product/productInfoList.files/word3_nor.gif"
								width=56 align=absMiddle border=0>
						</A>
					</TD>
					<TD class=list_lb_content align=middle width=50>
						<A
							onmousedown="return aliclick(this,'?tracelog=gl_onweb_repost');"
							onclick="javascript:return confirm('确定要重发吗?')"
							href="#"><IMG
								onmouseover="swapImage(this,'#')"
								onmouseout="swapImage(this,'#')"
								height=20 alt=重发 src="<%=path%>/user/product/productInfoList.files/word3a_nor.gif"
								width=56 align=absMiddle border=0> </A>
						<DIV id=LayerRepost1
							onmouseover="MM_showHideLayers('LayerRepost1','','show')"
							style="PADDING-RIGHT: 0px; PADDING-LEFT: 0px; LEFT: -140px; VISIBILITY: hidden; PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-TOP: 0px; POSITION: relative; TOP: -70px; BACKGROUND-COLOR: #ffffff"
							onmouseout="MM_showHideLayers('LayerRepost1','','hide')">
							<DIV
								style="BORDER-RIGHT: #ff7300 1px solid; PADDING-RIGHT: 5px; BORDER-TOP: #ff7300 1px solid; PADDING-LEFT: 5px; BACKGROUND: #fff5d8; PADDING-BOTTOM: 5px; BORDER-LEFT: #ff7300 1px solid; WIDTH: 140px; PADDING-TOP: 5px; BORDER-BOTTOM: #ff7300 1px solid; POSITION: absolute; HEIGHT: 30px; TEXT-ALIGN: left">
								重发：可以让已上网信息的有效时间变为最新（一天可重发一次）
							</DIV>
						</DIV>
					</TD>
					<TD class=list_lb_content style="WORD-BREAK: break-all" align=left
						width=120>
						未分类
					</TD>
					<TD class=list_lb_content align=middle>
						<A  
							 
							href="#">获取排名</A>

						<DIV id=GetName1 style="PADDING-RIGHT: 0px; PADDING-LEFT: 0px; LEFT: -105px; VISIBILITY: hidden; PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-TOP: 0px; POSITION: relative; TOP: -70px; BACKGROUND-COLOR: #ffffff"
						 >
							<DIV
								style="BORDER-RIGHT: #ff7300 1px solid; PADDING-RIGHT: 5px; BORDER-TOP: #ff7300 1px solid; PADDING-LEFT: 5px; BACKGROUND: #fff5d8; PADDING-BOTTOM: 5px; BORDER-LEFT: #ff7300 1px solid; WIDTH: 140px; PADDING-TOP: 5px; BORDER-BOTTOM: #ff7300 1px solid; POSITION: absolute; HEIGHT: 30px; TEXT-ALIGN: left">
								参加竞价排名，可直接将您的供求信息排名优先
							</DIV>
						</DIV>
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
						全选&nbsp;&nbsp; 将选中的信息移至分类
						<SELECT id=moveToOfferGroupId name=moveToOfferGroupId>
							<OPTION selected>
								请选择分类
							</OPTION>
							<OPTION value=0>
								未分类供应信息
							</OPTION>
						</SELECT>
						<INPUT onclick="javascript:dealSelectedOffer('moveOfferGroup')"
							type=button value=移动 name=submit_move>
						&nbsp;
						<INPUT
							onmousedown="return aliclick(this,'?tracelog=gl_onweb_overbutton');"
							onclick="javascript:dealSelectedOffer('cancle')" type=button
							value=转为过期 name=submit_cancle>
						&nbsp;
						<INPUT
							onmousedown="return aliclick(this,'?tracelog=gl_onweb_deletebutton');"
							onclick="javascript:dealSelectedOffer('delete')" type=button
							value=永久删除 name=submit_cancle>
					</TD>
				</TR>
			</TBODY>
		</TABLE>
		<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
			<TBODY>
				<TR>
					<TD style="PADDING-LEFT: 8px" align=right>
						共 1 页 13 条 本页显示 1－13 条
					</TD>
				</TR>
				<TR>
					<TD align=right>
						<FONT color=#999999>上一页</FONT>
						<B>1</B>
						<FONT color=#999999>下一页</FONT> 到第
						<INPUT class=s maxLength=10 size=2 name=beginPage1>
						&nbsp;页
						<INPUT onclick=javascript:gotobeginPage1() type=button value=确定
							name=gobeginPage1>

					</TD>
				</TR>
			</TBODY>
		</TABLE> 
	</BODY>
</HTML>
 