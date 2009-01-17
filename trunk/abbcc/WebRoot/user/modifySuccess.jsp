<%@ page language="java" import="java.util.*" pageEncoding="gbk" contentType="text/html;charset=gbk"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getContextPath();
%>
<html>
  <head>
    <title>信息修改成功</title>
    <link rel="stylesheet" type="text/css" href="<%=path%>/css/service.css"/>
  </head>
  <body>
  <c:if test="${opera_flag=='modify_pass'||opera_flag=='modify_pass_question'}">
  <TABLE cellSpacing=0 cellPadding=0 width="100%">
  <TBODY>
  <TR>
    <TD class=bigtitle width="53%">密码管理</TD>
    <TD align=right width="47%">
    </TD></TR></TBODY>
    </TABLE><BR>
<TABLE class=tx_box cellSpacing=0 cellPadding=0 width="100%" align=center>
  <TBODY>
  <TR>
    <TD vAlign=top align=center width=80 rowSpan=2>
    <IMG height=53 src="<%=path%>/images/service/icon1.gif" width=53></TD>
    <TD class=c height=20>
    <FONT color=#ff3300><B>设置成功！</B></FONT>
      请牢记您的密码保护问题及答案。您可以通过回答密码保护问题来取回密码。<INPUT onclick="javascript:history.back(1)" type=button value=" 返 回 "> 
      </TD></TR>
  </TBODY></TABLE>
  </c:if>
      
  <c:if test="${opera_flag=='update_detailInfo'}">
 <TABLE cellSpacing=0 cellPadding=0 width="100%">
  <TBODY>
  <TR>
    <TD class=bigtitle width="53%">公司详细信息管理</TD>
    <TD align=right width="47%">
    </TD></TR></TBODY>
    </TABLE><BR>
  <TABLE class=tx_box cellSpacing=0 cellPadding=0 width="100%" align=center>
  <TBODY>
  <TR>
    <TD vAlign=top align=center width=80 rowSpan=2>
    <IMG height=53 src="<%=path%>/images/service/icon1.gif" width=53></TD>
    <TD class=c height=20>
    <FONT color=#ff3300><B>贵公司详细资料已提交成功！</B></FONT>	请继续进行其他操作。
      </TD></TR>
      </TBODY></TABLE> 	
  </c:if>
  <c:if test="${opera_flag=='honor_refer'}">
 <TABLE cellSpacing=0 cellPadding=0 width="100%">
  <TBODY>
  <TR>
    <TD class=bigtitle width="53%">公司荣誉证书管理</TD>
    <TD align=right width="47%">
    </TD></TR></TBODY>
    </TABLE><BR>
  <TABLE class=tx_box cellSpacing=0 cellPadding=0 width="100%" align=center>
  <TBODY>
  <TR>
    <TD vAlign=top align=center width=80 rowSpan=2>
    <IMG height=53 src="<%=path%>/images/service/icon1.gif" width=53></TD>
    <TD class=c height=20>
    <FONT color=#ff3300><B>贵公司荣誉证书信息已提交成功！</B></FONT>	请继续进行其他操作。
      </TD></TR>
      </TBODY></TABLE> 	
  </c:if>
  <c:if test="${opera_flag=='technology_refer'}">
 	<TABLE cellSpacing=0 cellPadding=0 width="100%">
  	<TBODY>
  	<TR>
    <TD class=bigtitle width="53%">公司技术实力</TD>
    <TD align=right width="47%">
    </TD></TR></TBODY>
    </TABLE><BR>
  <TABLE class=tx_box cellSpacing=0 cellPadding=0 width="100%" align=center>
  <TBODY>
  <TR>
    <TD vAlign=top align=center width=80 rowSpan=2>
    <IMG height=53 src="<%=path%>/images/service/icon1.gif" width=53></TD>
    <TD class=c height=20>
    <FONT color=#ff3300><B>贵公司技术实力信息已提交成功！</B></FONT>	请继续进行其他操作。
      </TD></TR>
      </TBODY></TABLE> 	
  </c:if>
    <c:if test="${opera_flag=='companylogo_refer'}">
 	<TABLE cellSpacing=0 cellPadding=0 width="100%">
  	<TBODY>
  	<TR>
    <TD class=bigtitle width="53%">公司标志</TD>
    <TD align=right width="47%">
    </TD></TR></TBODY>
    </TABLE><BR>
  <TABLE class=tx_box cellSpacing=0 cellPadding=0 width="100%" align=center>
  <TBODY>
  <TR>
    <TD vAlign=top align=center width=80 rowSpan=2>
    <IMG height=53 src="<%=path%>/images/service/icon1.gif" width=53></TD>
    <TD class=c height=20>
    <FONT color=#ff3300><B>贵公司标志信息已提交成功！</B></FONT>	请继续进行其他操作。
      </TD></TR>
      </TBODY></TABLE> 	
  </c:if>
  </body>
</html>
