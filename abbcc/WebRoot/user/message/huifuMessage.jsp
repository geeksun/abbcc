<%@ page contentType="text/html; charset=GBK" %>
<%@page import="java.util.List,com.abbcc.pojo.Message" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<%
		String path = request.getContextPath();	
 %>
<head>
<title>我收到的留言</title>
<SCRIPT language=JavaScript src="<%=path%>/user/message/link/aliclick.js"></SCRIPT>
<SCRIPT src="<%=path%>/user/message/link/search.js" type=text/javascript charset=gb2312></SCRIPT>
<SCRIPT src="<%=path%>/user/message/link/AlicnTree.js" type=text/javascript></SCRIPT>

<LINK rev=stylesheet href="<%=path%>/user/message/link/AlicnTree.css" type=text/css rel=stylesheet>
<LINK rev=stylesheet href="<%=path%>/user/message/link/myali_search_v02.css" type=text/css rel=stylesheet>
<LINK rev=stylesheet href="<%=path%>/user/message/link/mainframe.css" type=text/css rel=stylesheet>
<LINK rev=stylesheet href="<%=path%>/user/message/link/content.css" type=text/css rel=stylesheet>
</head>
<body>
  <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
  	<TBODY>
  	<TR>
    <TD class=bigtitle width="53%">我收到的留言</TD>
    </TR></TBODY></TABLE>
  <TABLE class=list_box cellSpacing=0 cellPadding=5 width="100%" border=0>
  <TBODY>
  <% 
  Message show=(Message)request.getAttribute("showOne");
  if(show!=null){
  	String title=show.getTitle();
  	String content=show.getContent();
  	int fromid=show.getFromid();
  	long id=show.getId();
  %>
  
  <TR>
    <TD class=list_right_box 
      style="WORD-BREAK: break-all"><B>主题：<%=title %></B><BR>时间：2008年10月29日 03:52:59 
      <HR SIZE=1>
      <STRONG>主要内容</STRONG>：<BR><BR>
      <P><%=content %> 
       
      <BR><BR>
      <P><SENDCONTACT /></P><FONT color=#666666>顺祝商祺!
      <HR align=left width="40%" SIZE=1>
       
      <DIV id=alitalkLevel style="DISPLAY: inline">
      <A title=pjttiy href="http://china.alibaba.com/member/profile.htm?member_id=pjttiy" target=_blank><%=fromid %></A>(采购主管)
      <SCRIPT src="<%=path%>/user/message/link/alitalk.js" type=text/javascript></SCRIPT>
      <IMG id=alitalkImg style="CURSOR: pointer" height=16 
      src="<%=path%>/user/message/link/list_mytlogo_offline.gif" width=16 align=absMiddle 
      border=0> <SPAN id=alitalkTxt></SPAN>
    
      谨上<BR>
      </DIV>
      <DIV title= style="DISPLAY: inline"><%=fromid %>(个体经营)</DIV>&nbsp;
      <SPAN class="S lh15">
      <IMG height=16 alt=" " src="<%=path%>/user/message/link/icon_qyxyss_white.gif" width=21 align=absMiddle></SPAN> <BR>
            地址：中国 黑龙江 克东县 黑龙江省齐齐哈尔市克东县<BR>电话：86 0452 14767137 </FONT> 

      </TD></TR></TBODY></TABLE><BR>
   <%
   	String huifutitle=(String)request.getAttribute("huifutitle");
   	String huifucontent=(String)request.getAttribute("huifucontent");
    %>

<SCRIPT src="<%=path%>/user/message/link/alitalk.js" type=text/javascript></SCRIPT>

<SCRIPT src="<%=path%>/user/message/link/alitalk2.js" type=text/javascript></SCRIPT>
  <%
  }
   %>
  
</body>
</html>