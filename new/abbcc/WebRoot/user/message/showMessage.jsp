<%@ page contentType="text/html; charset=GBK"%>
<%@page
	import="java.util.*,com.abbcc.pojo.Message,com.abbcc.common.*,com.abbcc.pojo.Hyjbxx"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<%
	String path = request.getContextPath();
	%>

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
	</head>
	<body>
		<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
			<TBODY>
				<TR>
					<TD class=bigtitle width="53%">
						我发出的留言
					</TD>
				</TR>
			</TBODY>
		</TABLE>
		<TABLE class=list_box cellSpacing=0 cellPadding=5 width="100%"
			border=0>
			<TBODY>
				<%
					Message message = (Message) request.getAttribute("message");

				//	Hyjbxx fromUser = (Hyjbxx) request.getAttribute("fromUser");

					Hyjbxx toUser = (Hyjbxx) request.getAttribute("toUser");
					if (message != null) {
						String title = message.getTitle();
						String content = message.getContent();
						int fromid = message.getFromid();
						long id = message.getId();
						Date date = message.getCreateTime();
				%>

				<TR>
					<TD class=list_right_box style="WORD-BREAK: break-all">
						<B>主题：<%=title%>
						</B>
						<BR>
						时间：
						<%=DateFormater.getFormatDate(date)%>
						<HR SIZE=1>
						<STRONG>主要内容</STRONG>：
						<BR>
						<BR>
						<P>
							<%=content%>
						</P>

					</TD>
				</TR>
				<TR>
					<TD class=list_right_box style="WORD-BREAK: break-all">
					 
						<STRONG>发给</STRONG>：
						<BR>
						<BR>
						<P>
							<%=toUser!=null?toUser.getHydlm():""%>
						</P>

					</TD>
				</TR>
			</TBODY>
		</TABLE>
		<BR>
		<Form style="MARGIN: 0px" name="deleteForm"
			action="<%=path%>/message.do?method=deleteMessage&messageIds=<%=id%>&deleteState=2"
			method=post>
			<input type="submit" name="sub" value="删除该留言">

		</Form>

		<%
		}
		%>

	</body>
</html>
