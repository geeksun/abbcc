<%@ page language="java" import="java.util.*" pageEncoding="gbk" contentType="text/html;charset=gbk"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getContextPath();
%>
<html>
   <head>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
    <link rel="stylesheet" type="text/css" href="<%=path%>/css/service.css"/>
    <script type="text/javascript">
    	function geekclick(){
    		
    	}
    </script>
  </head>
  <body>
  <c:set var="truename" value="${truename}" scope="page"></c:set>
  <c:set var="memberId" value="${memberId}" scope="page"></c:set>
  <TABLE cellSpacing=0 cellPadding=0 width="100%">
  <TBODY>
  <TR>
    <TD class=bigtitle width="53%">�޸�����</TD>
    <TD align=right width="47%">
    </TD></TR>
    </TBODY>
    </TABLE><BR>
	<TABLE class=tx_box cellSpacing=0 cellPadding=0 width="100%" align=center>
	  <TBODY>
	  <TR>
	    <TD vAlign=top align=center width=80 rowSpan=2>
	    <IMG height=53 src="<%=path%>/images/service/icon1.gif" width=53></TD>
	    <TD class=tx_title height=20>���������ǣ�<c:out value="${truename}"></c:out>
	<BR>���Ļ�Ա��¼���ǣ�<c:out value="${memberId}"></c:out></TD></TR></TBODY></TABLE><BR>
	<TABLE cellSpacing=0 cellPadding=0 width="100%">
    <TBODY>
    <TR>
    <TD class=smalltitle>�޸����룺</TD></TR>
    </TBODY>
    </TABLE>
    <FORM style="PADDING-RIGHT: 0px; PADDING-LEFT: 0px; PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-TOP: 0px" 
name=modifyPassword action="modifyPassword.do" method=post>
<TABLE style="BORDER-RIGHT: #dddddd 1px solid; BORDER-TOP: #dddddd 1px solid; BORDER-LEFT: #dddddd 1px solid; BORDER-BOTTOM: #dddddd 1px solid" 
cellSpacing=0 cellPadding=0 width="100%" border=0>
<INPUT type="hidden" value="ModifyPasswordHandle" name="action"> 
  <TBODY>
  <TR>
    <TD class=list_left_box vAlign=top>�����룺</TD>
    <TD class=list_right_box>
    <INPUT type=password maxLength=20 size=30 name=old_password></TD></TR>
  <TR>
    <TD class=list_left_box vAlign=top>�µ����룺</TD>
    <TD class=list_right_box>
    <INPUT type=password maxLength=20 size=30 name=new_password><BR>
    <FONT class=note>6-20 ���ַ���ֻ�������ֺ�Ӣ����ĸ���д�Сд���֡�</FONT></TD>
  </TR>
  <TR>
    <TD class=list_left_box vAlign=top>��ȷ�����룺</TD>
    <TD class=list_right_box>
    <INPUT type=password maxLength=20 size=30 name=comfirm_password></TD>
  </TR>
  <TR>
    <TD class=list_left_box vAlign=top>���뱣�����⣺</TD>
    <TD class=list_right_box>
    <INPUT id=password_question maxLength=50 size=30 name=password_question><BR>
    <FONT class=note>50���ַ����ڣ������ü�����̵����⣬����ְֵ�����</FONT></TD>
  </TR>
  <TR>
    <TD class=list_left_box vAlign=top>���뱣���𰸣�</TD>
    <TD class=list_right_box>
    <INPUT id=password_answer maxLength=50 size=30 name=password_answer></TD>
  </TR>
  <TR>
    <TD class=list_left_box vAlign=top>ȷ�����뱣���𰸣�</TD>
    <TD class=list_right_box>
    <INPUT id=confirmAnswer maxLength=50 size=30 name=confirmAnswer><BR>
    <FONT class=note>�����������뱣����</FONT></TD>
  </TR>
  <TR>
    <TD>&nbsp;</TD>
    <TD style="PADDING-LEFT: 5px" height=35>&nbsp;
    <INPUT onclick="geekclick();" type=submit value="ȷ ��" name=Change>
    </TD>
  </TR>
 </TBODY>
 </TABLE>
 </FORM>

    
  </body>
</html>
