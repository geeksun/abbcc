<%@ page contentType="text/html; charset=GBK" %>
<%@page import="java.util.List" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<%
		String path = request.getContextPath();	
 %>
<head>
<title>��Ӧ��Ϣ����</title>
<SCRIPT language=JavaScript src="link/aliclick.js"></SCRIPT>
<SCRIPT src="link/search.js" type=text/javascript charset=gb2312></SCRIPT>
<SCRIPT src="link/AlicnTree.js" type=text/javascript></SCRIPT>

<LINK rev=stylesheet href="link/AlicnTree.css" type=text/css rel=stylesheet>
<LINK rev=stylesheet href="link/myali_search_v02.css" type=text/css rel=stylesheet>
<LINK rev=stylesheet href="link/mainframe.css" type=text/css rel=stylesheet>
<LINK rev=stylesheet href="link/content.css" type=text/css rel=stylesheet>
</head>
<body>
<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
  <TBODY>
  <TR>
    <TD class=bigtitle width="53%">���յ�������</TD>
    <TD align=right400-826-5188 width="47%"></TD></TR></TBODY></TABLE><BR>
      
  <TABLE class=tx_box cellSpacing=0 cellPadding=1 width="100%" border=0>
  <TBODY>
  <TR>
    <TD vAlign=center align=middle width=80 rowSpan=2><IMG height=53 
      src="link/icon1.gif" width=53></TD>
    <TD class=tx_title height=20>�ҵ� 0 �����ԣ�<BR></TD></TR>
  <TR>
    <TD class=tx_content><A class=s 
    href="javascript:history.back()">��˷���</A></TD></TR></TBODY></TABLE><BR>
<TABLE cellSpacing=0 cellPadding=0 width="100%">
  <TBODY>
  <TR>
    <TD class=card_blank width=10>&nbsp;</TD>
    <TD class=card_normal onmouseover="this.style.cursor='hand'" 
    onclick="document.getElementById('queryOfferType').value='';doSearch();">��������</TD>
    <TD class=card_down style="WIDTH: 120px">���ڹ�Ӧ��Ϣ����</TD>
    <TD class=card_normal onmouseover="this.style.cursor='hand'" 
    style="WIDTH: 120px" 
    onclick="document.getElementById('queryOfferType').value='buy';doSearch();">��������Ϣ����</TD>
    <TD class=card_blank><SPAN style="FLOAT: right; TEXT-ALIGN: right"><IMG 
      height=15 src="link/myali_icon01.gif" width=16 
      align=absMiddle>δ��&nbsp;&nbsp; <IMG height=15 
      src="link/myali_icon02.gif" width=16 
      align=absMiddle>�Ѷ�&nbsp;&nbsp; <IMG height=15 
      src="link/myali_icon03.gif" width=16 align=absMiddle>�ѻظ� 
    </SPAN></TD></TR></TBODY></TABLE>
<FORM style="MARGIN: 0px" name=messageSearchForm method=get><INPUT id=tracelog 
type=hidden name=tracelog> <INPUT type=hidden value=1 name=_fmme.l._0.p> <INPUT 
type=hidden value=15 name=_fmme.l._0.pa> <INPUT id=queryOfferType type=hidden 
value=sale name=_fmme.l._0.of> <INPUT id=queryOpen type=hidden 
name=_fmme.l._0.o> <INPUT id=queryReply type=hidden name=_fmme.l._0.r> 
<TABLE class=list_box cellSpacing=0 cellPadding=0 width="100%" border=0>
  <TBODY>
  <TR>
    <TD class=list_right_box width="100%"><SPAN class=c><SELECT class=S 
      id=queryReplySelect 
      onchange="document.getElementById('tracelog').value='po_messageaccept_feed';doFilter()" 
      name=replySelect> <OPTION selected>�Ƿ�ظ�</OPTION> <OPTION 
        value=true>�ѻظ�</OPTION> <OPTION value=false>δ�ظ�</OPTION></SELECT> 
      </SPAN><INPUT id=queryKeywords onclick=cleanDefaultKeywords(this) 
      type=hidden maxLength=100 name=_fmme.l._0.k> <SELECT 
      onchange="javascript:document.getElementById('tracelog').value='po_messageaccept_search';doSearch()" 
      name=_fmme.l._0.t> <OPTION value=1week>һ�������ڵ�����</OPTION> <OPTION 
        value=1month>һ�����ڵ�����</OPTION> <OPTION value=3month 
        selected>�������ڵ�����</OPTION> <OPTION 
        value=3_month_to_1_year>�����µ�һ���ڵ�����</OPTION> <OPTION 
        value=over1year>һ�����ϵ�����</OPTION></SELECT> </TD></TR></TBODY></TABLE></FORM>
<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
  <TBODY>
  <TR>
    <TD class=s style="PADDING-LEFT: 5px" width="65%" height=30>&nbsp; </TD>
    <TD style="PADDING-LEFT: 8px" align=right width="42%"><FONT 
      color=#999999>��һҳ</FONT> <FONT color=#999999>��һҳ</FONT> 
</TD></TR></TBODY></TABLE>
<FORM style="MARGIN: 0px" name=dealForm 
action=http://china.alibaba.com/message/list_received_message.htm?action=message_action&amp;event_submit_do_mutildelete=doit&amp;_fmme.l._0.pa=15&amp;_fmme.l._0.of=sale&amp;_fmme.l._0.o=&amp;_fmme.l._0.r=&amp;_fmme.l._0.k=&amp;_fmme.l._0.t=3month&amp;_fmme.l._0.p=1 
method=post><INPUT type=hidden value=false name=isSend> <INPUT type=hidden 
value=http://china.alibaba.com/message/list_received_message.htm?tracelog=&amp;_fmme.l._0.p=1&amp;_fmme.l._0.pa=15&amp;_fmme.l._0.of=sale&amp;_fmme.l._0.o=&amp;_fmme.l._0.r=&amp;replySelect=%CA%C7%B7%F1%BB%D8%B8%B4&amp;_fmme.l._0.k=&amp;_fmme.l._0.t=3month 
name=doneUrl> 
<TABLE class=list_lb_loca cellSpacing=0 cellPadding=0 width="100%" border=0>
  <COLGROUP>
  <COL align=middle>
  <COL align=let>
  <COL align=left>
  <COL align=middle></COLGROUP>
  <TBODY>
  <TR>
    <TD class=list_lb_title width=20>&nbsp;</TD>
    <TD class=list_lb_title>����</TD>
    <TD class=list_lb_title width=150><SPAN class=s>����</SPAN></TD>
    <TD class=list_lb_title 
width=80>�Ƿ񹫿�</TD></TR></TBODY></TABLE></FORM><BR><BR><BR><BR>
</body>
</html>