<%@ page contentType="text/html; charset=GBK"%>
<%@page import="java.util.List,java.util.Iterator,java.util.Map,java.util.Date,java.text.SimpleDateFormat"%>
<%@page import="com.abbcc.pojo.*,com.abbcc.common.AppConstants"%>
<%

	String path = request.getContextPath();
	SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	String messageTime=(String)request.getAttribute("messageTime");
	Integer replyMess=(Integer)request.getAttribute("reply");
	%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html> 
	
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
		<script type="text/javascript">
			function gotoReply(){
				document.messageSearchForm.action="<%=path%>/message.do?method=listAllMessage&currentPage=1";
				document.messageSearchForm.submit();
			}
			function gotoMessageTime(){
				document.messageSearchForm.action="<%=path%>/message.do?method=listAllMessage&currentPage=1";
				document.messageSearchForm.submit();
			}
			function gotoSaleMessage(){
				document.dealForm.action="<%=path %>/message.do?method=listSellMessage&type=1";
				document.dealForm.submit();
			}
			function gotoBuyMessage(){
				document.dealForm.action="<%=path %>/message.do?method=listBuyMessage&type=2";
				document.dealForm.submit();
			}
			function gotoPageNum(){
				document.dealForm.action="<%=path%>/message.do?method=listAllMessage&currentPage=1";
				document.dealForm.submit();
			}
		</script>
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
						onclick="gotoSaleMessage()">
						���ڹ�Ӧ��Ϣ����
					</TD>
					<TD class=card_normal onmouseover="this.style.cursor='hand'"
						style="WIDTH: 120px"
						onclick="gotoBuyMessage()">
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
		<FORM style="MARGIN: 0px" name=messageSearchForm method=post>
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
							<SPAN class=c>
								<SELECT class=S id=queryReplySelect
									onchange="gotoReply()"
									name=reply>
									<OPTION value='0' <%=replyMess==AppConstants.MESSAGE_STATE_ALL ?"selected":"" %>>
									�Ƿ�ظ�
								    </OPTION>
								    <OPTION value='<%=String.valueOf(AppConstants.MESSAGE_STATE_READ) %>' <%=replyMess==AppConstants.MESSAGE_STATE_READ ?"selected":"" %>>
									�ѻظ�
								    </OPTION>
								    <OPTION value='<%=String.valueOf(AppConstants.MESSAGE_STATE_UN_READ) %>' <%=replyMess==AppConstants.MESSAGE_STATE_UN_READ ?"selected":"" %>>
									δ�ظ�
								    </OPTION>
								</SELECT> </SPAN>
							<INPUT id=queryKeywords onclick=cleanDefaultKeywords(this)
								type=hidden maxLength=100 value=���������Ա���Ĺؼ��� name=_fmme.l._0.k>
							<SELECT
								onchange="gotoMessageTime()"
								name=messageTime>
								 <OPTION value=1 <%=messageTime.equals("1")?"selected":" " %>>
									һ�������ڵ�����
								</OPTION>
								<OPTION value=2 <%=messageTime.equals("2")?"selected":" " %>>
									һ�����ڵ�����
								</OPTION>
								<OPTION value=3 <%=messageTime.equals("3")?"selected":" " %>>
									�������ڵ�����
								</OPTION>
								<OPTION value=4 <%=messageTime.equals("4")?"selected":" " %>>
									�����µ�һ���ڵ�����
								</OPTION>
								<OPTION value=5 <%=messageTime.equals("5")?"selected":" " %>>
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
                	 
                </SCRIPT>
					<%
						List list = (List) request.getAttribute("listAll");
						Map userMap = (Map) request.getAttribute("userMap");
						
						String currentPage=(String)request.getAttribute("currentPage");
						int _currentPage=Integer.valueOf(currentPage).intValue();
						if (list != null) {
							Iterator iter = list.iterator();
							while (iter.hasNext()) {
								Message message = (Message) iter.next();

								String title = message.getTitle();
								String content=message.getContent();
								long id=message.getId();
								int fromid=message.getFromid();
								Hyjbxx hyjbxx=(Hyjbxx)userMap.get(fromid);
								String fromName=hyjbxx!=null?hyjbxx.getHydlm():"";
								int state=message.getState();
								Date createTime=message.getCreateTime();
								String _createTime=sf.format(createTime);
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
								href="<%=path %>/message.do?method=showMessage&id=<%=id %>" target=right><%=title %> </A> <BR>
								<%=_createTime %> </SPAN>
						</TD>
						<TD class=list_lb_content>
							<A title=pjttiy href="" target=right><%=fromName %></A>&nbsp;
							<IMG id=alitalkImg1 style="CURSOR: pointer" height=16
								src="<%=path%>/user/message/link/myt_offline.gif" width=16 align=absMiddle border=0>
							<SPAN id=alitalkTxt1></SPAN> &nbsp;
							<BR>
							<DIV title=��Ա>
								<%=fromName %>(���徭Ӫ)
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
