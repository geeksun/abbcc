<%@ page contentType="text/html; charset=GBK"%>
<%@page import="com.abbcc.pojo.Hyjbxx"%>
 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

	<%
	String path = request.getContextPath();
	%>
	<head>
		<title>留言</title>
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
		<% 
			Hyjbxx from_hyjbxx = (Hyjbxx) request.getAttribute("from_hyjbxx");
			Hyjbxx to_hyjbxx = (Hyjbxx) request.getAttribute("to_hyjbxx");
		%>
		<FORM name=form1 action="<%=path%>/message.do?method=addMessages" 
			method=post>
			<input name="messagefrom" type="hidden" value="2">
			<input type="hidden" name="toid" value="<%=to_hyjbxx!=null?String.valueOf(to_hyjbxx.getHyjbxxid()):"" %>">
			<TABLE cellSpacing=0 cellPadding=0 width=650 align=left border=0>
				<TBODY>
					<TR>
						<TD class=fb_title>
							留言接收方 <%=to_hyjbxx!=null?to_hyjbxx.getHydlm():"" %>
						</TD> 
						<TD class=fb_title>
							求购 <input type="radio"  name="type" value="1" checked>
							供应 <input type="radio"  name="type" value="2">
						</TD>
					</TR>
				</TBODY>
			</TABLE>
			<BR> 
			<br><TABLE cellSpacing=0 cellPadding=0 align=left width="100%">
								<TBODY>
									<TR>
										<TD class=c width="12%" height=25>
											公司名称:
										</TD>
										<TD class=c width="88%">
										     永康市亘古园林机械有限公司  
										</TD>
									</TR>
									<TR>
										<TD class=c height=25>
											联&nbsp;系&nbsp;人:
										</TD>
										<TD class=c>
											<A  
												href="http://china.alibaba.com/member/profile.htm?member_id=yys580"
												target=_blank><%=from_hyjbxx != null ? from_hyjbxx.getHydlm() : ""%>
											</A>
											 
											<IMG id=alitalkImg style="CURSOR: pointer" height=16
												src="<%=path%>/user/message/link/list_mytlogo_offline.gif" width=16 align=absMiddle
												border=0>
											<SPAN id=alitalkTxt></SPAN> 
										</TD>
									</TR>
								</TBODY>
							</TABLE> 
			<BR><BR>	<BR><BR>
			  
			<TABLE cellSpacing=0 cellPadding=0 width=650 border=0>
				<TBODY>
					<TR>
						<TD>
							<TABLE cellSpacing=0 cellPadding=0 width="100%">
								<TBODY>
									<TR>
										<TD class=C1 height=25>
											标&nbsp;&nbsp;&nbsp;&nbsp;题:
										</TD>
										<TD>
											<INPUT class=C maxLength=50 size=70 name=title type="text">
										</TD>
									</TR>
									<TR>
										<TD class=c width="12%" height=25>
											留言内容:
										</TD>
										<TD class=c width="88%">
											<SPAN class="s gray">(限 1500 个字)</SPAN>
										</TD>
									</TR>
								</TBODY>
							</TABLE>
						</TD>
					</TR>
				</TBODY>
			</TABLE>
			<TABLE cellSpacing=0 cellPadding=0 width=650 border=0>
				<TBODY>
					<TR>
						<TD class="lh15 s" style="PADDING-LEFT: 0px; PADDING-TOP: 5px">
							<TEXTAREA class=C name=content rows=6 cols=80> </TEXTAREA>
						</TD>
					</TR>
				</TBODY>
			</TABLE> 
		 
			<BR>
			<TABLE cellSpacing=0 cellPadding=0 width=650 align=center border=0>
				<TBODY>
					<TR>
						<TD>
							<INPUT class=m style="WIDTH: 150px; HEIGHT: 35px"
								 
								type=submit value="发送留言单 >>" name=sendButton>
						</TD>
						<TD>
							<DIV align=right> 
							</DIV>
						</TD>
					</TR>
				</TBODY>
			</TABLE>
			 
		</FORM>
		 
	</body>
</html>
