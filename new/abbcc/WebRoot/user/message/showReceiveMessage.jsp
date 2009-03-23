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
		 
		<LINK rev=stylesheet href="<%=path%>/css/mainframe.css"
			type=text/css rel=stylesheet>
		<LINK rev=stylesheet href="<%=path%>/css/content.css"
			type=text/css rel=stylesheet>
	</head>
	<body>
		<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
			<TBODY>
				<TR>
					<TD class=bigtitle width="53%">
						我收到的留言
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
						int type=message.getType();
						Date date = message.getCreateTime();
				%>

				<TR>
					<TD class=list_right_box style="WORD-BREAK: break-all">
						<B>主题：<%=title%> </B>
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
							<%=toUser != null ? toUser.getHydlm() : ""%>
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

		<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
			<TBODY>
				<TR>
					<TD>
						<BR>
						<DIV id=reply_form>
							<BR>
							<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
								<TBODY>
									<TR>
										<TD class=smalltitle align=left>
											<B>回复留言</B>
										</TD>
									</TR>
								</TBODY>
							</TABLE>

							<FORM style="MARGIN: 0px" name=feedbackForm
								action="<%=path%>/message.do?method=huifuMessage"
								method=post>
								<input type="hidden" name="toid" value="<%=toUser!=null?toUser.getHyjbxxid():"" %>">
								<input type="hidden" name="type" value="<%=type %>">
								<input type="hidden" name="messageId" value="<%=id %>">
								<TABLE class=list_box cellSpacing=0 cellPadding=0 width="100%"
									border=0>
									<TBODY>
										<TR>
											<TD class=list_left_box>
												<STRONG>发送给：</STRONG>
											</TD>
											<TD class=list_right_box align=left>
												<DIV id=overDiv style="Z-INDEX: 1; POSITION: absolute"></DIV>

												 	<%=toUser != null ? toUser.getHydlm() : ""%>  
											</TD>
										</TR>
										<TR>
											<TD class=list_left_box>
												<STRONG>主题：</STRONG>
											</TD>
											<TD class=list_right_box align=left>
												<INPUT maxLength=50 size=58 value=回复：紧急信息，请注意查收。
													name=title>
												<BR>
												<SPAN class=note>建议您修改主题，吸引对方注意,得到优先回复!</SPAN>
											</TD>
										</TR>
										<TR>
											<TD class=list_left_box>
												<STRONG>正文：</STRONG>
											</TD>
											<TD class=list_right_box align=left>
												<TEXTAREA name=content rows=10 cols=58></TEXTAREA>
												<BR>
												<SPAN class=note>本留言系统不支持html代码，请不要在文本框中输入html代码</SPAN>
											</TD>
										</TR>
									</TBODY>
								</TABLE>
							 

								<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
									<TBODY>
										<TR>
											<TD align=right height=30>
											 		</TD>
										</TR>
										<TR>
											<TD align=middle height=15>
												<INPUT type=submit value=回复留言 name=send>
												&nbsp;&nbsp;
												<INPUT type=reset value=" 重填 " name=reset>
											</TD>
										</TR>
									</TBODY>
								</TABLE>
							</FORM>
						</DIV>
						<BR>
						<BR>
						<BR>
					</TD>
				</TR>
			</TBODY>
		</TABLE>
		<BR>
		 
		<%
		}
		%>

	</body>
</html>
