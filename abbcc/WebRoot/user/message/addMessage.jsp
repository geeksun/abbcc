<%@ page contentType="text/html; charset=GBK"%>
<%@page import="java.util.List"%>
<jsp:directive.page import="com.abbcc.pojo.Hyjbxx;" />
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

	<%
	String path = request.getContextPath();
	%>
	<head>
		<title>����</title>
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
							���Խ��շ�
						</TD>
						<TD class=fb_title>
							�� <input type="radio"  name="type" value="1">
							��Ӧ <input type="radio"  name="type" value="2">
						</TD>
					</TR>
				</TBODY>
			</TABLE>
			<BR>
							<TABLE cellSpacing=0 cellPadding=0 align=left width="100%">
								<TBODY>
									<TR>
										<TD class=c width="12%" height=25>
											��˾����:
										</TD>
										<TD class=c width="88%">
											<A
												href="http://yys580.cn.alibaba.com/?tracelog=feedback_company_tp"
												target=_blank>������ب��԰�ֻ�е���޹�˾ </A>
										</TD>
									</TR>
									<TR>
										<TD class=c height=25>
											��&nbsp;ϵ&nbsp;��:
										</TD>
										<TD class=c>
											<A onmouseover="drs('yys580��yys580'); return true;"
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
							��д��������
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
											��&nbsp;&nbsp;&nbsp;&nbsp;��:
										</TD>
										<TD>
											<INPUT class=C maxLength=50 size=70 name=title>
										</TD>
									</TR>
									<TR>
										<TD class=c width="12%" height=25>
											��������:
										</TD>
										<TD class=c width="88%">
											<SPAN class="s gray">(�� 1500 ����)</SPAN>
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
							���ϴ�������
							<SPAN class=gray>(���ϴ��������ܴ�С���ܳ���1MB������ֻ�ܷ��͵��Է���������)</SPAN>
							<BR>
							<DIV style="PADDING-TOP: 5px">
								<SPAN id=file1>����һ�� <INPUT
										onkeypress="openAnother(1, 2);" id=uploadFile1 type=file
										onchange="openAnother(1, 2);" size=70 name=uploadFile1>
								</SPAN><SPAN id=file2 style="DISPLAY: none">�������� <INPUT
										onkeypress="openAnother(2, 3);" type=file
										onchange="openAnother(2, 3);" size=70 name=uploadFile2>
								</SPAN><SPAN id=file3 style="DISPLAY: none">�������� <INPUT
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
			alert("�����������3������!")
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
							<SPAN class=m><FONT color=#ff0000>��֤�룺</FONT>
							</SPAN>
							<INPUT size=8 name=verifycode>
							������֤��������
							<IMG
								src="http://checkcode.china.alibaba.com/service/checkcode?sessionID=pJUuzjGavbEbH2iPOlAPx7DZPd7zU5AW">
						</TD>
					</TR>
				</TBODY>
			</TABLE>
			<!--ע��:�������������������: ��۵�:2,���Ե�:3,ѯ�۵�:1 -->
			<INPUT type=hidden value=3 name=billType>
			<BR>
			<TABLE cellSpacing=0 cellPadding=0 width=650 align=center border=0>
				<TBODY>
					<TR>
						<TD>
							<INPUT class=m style="WIDTH: 150px; HEIGHT: 35px"
								onclick="javascript: clickTrace('po_message_fbxj');return checkForm();"
								type=submit value="�������Ե� >>" name=sendButton>
						</TD>
						<TD>
							<DIV align=right>
								<SPAN class=s><BR>
									<BR>
									<BR>
									<BR>
									<A class=C
									href="http://china.alibaba.com/member/modify_member_info.htm"
									target=_blank>��˼����ϵ��Ϣ��ȷ���Է�����ϵ���ң�</A> </SPAN>
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
								��ϣ��
								<A onmouseover="drs('yys580��yys580'); return true;"
									onmouseout="nd(); return true;"
									href="http://china.alibaba.com/member/profile.htm?member_id=yys580"
									target=_blank>����ʤ����</A>
								<SELECT name=lastYear>
									<OPTION value=2008�� selected>
										2008
									</OPTION>
								</SELECT>
								��
								<SELECT name=lastMonth>
									<OPTION value=12�� selected>
										12
									</OPTION>
								</SELECT>
								��
								<SELECT name=lastDay>
									<OPTION value=16�� selected>
										16
									</OPTION>
									<OPTION value=17��>
										17
									</OPTION>
									<OPTION value=18��>
										18
									</OPTION>
									<OPTION value=19��>
										19
									</OPTION>
									<OPTION value=20��>
										20
									</OPTION>
									<OPTION value=21��>
										21
									</OPTION>
									<OPTION value=22��>
										22
									</OPTION>
									<OPTION value=23��>
										23
									</OPTION>
									<OPTION value=24��>
										24
									</OPTION>
									<OPTION value=25��>
										25
									</OPTION>
									<OPTION value=26��>
										26
									</OPTION>
									<OPTION value=27��>
										27
									</OPTION>
									<OPTION value=28��>
										28
									</OPTION>
									<OPTION value=29��>
										29
									</OPTION>
									<OPTION value=30��>
										30
									</OPTION>
									<OPTION value=31��>
										31
									</OPTION>
								</SELECT>
								��ǰ�ظ��� ������Ҫ����ѡ�з���
								<INPUT type=checkbox CHECKED value=yes name=checkDate3>
								��
							</P>
						</TD>
					</TR>
				</TBODY>
			</TABLE>
		</FORM>
		<BR>

		<a href="<%=path%>/message.do?method=getMessage">�ҵ�����</a>
		<a href="<%=path%>/message.do?method=show">�����б�</a>
	</body>
</html>
