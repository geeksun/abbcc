<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getContextPath();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>信息修改成功</title>
    <link rel="stylesheet" type="text/css" href="<%=path%>/css/service.css"/>
  </head>
  
  <body>
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
    <TD vAlign=top align=center width=80 rowSpan=2><IMG height=53 
      src="<%=path%>/images/service/icon1.gif" width=53></TD>
    <TD class=c height=20><FONT 
      color=#ff3300><B>设置成功！</B></FONT>
      请牢记您的密码保护问题及答案。您可以通过回答密码保护问题来取回密码。 
      <INPUT class=M onclick="javascript:document.location='http://china.alibaba.com/member/modify_password.htm'" type=submit value=" 返 回 " name=Submit>
      </TD></TR></TBODY></TABLE>
      
      
      
      
      <div align=center>
      <h2>
      <font color="blue">
      	贵公司详细资料已提交成功,请继续进行其他操作！
      </font>
       </h2>
      </div>
  </body>
</html>
