<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'modifyFail.jsp' starting page</title>
	<link rel="stylesheet" type="text/css" href="<%=path%>/css/service.css"/>
  </head>
  
  <body>
   <c:if test="${updateQuestionAboutPassword!=null}">
      <TABLE class=tx_box cellSpacing=0 cellPadding=0 width="100%" align=center>
  <TBODY>
  <TR>
    <TD vAlign=top align=middle width=80 rowSpan=2>
    <IMG height=53 src="<%=path%>/images/service/icon2.gif" width=53></TD>
    <TD class=tx_title height=20>对不起，您的操作失败了</TD></TR>
  <TR>
    <TD class=tx_content>
    ${updateQuestionAboutPassword}
    </TD></TR></TBODY>
   </TABLE>
   </c:if>
  </body>
</html>
