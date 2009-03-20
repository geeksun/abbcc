<%@ page contentType="text/html; charset=GBK"%>
<%@page
	import="java.util.List,java.util.Iterator,java.util.Map,java.util.Date,java.text.SimpleDateFormat"%>
<%@page import="com.abbcc.pojo.*,com.abbcc.common.AppConstants"%>
<%@page import="com.abbcc.util.pagination.*"%>
<%
			Pagination pagination = (Pagination) request
			.getAttribute("pagination");

	String path = request.getContextPath();
	SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	Integer timeType = (Integer) pagination.getParams().get("timeType");
	Integer messageState = (Integer) pagination.getParams().get(
			"messageState");

	Integer messageType = (Integer) pagination.getParams().get(
			"messageType");

	Integer messagefrom = (Integer) pagination.getParams().get(
			"messagefrom");
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

	<head>
		<title>我收到的留言</title>
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
			function gotoReply(){
				document.messageSearchForm.action="<%=path%>/message.do?method=messageList";
				document.messageSearchForm.submit();
			}
			function gotoMessageTime(){
				document.messageSearchForm.action="<%=path%>/message.do?method=messageList";
				document.messageSearchForm.submit();
			}
			function gotoSaleMessage(){
				document.dealForm.action="<%=path%>/message.do?method=messageList&messageType=<%=AppConstants.MESSAGE_TYPE_SALE%>&messagefrom=<%=messagefrom != null ? messagefrom : ""%>";
				document.dealForm.submit();
			}
			function gotoBuyMessage(){
				document.dealForm.action="<%=path%>/message.do?method=messageList&messageType=<%=AppConstants.MESSAGE_TYPE_BUY%>&messagefrom=<%=messagefrom != null ? messagefrom : ""%>";
				document.dealForm.submit();
			}
			 function gotoAllMessage(){
				document.dealForm.action="<%=path%>/message.do?method=messageList&messagefrom=<%=messagefrom != null ? messagefrom : ""%>";
				document.dealForm.submit();
			}
			 function delSelectedMessage(state){
				document.dealForm.action="<%=path%>/message.do?method=deleteMessage&messageState="+state;
				document.dealForm.submit();
			}
		</script>
	</head>
	<body>
		<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
			<TBODY>
				<TR>
					<TD class=bigtitle width="53%">
						<%=messagefrom == 1 ? "我收到的留言" : "我发出的留言"%>

					</TD>
					<TD width="47%"></TD>
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
					<TD class='<%=messageType == null ? "card_down" : "card_normal"%>'
						style="WIDTH: 120px" onclick="gotoAllMessage()"
						onmouseover="this.style.cursor='hand'">
						所有留言
					</TD>
					<TD
						class='<%=messageType != null ? (messageType == AppConstants.MESSAGE_TYPE_SALE ? "card_down"
							: "card_normal")
							: "card_normal"%>'
						onmouseover="this.style.cursor='hand'" style="WIDTH: 120px"
						onclick="gotoSaleMessage()">
						关于供应信息留言
					</TD>
					<TD
						class='<%=messageType != null ? (messageType == AppConstants.MESSAGE_TYPE_BUY ? "card_down"
							: "card_normal")
							: "card_normal"%>'
						onmouseover="this.style.cursor='hand'" style="WIDTH: 120px"
						onclick="gotoBuyMessage()">
						关于求购信息留言
					</TD>
					<TD class=card_blank>
						<SPAN style="FLOAT: right; TEXT-ALIGN: right"><IMG
								height=15 src="<%=path%>/user/message/link/myali_icon01.gif"
								width=16 align=absMiddle>未读&nbsp;&nbsp; <IMG height=15
								src="<%=path%>/user/message/link/myali_icon02.gif" width=16
								align=absMiddle>已读&nbsp;&nbsp; <IMG height=15
								src="<%=path%>/user/message/link/myali_icon03.gif" width=16
								align=absMiddle>已回复 </SPAN>
					</TD>
				</TR>
			</TBODY>
		</TABLE>
		<FORM style="MARGIN: 0px" name=messageSearchForm method=post>
			<input type="hidden" name="messageType"
				value="<%=messageType != null ? messageType : ""%>">
			<input type="hidden" name="messageState"
				value="<%=messageState != null ? messageState : ""%>">
			<input type="hidden" name="messagefrom"
				value="<%=messagefrom != null ? messagefrom : ""%>">

			<TABLE class=list_box cellSpacing=0 cellPadding=0 width="100%"
				border=0>
				<TBODY>
					<TR>
						<TD class=list_right_box width="100%">
							<SPAN class=c> <SELECT class=S id=queryReplySelect
									onchange="gotoReply()" name=messageState>
									<OPTION value='' <%=messageState == null ? "selected" : ""%>>
										是否回复
									</OPTION>
									<OPTION
										value='<%=String.valueOf(AppConstants.MESSAGE_STATE_READ)%>'
										<%=messageState != null ? (messageState == AppConstants.MESSAGE_STATE_READ ? "selected"
							: "")
							: ""%>>
										已回复
									</OPTION>
									<OPTION
										value='<%=String.valueOf(AppConstants.MESSAGE_STATE_UN_READ)%>'
										<%=messageState != null ? (messageState == AppConstants.MESSAGE_STATE_UN_READ ? "selected"
							: "")
							: ""%>>
										未回复
									</OPTION>
								</SELECT> </SPAN>
							<INPUT id=queryKeywords onclick=cleanDefaultKeywords(this)
								type=hidden maxLength=100 value=请输入留言标题的关键词 name=_fmme.l._0.k>
							<SELECT onchange="gotoMessageTime()" name=timeType>
								<OPTION value=1 <%=timeType == 1 ? "selected" : " "%>>
									一个星期内的留言
								</OPTION>
								<OPTION value=2 <%=timeType == 2 ? "selected" : " "%>>
									一个月内的留言
								</OPTION>
								<OPTION value=3 <%=timeType == 3 ? "selected" : " "%>>
									三个月内的留言
								</OPTION>
								<OPTION value=4 <%=timeType == 4 ? "selected" : " "%>>
									三个月到一年内的留言
								</OPTION>
								<OPTION value=5 <%=timeType == 5 ? "selected" : " "%>>
									一年以上的留言
								</OPTION>
							</SELECT>
						</TD>
					</TR>
				</TBODY>
			</TABLE>
		</FORM>

		<FORM style="MARGIN: 0px" name=dealForm
			action="<%=path%>/message.do?method=listAllMessage" method=post>

			<TABLE class=list_lb_loca cellSpacing=0 cellPadding=0 width="100%"
				border=0>
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
						List messageList = (List) request.getAttribute("messageList");
						Map userMap = (Map) request.getAttribute("userMap");

						if (messageList != null) {
							Iterator iter = messageList.iterator();
							while (iter.hasNext()) {
								Message message = (Message) iter.next();

								String title = message.getTitle();
								String content = message.getContent();
								long id = message.getId();
								int fromid = message.getFromid();
								Hyjbxx hyjbxx = (Hyjbxx) userMap.get(fromid);
								String fromName = hyjbxx != null ? hyjbxx.getHydlm() : "";
								int state = message.getState();
								Date createTime = message.getCreateTime();
								String _createTime = sf.format(createTime);
					%>
					<TR>
						<TD class=list_lb_content align=middle>
							<INPUT type=checkbox value="<%=id%>" name="messageIds">
						</TD>
						<TD class=list_lb_content>
							<SPAN style="FLOAT: left; WIDTH: 20px; PADDING-TOP: 2px">
								<%
								if (state == AppConstants.MESSAGE_STATE_READ) {
								%> <IMG height=15
									src="<%=path%>/user/message/link/myali_icon02.gif" width=16
									align=absMiddle> <%
 } else if (state == AppConstants.MESSAGE_STATE_UN_READ) {
 %> <IMG height=15
									src="<%=path%>/user/message/link/myali_icon01.gif" width=16
									align=absMiddle> <%
 } else if (state == AppConstants.MESSAGE_STATE_REPLAY) {
 %> <IMG height=15 src="<%=path%>/user/message/link/myali_icon03.gif" width=16
									align=absMiddle> <%
 }
 %> </SPAN> 
							<SPAN style="FLOAT: left">
							
							<A title="&#13;&#10;"
								href="<%=path%>/message.do?method=<%=messagefrom==2?"showMessage":"showReceiveMessage" %>&messageId=<%=id%>"
								target=right><%=title%> </A> 
								<BR> <%=_createTime%> </SPAN>
						</TD>
						<TD class=list_lb_content>
							<A title=pjttiy href="" target=right><%=fromName%>
							</A>&nbsp;
							<IMG id=alitalkImg1 style="CURSOR: pointer" height=16
								src="<%=path%>/user/message/link/myt_offline.gif" width=16
								align=absMiddle border=0>
							<SPAN id=alitalkTxt1></SPAN> &nbsp;
							<BR>
							<DIV title=会员>
								<%=fromName%>
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


				</TBODY>
			</TABLE>

			<BR>
			<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
				<TBODY>
					<TR>
						<TD vAlign=top>
							将选中的留言&nbsp;
							<%
							if(messagefrom==1){
							
							 %>
							<INPUT onclick="delSelectedMessage(1)" type=button value=永久删除
								name=submit_cancle>
							<%
								}else
								{
							 %>
							<INPUT onclick="delSelectedMessage(2)" type=button value=永久删除
								name=submit_cancle>
								<%
								}
								 %>
						</TD>
						<TD style="PADDING-LEFT: 8px" align=right>

						</TD>
					</TR>
				</TBODY>
			</TABLE>
		</FORM>
		<BR>
		<%=pagination != null ? pagination.getHtml(request
					.getContextPath()) : ""%>
	</body>
</html>
