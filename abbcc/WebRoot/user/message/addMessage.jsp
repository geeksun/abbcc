<%@ page contentType="text/html; charset=GBK"%>
<%@page import="java.util.List"%>
<jsp:directive.page import="com.abbcc.pojo.Hyjbxx;" />
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
			String tit = (String) request.getAttribute("title");
			String con = (String) request.getAttribute("content");
			 
			Hyjbxx hyjbxx = (Hyjbxx) request.getAttribute("hyjbxx");
		%>
		<FORM name=form1 action="<%=path%>/message.do?method=addMessages" 
			method=post>
			<input type="hidden" name="toid" value="<%=hyjbxx!=null?String.valueOf(hyjbxx.getHyjbxxid()):"" %>">
			<TABLE cellSpacing=0 cellPadding=0 width=650 align=left border=0>
				<TBODY>
					<TR>
						<TD class=fb_title>
							留言接收方
						</TD>
						<TD class=fb_title>
							求购 <input type="radio"  name="type" value="1">
							供应 <input type="radio"  name="type" value="2">
						</TD>
					</TR>
				</TBODY>
			</TABLE>
			<BR>
							<TABLE cellSpacing=0 cellPadding=0 align=left width="100%">
								<TBODY>
									<TR>
										<TD class=c width="12%" height=25>
											公司名称:
										</TD>
										<TD class=c width="88%">
											<A
												href="http://yys580.cn.alibaba.com/?tracelog=feedback_company_tp"
												target=_blank>永康市亘古园林机械有限公司 </A>
										</TD>
									</TR>
									<TR>
										<TD class=c height=25>
											联&nbsp;系&nbsp;人:
										</TD>
										<TD class=c>
											<A onmouseover="drs('yys580，yys580'); return true;"
												onmouseout="nd(); return true;"
												href="http://china.alibaba.com/member/profile.htm?member_id=yys580"
												target=_blank><%=hyjbxx != null ? hyjbxx.getHydlm() : ""%>
											</A>
											<SCRIPT src="<%=path%>/user/message/link/alitalk.js" type=text/javascript></SCRIPT>
											<IMG id=alitalkImg style="CURSOR: pointer" height=16
												src="<%=path%>/user/message/link/list_mytlogo_offline.gif" width=16 align=absMiddle
												border=0>
											<SPAN id=alitalkTxt></SPAN>
											

							</TD>
									</TR>
								</TBODY>
							</TABLE>

			<BR>
			<TABLE cellSpacing=0 cellPadding=0 width=650 align=center border=0>
				<TBODY>
					<TR>
						<TD class=fb_title>
							填写留言内容
						</TD>
					</TR>
				</TBODY>
			</TABLE>
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
											<INPUT class=C maxLength=50 size=70 name=title>
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
							<TEXTAREA class=C name=content rows=6 cols=80></TEXTAREA>
						</TD>
					</TR>
				</TBODY>
			</TABLE>

			<TABLE cellSpacing=0 cellPadding=0 width=650 border=0>
				<TBODY>
					<TR>
						<TD class="s lh15">
							·上传附件：
							<SPAN class=gray>(可上传三个，总大小不能超过1MB，附件只能发送到对方的邮箱中)</SPAN>
							<BR>
							<DIV style="PADDING-TOP: 5px">
								<SPAN id=file1>附件一： <INPUT
										onkeypress="openAnother(1, 2);" id=uploadFile1 type=file
										onchange="openAnother(1, 2);" size=70 name=uploadFile1>
								</SPAN><SPAN id=file2 style="DISPLAY: none">附件二： <INPUT
										onkeypress="openAnother(2, 3);" type=file
										onchange="openAnother(2, 3);" size=70 name=uploadFile2>
								</SPAN><SPAN id=file3 style="DISPLAY: none">附件三： <INPUT
										onkeypress="openAnother(3, 4);" type=file
										onchange="openAnother(3, 4);" size=70 name=uploadFile3>
								</SPAN>
							</DIV>
						</TD>
					</TR>
				</TBODY>
			</TABLE>
			<SCRIPT language=javascript>
