<%@ page language="java" import="java.util.*" pageEncoding="gbk" contentType="text/html;charset=gbk"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getContextPath();
%>
<html>
  <head>
    <title>��Ϣ�޸ĳɹ�</title>
    <link rel="stylesheet" type="text/css" href="<%=path%>/css/service.css"/>
  </head>
  <body>
  <c:if test="${opera_flag=='modify_pass'||opera_flag=='modify_pass_question'}">
  <TABLE cellSpacing=0 cellPadding=0 width="100%">
  <TBODY>
  <TR>
    <TD class=bigtitle width="53%">�������</TD>
    <TD align=right width="47%">
    </TD></TR></TBODY>
    </TABLE><BR>
<TABLE class=tx_box cellSpacing=0 cellPadding=0 width="100%" align=center>
  <TBODY>
  <TR>
    <TD vAlign=top align=center width=80 rowSpan=2>
    <IMG height=53 src="<%=path%>/images/service/icon1.gif" width=53></TD>
    <TD class=c height=20>
    <FONT color=#ff3300><B>���óɹ���</B></FONT>
      ���μ��������뱣�����⼰�𰸡�������ͨ���ش����뱣��������ȡ�����롣<INPUT onclick="javascript:history.back(1)" type=button value=" �� �� "> 
      </TD></TR>
  </TBODY></TABLE>
  </c:if>
      
  <c:if test="${opera_flag=='update_detailInfo'}">
 <TABLE cellSpacing=0 cellPadding=0 width="100%">
  <TBODY>
  <TR>
    <TD class=bigtitle width="53%">��˾��ϸ��Ϣ����</TD>
    <TD align=right width="47%">
    </TD></TR></TBODY>
    </TABLE><BR>
  <TABLE class=tx_box cellSpacing=0 cellPadding=0 width="100%" align=center>
  <TBODY>
  <TR>
    <TD vAlign=top align=center width=80 rowSpan=2>
    <IMG height=53 src="<%=path%>/images/service/icon1.gif" width=53></TD>
    <TD class=c height=20>
    <FONT color=#ff3300><B>��˾��ϸ�������ύ�ɹ���</B></FONT>	�������������������
      </TD></TR>
      </TBODY></TABLE> 	
  </c:if>
  <c:if test="${opera_flag=='honor_refer'}">
 <TABLE cellSpacing=0 cellPadding=0 width="100%">
  <TBODY>
  <TR>
    <TD class=bigtitle width="53%">��˾����֤�����</TD>
    <TD align=right width="47%">
    </TD></TR></TBODY>
    </TABLE><BR>
  <TABLE class=tx_box cellSpacing=0 cellPadding=0 width="100%" align=center>
  <TBODY>
  <TR>
    <TD vAlign=top align=center width=80 rowSpan=2>
    <IMG height=53 src="<%=path%>/images/service/icon1.gif" width=53></TD>
    <TD class=c height=20>
    <FONT color=#ff3300><B>��˾����֤����Ϣ���ύ�ɹ���</B></FONT>	�������������������
      </TD></TR>
      </TBODY></TABLE> 	
  </c:if>
  <c:if test="${opera_flag=='technology_refer'}">
 	<TABLE cellSpacing=0 cellPadding=0 width="100%">
  	<TBODY>
  	<TR>
    <TD class=bigtitle width="53%">��˾����ʵ��</TD>
    <TD align=right width="47%">
    </TD></TR></TBODY>
    </TABLE><BR>
  <TABLE class=tx_box cellSpacing=0 cellPadding=0 width="100%" align=center>
  <TBODY>
  <TR>
    <TD vAlign=top align=center width=80 rowSpan=2>
    <IMG height=53 src="<%=path%>/images/service/icon1.gif" width=53></TD>
    <TD class=c height=20>
    <FONT color=#ff3300><B>��˾����ʵ����Ϣ���ύ�ɹ���</B></FONT>	�������������������
      </TD></TR>
      </TBODY></TABLE> 	
  </c:if>
    <c:if test="${opera_flag=='companylogo_refer'}">
 	<TABLE cellSpacing=0 cellPadding=0 width="100%">
  	<TBODY>
  	<TR>
    <TD class=bigtitle width="53%">��˾��־</TD>
    <TD align=right width="47%">
    </TD></TR></TBODY>
    </TABLE><BR>
  <TABLE class=tx_box cellSpacing=0 cellPadding=0 width="100%" align=center>
  <TBODY>
  <TR>
    <TD vAlign=top align=center width=80 rowSpan=2>
    <IMG height=53 src="<%=path%>/images/service/icon1.gif" width=53></TD>
    <TD class=c height=20>
    <FONT color=#ff3300><B>��˾��־��Ϣ���ύ�ɹ���</B></FONT>	�������������������
      </TD></TR>
      </TBODY></TABLE> 	
  </c:if>
  </body>
</html>
