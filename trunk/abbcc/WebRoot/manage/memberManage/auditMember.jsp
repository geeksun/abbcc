<%@ page language="java" import="java.util.*" pageEncoding="gbk" contentType="text/html;charset=gbk"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getContextPath();
%>
<html>
  <head>
    <title>����û�</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<script type="text/javascript">
		var nX = screen.width - 300;    			
	    var nY = screen.height - 600;   		 
		if(nX < 0)   
		{   
		  	nX = 0;   
		}   
		if(nY < 0)   
		{   
		 	nY = 0;   
		}   
		nX = parseInt( nX / 2 );   
		nY = parseInt( nY / 2);   
		window.moveTo( nX, nY ); 
		function auditMember(){
			alert('come');
	   	   	document.auditMemberForm.action="<%=path%>/memberManage.action";
			document.auditMemberForm.submit();		  
    	} 
	</script>
  </head>
  
  <body>
       <form name="auditMemberForm" method="post">
        <input name="action" type="hidden" value="auditRegisterMember">
		<input name="hyjbxxid" type="hidden" value="${hyjbxxid}">
		<table  width="100%" align="center">
			<tr>
				<td align=center>��Ա����:</td>
				<td>
				<select name="memberType" >
    				<option value="0" >��ѻ�Ա</option>
					<option value="1" >��ͨ��Ա</option>
					<option value="2" >������Ա</option>
					<option value="3" >�����ͻ�Ա</option>
					<option value="4" >VIP�����ͻ�Ա</option>
				</select>
				</td>
			</tr>
			<tr>
			<!-- ��Чʱ�� -->
				<td align=center>
				<select name="accountType" >
    				<option>�������ʻ�����</option>
					<option value="1" >1��</option>
					<option value="2" >2��</option>
					<option value="3" >3��</option>
					<option value="4" >4��</option>
					<option value="5" >5��</option>
				</select>
			</tr>
			<tr align=center>
				<td colspan=2 align=center>
				<input type="button" onClick="auditMember();" value="ȷ&nbsp;&nbsp;��">&nbsp;
				<input type="button" value="��&nbsp;&nbsp;��" onClick="javascript:window.close();">
				</td>
			</tr>
		</table>
	</form>
  </body>
</html>