function addfile(){
	if(document.all("file2").style.display=="none"){
		document.all("file2").style.display="block";
	}else{
		if(document.all("file3").style.display=="none"){
			document.all("file3").style.display="block";
		}else{
			alert("您最多可以添加3个附件!")
		}

	}
}
  </SCRIPT>
			<BR>
			<TABLE cellSpacing=0 cellPadding=0 width=650 border=0>
				<TBODY>
					<TR>
						<TD class=c
							style="BORDER-TOP: #cccccc 1px solid; BORDER-BOTTOM: #ffffff 1px solid"
							height=50>
							<SPAN class=m><FONT color=#ff0000>验证码：</FONT>
							</SPAN>
							<INPUT size=8 name=verifycode>
							请在验证框中输入
							<IMG
								src="http://checkcode.china.alibaba.com/service/checkcode?sessionID=pJUuzjGavbEbH2iPOlAPx7DZPd7zU5AW">
						</TD>
					</TR>
				</TBODY>
			</TABLE>
			<!--注释:参数用来区别表单的类型: 议价单:2,留言单:3,询价单:1 -->
			<INPUT type=hidden value=3 name=billType>
			<BR>
			<TABLE cellSpacing=0 cellPadding=0 width=650 align=center border=0>
				<TBODY>
					<TR>
						<TD>
							<INPUT class=m style="WIDTH: 150px; HEIGHT: 35px"
								onclick="javascript: clickTrace('po_message_fbxj');return checkForm();"
								type=submit value="发送留言单 >>" name=sendButton>
						</TD>
						<TD>
							<DIV align=right>
								<SPAN class=s><BR>
									<BR>
									<BR>
									<BR>
									<A class=C
									href="http://china.alibaba.com/member/modify_member_info.htm"
									target=_blank>点此检查联系信息，确保对方能联系到我！</A> </SPAN>
							</DIV>
						</TD>
					</TR>
				</TBODY>
			</TABLE>
			<TABLE style="DISPLAY: none" cellSpacing=0 cellPadding=0 width=750
				bgColor=#ffffff border=0>
				<TBODY>
					<TR>
						<TD class=C align=middle>t
							<P align=left>
								<INPUT type=checkbox value=yes name=checkDate>
								我希望
								<A onmouseover="drs('yys580，yys580'); return true;"
									onmouseout="nd(); return true;"
									href="http://china.alibaba.com/member/profile.htm?member_id=yys580"
									target=_blank>俞勇胜先生</A>
								<SELECT name=lastYear>
									<OPTION value=2008年 selected>
										2008
									</OPTION>
								</SELECT>
								年
								<SELECT name=lastMonth>
									<OPTION value=12月 selected>
										12
									</OPTION>
								</SELECT>
								月
								<SELECT name=lastDay>
									<OPTION value=16日 selected>
										16
									</OPTION>
									<OPTION value=17日>
										17
									</OPTION>
									<OPTION value=18日>
										18
									</OPTION>
									<OPTION value=19日>
										19
									</OPTION>
									<OPTION value=20日>
										20
									</OPTION>
									<OPTION value=21日>
										21
									</OPTION>
									<OPTION value=22日>
										22
									</OPTION>
									<OPTION value=23日>
										23
									</OPTION>
									<OPTION value=24日>
										24
									</OPTION>
									<OPTION value=25日>
										25
									</OPTION>
									<OPTION value=26日>
										26
									</OPTION>
									<OPTION value=27日>
										27
									</OPTION>
									<OPTION value=28日>
										28
									</OPTION>
									<OPTION value=29日>
										29
									</OPTION>
									<OPTION value=30日>
										30
									</OPTION>
									<OPTION value=31日>
										31
									</OPTION>
								</SELECT>
								日前回复！ （如需要，请选中方框
								<INPUT type=checkbox CHECKED value=yes name=checkDate3>
								）
							</P>
						</TD>
					</TR>
				</TBODY>
			</TABLE>
		</FORM>
		<BR>

		<a href="<%=path%>/message.do?method=getMessage">我的留言</a>
		<a href="<%=path%>/message.do?method=show">留言列表</a>
	</body>
</html>
