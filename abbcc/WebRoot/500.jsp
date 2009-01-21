<%@ page language="java" import="java.util.*" pageEncoding="gbk" contentType="text/html;charset=gbk"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getContextPath();
%>
<html>
  <head>
    <title>500</title>
    <link rel="stylesheet" type="text/css" href="<%=path%>/css/service.css"/>
  </head>
  <body>
  	<div><h3><font color="blue">
		服务出现异常
  </font></h3></div>
  <c:if test="${display_flag=='display_crash'}">
    <TABLE class=tx_box cellSpacing=0 cellPadding=0 width="100%" align=center>
    <TBODY>
    <TR>
    <TD vAlign=top align=center width=80 rowSpan=2>
    <IMG height=53 src="<%=path%>/images/service/icon2.gif" width=53></TD>
    <TD class=tx_title height=20>对不起，您的操作失败了</TD></TR>
    <TR>
    <TD class=tx_content>
    </TD></TR></TBODY>
   </TABLE>    
   </c:if>
    <c:if test="${display_flag=='display_crash_1'}">
    <TABLE class=tx_box cellSpacing=0 cellPadding=0 width="100%" align=center>
    <TBODY>
    <TR>
    <TD vAlign=top align=center width=80 rowSpan=2>
    <IMG height=53 src="<%=path%>/images/service/icon2.gif" width=53></TD>
    <TD class=tx_title height=20>对不起，您的服务出现异常，请与管理员联系。</TD></TR>
    <TR>
    <TD class=tx_content>
    </TD></TR></TBODY>
   </TABLE>    
   </c:if>
      
  </body>
</html>
