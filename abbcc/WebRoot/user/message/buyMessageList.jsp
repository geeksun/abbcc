<%@ page contentType="text/html; charset=GBK"%>
<%@page import="java.util.List,java.util.Iterator,java.util.Date,java.text.SimpleDateFormat"%>
<%@page import="com.abbcc.pojo.Message"%>
<%@page import="com.abbcc.common.AppConstants"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

	<%
	  String path = request.getContextPath();
	  SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	  String messageTime=(String)request.getAttribute("messageTime");
		
	  int replyMess=(Integer)request.getAttribute("reply");
	%>
	<head>
		<title>����Ϣ����</title>
		<SCRIPT language=JavaScript src="link/aliclick.js"></SCRIPT>
		<SCRIPT src="link/search.js" type=text/javascript charset=gb2312></SCRIPT>
		<SCRIPT src="link/AlicnTree.js" type=text/javascript></SCRIPT>

		<LINK rev=stylesheet href="<%=path%>/user/message/link/AlicnTree.css"
			type=text/css rel=stylesheet>
		<LINK rev=stylesheet
			href="<%=path%>/user/message/link/myali_search_v02.css" type=text/css
			rel=stylesheet>
		<LINK rev=stylesheet href="<%=path%>/user/message/link/mainframe.css"
			type=text/css rel=stylesheet>
		<LINK rev=stylesheet href="<%=path%>/user/message/link/content.css"
			type=text/css rel=stylesheet>
		<script type="text/javascript">
	function gotoReply(){
		document.buyForm.action="<%=path%>/message.do?method=listBuyMessage&type=2";
		document.buyForm.submit();
	}
	function gotoMessageTime(){
		document.buyForm.action="<%=path%>/message.do?method=listBuyMessage&type=2";
		document.buyForm.submit();
	}
	function gotoSalePage(){
		document.buyForm.action="<%=path%>/message.do?method=listSellMessage&type=1";
		document.buyForm.submit();
	}
	function gotoAllMessage(){
		document.buyForm.action="<%=path%>/message.do?method=listAllMessage&currentPage=1";
		document.buyForm.submit();
	}
	function gotoPageNum(){
		document.dealForm.action="<%=path%>/message.do?method=listBuyMessage&type=2";
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
<%
	Integer count = (Integer) request.getAttribute("count");
	Integer pageCount = (Integer) request.getAttribute("pageCount");
%>
		<TABLE class=tx_box cellSpacing=0 cellPadding=1 width="100%" border=0>
			<TBODY>
				<TR>
					<TD vAlign=center align=middle width=80 rowSpan=2>
						<IMG height=53 src="<%=path%>/user/message/link/icon1.gif"
							width=53>
					</TD>
					<TD class=tx_title height=20>
						�ҵ� <%=count%> �����ԣ�
						<BR>
					</TD>
				</TR>
				<TR>
					<TD class=tx_content>
						<A class=s href="<%=path %>/user/message/addMessage.jsp">��˷���������ҳ</A>
					</TD>
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
					<TD class=card_normal onmouseover="this.style.cursor='hand'"
						onclick="gotoAllMessage()">
						��������
					</TD>
					<TD class=card_normal onmouseover="this.style.cursor='hand'"
						style="WIDTH: 120px" onclick="gotoSalePage()">
						���ڹ�Ӧ��Ϣ����
					</TD>
					<TD class=card_down style="WIDTH: 120px">
						��������Ϣ����
					</TD>
					<TD class=card_blank>
						<SPAN style="FLOAT: right; TEXT-ALIGN: right"><IMG
								height=15 src="<%=path%>/user/message/link/myali_icon01.gif"
								width=16 align=absMiddle>δ��&nbsp;&nbsp; <IMG height=15
								src="<%=path%>/user/message/link/myali_icon02.gif" width=16
								align=absMiddle>�Ѷ�&nbsp;&nbsp; <IMG height=15
								src="<%=path%>/user/message/link/myali_icon03.gif" width=16
								align=absMiddle>�ѻظ� </SPAN>
					</TD>
				</TR>
			</TBODY>
		</TABLE>
		<FORM style="MARGIN: 0px" name=buyForm method=post>
			<INPUT id=tracelog type=hidden name=tracelog>
			<INPUT type=hidden value=1 name=_fmme.l._0.p>
			<INPUT type=hidden value=15 name=_fmme.l._0.pa>
			<INPUT id=queryOfferType type=hidden value=buy name=_fmme.l._0.of>
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
								<OPTION value='<%=AppConstants.MESSAGE_STATE_READ %>' <%=replyMess==AppConstants.MESSAGE_STATE_READ ?"selected":"" %>>
									�ѻظ�
								</OPTION>
								<OPTION value='<%=AppConstants.MESSAGE_STATE_UN_READ %>' <%=replyMess==AppConstants.MESSAGE_STATE_UN_READ ?"selected":"" %>>
									δ�ظ�
								</OPTION>
							</SELECT> </SPAN>
							<INPUT id=queryKeywords onclick=cleanDefaultKeywords(this)
								type=hidden maxLength=100 name=_fmme.l._0.k>
							<SELECT onchange="gotoMessageTime()" name=messageTime>
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

		<FORM style="MARGIN: 0px" name=dealForm
			action="<%=path%>/message.do?method=listBuyMessage" method=post>
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
					<%
						List list = (List) request.getAttribute("listBuy");
						String currentPage = (String) request.getAttribute("currentPage");
						int _currentPage = Integer.valueOf(currentPage);

						if (list != null) {
							Iterator ite = list.iterator();
							while (ite.hasNext()) {
								Message message = (Message) ite.next();

								String title = message.getTitle();
								String content = message.getContent();
								long id = message.getId();
								int fromid = message.getFromid();
								int state=message.getState();
								Date createTime=message.getCreateTime();
								String _createTime=sf.format(createTime);
					%>
					<TR>
						<TD class=list_lb_content align=middle>
							<input type=checkbox name=buyMess>
						</TD>
						<td class=list_lb_content>
							<span style="float:left; width:20px; padding-top:2px"> 
							<%
								if (AppConstants.MESSAGE_STATE_UN_READ == state) {
								%> <IMG height=15 alt=δ������
									src="<%=path%>/user/message/link/myali_icon01.gif" width=16
									align=absMiddle> <%
 									} else if (AppConstants.MESSAGE_STATE_READ == state) {
 								  %> <IMG height=15 alt=�Ѷ�����
									src="<%=path%>/user/message/link/myali_icon02.gif" width=16
									align=absMiddle> <%
 										}
 									%>
							</span>
							<span style="float:left"> <a href="<%=path%>/message.do?method=showMessage&id=<%=id%>" target=right><%=title%>
							</a>
							<BR><%=_createTime %> </span>
						</td>
						<td class=list_lb_content>
							<a title=�û� href="" target=right></a>&nbsp;
							<img style="CURSOR: pointer" height=16
								src="<%=path%>/user/message/link/myt_offline.gif" width=16
								align=absMiddle border=0>
							<br>
							<div title=��Ա>
								<%=fromid%>
								(���徭Ӫ)
							</div>
						</td>
					</TR>
					<%
						}
						}
					%>
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
								</TD>
								
								<TD style="PADDING-LEFT: 8px" align=right width="39%">
									��
									<%=pageCount%>
									ҳ
									<%=count%>
									��
								</TD>
							</TR>
						</TBODY>
					</TABLE>
					<%
						int previousPage = _currentPage - 1;
						int nextPage = _currentPage + 1;
						if (previousPage < 0) {
							previousPage = 1;
						}
						if (nextPage > pageCount) {
							nextPage = pageCount;
						}
					%>
					<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
						<TBODY>
							<TR>
								<TD align=right>
									<FONT color=#999999><a
										href="<%=path%>/message.do?method=listBuyMessage&type=2&currentPage=<%=previousPage%>">��һҳ</a>
									</FONT>
									<B><%=_currentPage%>
									</B>
									<FONT color=#999999><a
										href="<%=path%>/message.do?method=listBuyMessage&type=2&currentPage=<%=nextPage%>">��һҳ</a>
									</FONT> ����&nbsp;
									<INPUT class=s id=pageNum name='currentPage' maxLength=10 size=2>
									&nbsp;ҳ
									<INPUT onclick=javascript:gotoPageNum() type=button value=ȷ��
										name=goPageNum>
								</TD>
							</TR>
						</TBODY>
					</TABLE>
				</TBODY>
			</TABLE>
		</FORM>
		<BR>
		<BR>
		<BR>
		<BR>  
		<BR>
		<BR>
		<BR>
		<BR>
	</body>
</html>
