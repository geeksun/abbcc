<%@ page contentType="text/html; charset=GBK"%>
<%@page import="java.util.List,java.util.Iterator,java.util.Date"%>
<%@page import="com.abbcc.pojo.Message,java.text.SimpleDateFormat"%>
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
		<title>供应信息留言</title>
		<SCRIPT language=JavaScript
			src="<%=path%>/user/message/link/aliclick.js"></SCRIPT>
		<SCRIPT src="<%=path%>/user/message/link/search.js"
			type=text/javascript charset=gb2312></SCRIPT>
		<SCRIPT src="<%=path%>/user/message/link/AlicnTree.js"
			type=text/javascript></SCRIPT>

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
  function gotoPageNum(){
 document.dealForm.action="<%=path%>/message.do?method=listSellMessage&type=1";
 document.dealForm.submit();
  }
   function gotoBuyMessage(){
  
 document.dealForm.action="<%=path%>/message.do?method=listBuyMessage&type=2";
 document.dealForm.submit();
  }
   function gotoAllMessage(){
   	document.dealForm.action="<%=path%>/message.do?method=listAllMessage&currentPage=1";
   	document.dealForm.submit();
   }
   function gotoMessageTime(){
    
 document.messageSearchForm.action="<%=path%>/message.do?method=listSellMessage&type=1";
 document.messageSearchForm.submit();
  }
   function gotoReply(){
 document.messageSearchForm.action="<%=path%>/message.do?method=listSellMessage&type=1";
 document.messageSearchForm.submit();
  }


