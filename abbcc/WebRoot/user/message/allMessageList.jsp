<%@ page contentType="text/html; charset=GBK"%>
<%@page import="java.util.List,java.util.Iterator"%>
<%@page import="com.abbcc.pojo.Message"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<%
	String path = request.getContextPath();
	%>
	<head>
		<title>���յ�������</title>
		<SCRIPT language=JavaScript src="<%=path%>/user/message/link/aliclick.js"></SCRIPT>
		<SCRIPT src="<%=path%>/user/message/link/search.js" type=text/javascript charset=gb2312></SCRIPT>
		<SCRIPT src="<%=path%>/user/message/link/AlicnTree.js" type=text/javascript></SCRIPT>

		<LINK rev=stylesheet href="<%=path%>/user/message/link/AlicnTree.css" type=text/css
			rel=stylesheet>
		<LINK rev=stylesheet href="<%=path%>/user/message/link/myali_search_v02.css" type=text/css
			rel=stylesheet>
		<LINK rev=stylesheet href="<%=path%>/user/message/link/mainframe.css" type=text/css
			rel=stylesheet>
		<LINK rev=stylesheet href="<%=path%>/user/message/link/content.css" type=text/css
			rel=stylesheet>
	</head>
	<body>
		<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
			<TBODY>
				<TR>
					<TD class=bigtitle width="53%">
						���յ�������
					</TD>
					<TD align=right400-826-5188 width="47%"></TD>
				</TR>
			</TBODY>
		</TABLE>
		<BR>

		<TABLE cellSpacing=0 cellPadding=0 width="100%">
			<TBODY>
				<TR>
					<TD class=card_blank width=10>
						&nbsp;
					</TD>
					<TD class=card_down>
						��������
					</TD>
					<TD class=card_normal onmouseover="this.style.cursor='hand'"
						style="WIDTH: 120px"
						onclick="document.getElementById('queryOfferType').value='sale';doSearch();">
						���ڹ�Ӧ��Ϣ����
					</TD>
					<TD class=card_normal onmouseover="this.style.cursor='hand'"
						style="WIDTH: 120px"
						onclick="document.getElementById('queryOfferType').value='buy';doSearch();">
						��������Ϣ����
					</TD>
					<TD class=card_blank>
						<SPAN style="FLOAT: right; TEXT-ALIGN: right"><IMG
								height=15 src="<%=path%>/user/message/link/myali_icon01.gif" width=16 align=absMiddle>δ��&nbsp;&nbsp;
							<IMG height=15 src="<%=path%>/user/message/link/myali_icon02.gif" width=16
								align=absMiddle>�Ѷ�&nbsp;&nbsp; <IMG height=15
								src="<%=path%>/user/message/link/myali_icon03.gif" width=16 align=absMiddle>�ѻظ� </SPAN>
					</TD>
				</TR>
			</TBODY>
		</TABLE>
		<FORM style="MARGIN: 0px" name=messageSearchForm method=get>
			<INPUT id=tracelog type=hidden name=tracelog>
			<INPUT type=hidden value=1 name=_fmme.l._0.p>
			<INPUT type=hidden value=15 name=_fmme.l._0.pa>
			<INPUT id=queryOfferType type=hidden name=_fmme.l._0.of>
			<INPUT id=queryOpen type=hidden name=_fmme.l._0.o>
			<INPUT id=queryReply type=hidden name=_fmme.l._0.r>
			<TABLE class=list_box cellSpacing=0 cellPadding=0 width="100%"
				border=0>
				<TBODY>
					<TR>
						<TD class=list_right_box width="100%">
							<SPAN class=c><SELECT class=S id=queryReplySelect
									onchange="document.getElementById('tracelog').value='po_messageaccept_feed';doFilter()"
									name=replySelect>
									<OPTION selected>
										�Ƿ�ظ�
									</OPTION>
									<OPTION value=true>
										�ѻظ�
									</OPTION>
									<OPTION value=false>
										δ�ظ�
									</OPTION>
								</SELECT> </SPAN>
							<INPUT id=queryKeywords onclick=cleanDefaultKeywords(this)
								type=hidden maxLength=100 value=���������Ա���Ĺؼ��� name=_fmme.l._0.k>
							<SELECT
								onchange="javascript:document.getElementById('tracelog').value='po_messageaccept_search';doSearch()"
								name=_fmme.l._0.t>
								<OPTION value=1week>
									һ�������ڵ�����
								</OPTION>
								<OPTION value=1month>
									һ�����ڵ�����
								</OPTION>
								<OPTION value=3month selected>
									�������ڵ�����
								</OPTION>
								<OPTION value=3_month_to_1_year>
									�����µ�һ���ڵ�����
								</OPTION>
								<OPTION value=over1year>
									һ�����ϵ�����
								</OPTION>
							</SELECT>
						</TD>
					</TR>
				</TBODY>
			</TABLE>
		</FORM>
		<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
			<TBODY>
				<TR>
					<TD class=s style="PADDING-LEFT: 5px" width="65%" height=30>
						&nbsp;
					</TD>
					<TD style="PADDING-LEFT: 8px" align=right width="42%">
						<FONT color=#999999>��һҳ</FONT>
						<B>1</B>
						<FONT color=#999999>��һҳ</FONT>
					</TD>
				</TR>
			</TBODY>
		</TABLE>
		<FORM style="MARGIN: 0px" name=dealForm
			action="<%=path%>/message.do?method=listAllMessage" method=post>

			<INPUT type=hidden value=false name=isSend>
			<INPUT type=hidden
				value=http://china.alibaba.com/message/list_received_message.htm?ml=1&amp;tracelog=myali_menu_myreceivedmessage
				name=doneUrl>
			<TABLE class=list_lb_loca cellSpacing=0 cellPadding=0 width="100%"
				border=0>
				<COLGROUP>
					<COL align=middle>
					<COL align=let>
					<COL align=left>
					<COL align=middle>
				</COLGROUP>
				<TBODY>
					<TR>
						<TD class=list_lb_title width=20>
							&nbsp;
						</TD>
						<TD class=list_lb_title>
							����
						</TD>
						<TD class=list_lb_title width=150>
							<SPAN class=s>����</SPAN>
						</TD>
						<TD class=list_lb_title width=80>
							�Ƿ񹫿�
						</TD>
					</TR>
					<SCRIPT src="<%=path%>/user/message/link/alitalk.js" type=text/javascript></SCRIPT>

					<SCRIPT>
                	var paramArr = new Array();
                </SCRIPT>
					<%
						List list = (List) request.getAttribute("listAll");
						String currentPage=(String)request.getAttribute("currentPage");
						int _currentPage=Integer.valueOf(currentPage);
						if (list != null) {
							Iterator iter = list.iterator();
							while (iter.hasNext()) {
								Message message = (Message) iter.next();

								String title = message.getTitle();
								String content=message.getContent();
								long id=message.getId();
								int fromid=message.getFromid();
					%>
					<TR>
						<TD class=list_lb_content align=middle>
							<INPUT id=checkBox1 type=checkbox value=124142992 name=messageIds>
						</TD>
						<TD class=list_lb_content>
							<SPAN style="FLOAT: left; WIDTH: 20px; PADDING-TOP: 2px">
								<IMG height=15 alt=�Ѷ����� src="<%=path%>/user/message/link/myali_icon02.gif" width=16
									align=absMiddle> </SPAN>
							<SPAN style="FLOAT: left"><A
								title="&#13;&#10;"
								href="<%=path %>/message.do?method=showMessage&id=<%=id %>" target=right><%=title %> </A> <BR>2008-10-29
								03:52:59 </SPAN>
						</TD>
						<TD class=list_lb_content>
							<A title=pjttiy href="" target=right><%=fromid %></A>&nbsp;
							<IMG id=alitalkImg1 style="CURSOR: pointer" height=16
								src="<%=path%>/user/message/link/myt_offline.gif" width=16 align=absMiddle border=0>
							<SPAN id=alitalkTxt1></SPAN> &nbsp;
							<BR>
							<DIV title=��Ա>
								<%=fromid %>(���徭Ӫ)
							</DIV>
						</TD>
						<TD class=list_lb_content>
							&nbsp;
						</TD>
					</TR>



					<%
						}

						}
					%>


				</TBODY>
			</TABLE>
		</FORM>
		<BR>
		<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
			<TBODY>
				<TR>
					<TD vAlign=top width="61%">
						<INPUT onclick=javascript:doSelectAllBox(3,this) type=checkbox
							value=checkbox name=selectAllBox>
						ȫѡ&nbsp;&nbsp;��ѡ�е�����&nbsp;
						<INPUT
							onmousedown="return aliclick(this,'?tracelog=gl_onweb_overbutton');"
							onclick="javascript:dealSelectedMessage('delete')" type=button
							value=����ɾ�� name=submit_cancle>
						<INPUT class=s onclick=javascript:dealSetSpamMessage() type=button
							value=תΪ��������>
					</TD>
				<%
					Integer count=(Integer)request.getAttribute("count");
					Integer pageCount=(Integer)request.getAttribute("pageCount");
					 
				
				 %>
					<TD style="PADDING-LEFT: 8px" align=right width="39%">
						�� <%=pageCount %> ҳ <%=count %> ��   
					</TD>
				</TR>
			</TBODY>
		</TABLE>
		<%
			int previousPage=_currentPage-1;
			int nextPage=_currentPage+1;
			if(previousPage<0){
				previousPage=1;
			}
			if(nextPage>pageCount)
			{
				nextPage=pageCount;
			}
			
			//Pagination pagination =(pagination)request.getAttribute("pagination");
		 %>
		<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
			<TBODY>
				<TR>
					<TD align=right>
						<FONT color=#999999><a href="<%=path%>/message.do?method=listAllMessage&currentPage=<%=previousPage %>">��һҳ</a></FONT>
						<B><%=_currentPage %></B>
						<FONT color=#999999><a href="<%=path%>/message.do?method=listAllMessage&currentPage=<%=nextPage %>" >��һҳ</a></FONT> ����&nbsp;
						<INPUT class=s id=pageNum maxLength=10 size=2>
						&nbsp;ҳ
						<INPUT onclick=javascript:gotoPageNum() type=button value=ȷ��
							name=goPageNum> 
					</TD>
				</TR>
			</TBODY>
		</TABLE>
		<BR>
		<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
			<TBODY>
				<TR>
					<TD>
						<FONT class=tx_title>���ѣ�</FONT>
						<HR style="HEIGHT: 1px">
						<SPAN class=lh15>�����Ե���Ч��Ϊ<FONT color=#ff0000><STRONG>2��</STRONG>
						</FONT>��ϵͳ���Զ�ɾ��������Ч�ڵ����ԡ���ע�Ᵽ����Ҫ���ԣ�<BR>������ѯ�绰��400-826-5188 &nbsp; </SPAN>
					</TD>
				</TR>
			</TBODY>
		</TABLE>
		<BR>
	</body>
</html>