</script>
	</head>
	<body>
		<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
			<TBODY>
				<TR>
					<TD class=bigtitle width="53%">
						我收到的留言
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
						找到 <%=count%> 条留言！
						<BR>
					</TD>
				</TR>
				<TR>
					<TD class=tx_content>
						<A class=s href="<%=path %>/user/message/addMessage.jsp">点此返回留言首页</A>
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
						所有留言
					</TD>
					<TD class=card_down style="WIDTH: 120px">
						关于供应信息留言
					</TD>
					<TD class=card_normal onmouseover="this.style.cursor='hand'"
						style="WIDTH: 120px" onclick="gotoBuyMessage()">
						关于求购信息留言
					</TD>
					<TD class=card_blank>
						<SPAN style="FLOAT: right; TEXT-ALIGN: right"><IMG
								height=15 src="<%=path%>/user/message/link/myali_icon01.gif"
								width=16 align=absMiddle>未读&nbsp;&nbsp; <IMG height=15
								src="<%=path%>/user/message/link/myali_icon02.gif" width=16
								align=absMiddle>已读&nbsp;&nbsp; <IMG height=15
								src="<%=path%>/user/message/link/myali_icon03.gif" width=16
								align=absMiddle>已回复 
						</SPAN>
					</TD>
				</TR>
			</TBODY>
		</TABLE>
		<FORM style="MARGIN: 0px" name=messageSearchForm method=post>
			<TABLE class=list_box cellSpacing=0 cellPadding=0 width="100%"
				border=0>
				<TBODY>
					<TR>
						<TD class=list_right_box width="100%">
							<SPAN class=c>
								<SELECT class=S id=queryReplySelect onchange="gotoReply()" name=reply >
									<OPTION  value='0' <%=replyMess==AppConstants.MESSAGE_STATE_ALL ?"selected":"" %>>
										是否回复
									</OPTION>
									<OPTION value='<%=AppConstants.MESSAGE_STATE_READ %>' <%=replyMess==AppConstants.MESSAGE_STATE_READ ?"selected":"" %>>
										已回复
									</OPTION>
									<OPTION value='<%=AppConstants.MESSAGE_STATE_UN_READ %>' <%=replyMess==AppConstants.MESSAGE_STATE_UN_READ ?"selected":"" %>>
										未回复
									</OPTION>
								</SELECT> 
							</SPAN>
							<SELECT onchange="gotoMessageTime()" name=messageTime>
								<OPTION value=1 <%=messageTime.equals("1")?" selected ":"" %>>
									一个星期内的留言
								</OPTION>
								<OPTION value=2 <%=messageTime.equals("2")?" selected ":"" %>>
									一个月内的留言
								</OPTION>
								<OPTION value=3 <%=messageTime.equals("3")?" selected ":"" %>>
									三个月内的留言
								</OPTION>
								<OPTION value=4 <%=messageTime.equals("4")?" selected ":"" %>>
									三个月到一年内的留言
								</OPTION>
								<OPTION value=5 <%=messageTime.equals("5")?" selected ":"" %>>
									一年以上的留言
								</OPTION>
							</SELECT>
						</TD>
					</TR>
				</TBODY>
			</TABLE>
		</FORM>

		<FORM style="MARGIN: 0px" name=dealForm
			action="<%=path%>/message.do?method=listSellMessage" method=post>
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
							标题
						</TD>
						<TD class=list_lb_title width=150>
							<SPAN class=s>发自</SPAN>
						</TD>
						<TD class=list_lb_title width=80>
							是否公开
						</TD>
					</TR>
					<%
						List list = (List) request.getAttribute("listSell");
						String currentPage = (String) request.getAttribute("currentPage");
						int _currentPage = Integer.valueOf(currentPage);
						if (list != null) {
							Iterator iter = list.iterator();
							while (iter.hasNext()) {
								Message message = (Message) iter.next();

								String title = message.getTitle();
								String content = message.getContent();
								long id = message.getId();
								int fromid = message.getFromid();
								int state = message.getState();
								Date createTime = message.getCreateTime();
								String _createTime = sf.format(createTime);
					%>
					<TR>
						<TD class=list_lb_content align=middle>
							<INPUT id=checkBox1 type=checkbox value=124142992 name=messageIds>
						</TD>
						<TD class=list_lb_content>
							<SPAN style="FLOAT: left; WIDTH: 20px; PADDING-TOP: 2px">
								<%
								if (AppConstants.MESSAGE_STATE_UN_READ == state) {
								%> <IMG height=15 alt=未读留言
									src="<%=path%>/user/message/link/myali_icon01.gif" width=16
									align=absMiddle> <%
 									} else if (AppConstants.MESSAGE_STATE_READ == state) {
 								  %> <IMG height=15 alt=已读留言
									src="<%=path%>/user/message/link/myali_icon02.gif" width=16
									align=absMiddle> <%
 										}
 									%> </SPAN>
							<SPAN style="FLOAT: left"><A title="&#13;&#10;"
								href="<%=path%>/message.do?method=showMessage&id=<%=id%>"
								target=right><%=title%> </A> <BR>
								<%=_createTime%> </SPAN>
						</TD>
						<TD class=list_lb_content>
							<A title=pjttiy href="" target=right><%=fromid%>
							</A>&nbsp;
							<IMG id=alitalkImg1 style="CURSOR: pointer" height=16
								src="<%=path%>/user/message/link/myt_offline.gif" width=16
								align=absMiddle border=0>
							<SPAN id=alitalkTxt1></SPAN> &nbsp;
							<BR>
							<DIV title=会员>
								<%=fromid%>
								(个体经营)
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
					<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
						<TBODY>
							<TR>
								<TD vAlign=top width="61%">
									<INPUT onclick=javascript:doSelectAllBox(3,this) type=checkbox
										value=checkbox name=selectAllBox>
									全选&nbsp;&nbsp;将选中的留言&nbsp;
									<INPUT
										onmousedown="return aliclick(this,'?tracelog=gl_onweb_overbutton');"
										onclick="javascript:dealSelectedMessage('delete')" type=button
										value=永久删除 name=submit_cancle>
								</TD>
								
								<TD style="PADDING-LEFT: 8px" align=right width="39%">
									共
									<%=pageCount%>
									页
									<%=count%>
									条
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

						//Pagination pagination =(pagination)request.getAttribute("pagination");
					%>
					<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
						<TBODY>
							<TR>
								<TD align=right>
									<FONT color=#999999><a
										href="<%=path%>/message.do?method=listSellMessage&type=1&currentPage=<%=previousPage%>">上一页</a>
									</FONT>
									<B><%=_currentPage%>
									</B>
									<FONT color=#999999><a
										href="<%=path%>/message.do?method=listSellMessage&type=1&currentPage=<%=nextPage%>">下一页</a>
									</FONT> 到第&nbsp;
									<INPUT class=s id=pageNum name='currentPage' maxLength=10
										size=2>
									&nbsp;页
									<INPUT onclick=javascript:gotoPageNum() type=button value=确定
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
	</body>
</html>
