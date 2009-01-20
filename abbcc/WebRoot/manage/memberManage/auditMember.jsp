<%@ page language="java" import="java.util.*" pageEncoding="gbk" contentType="text/html;charset=gbk"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getContextPath();
%>
<html>
  <head>
    <title>审核用户</title>
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
				<td align=center>会员类型:</td>
				<td>
				<select name="memberType" >
    				<option value="0" >免费会员</option>
					<option value="1" >普通会员</option>
					<option value="2" >互动会员</option>
					<option value="3" >精致型会员</option>
					<option value="4" >VIP定制型会员</option>
				</select>
				</td>
			</tr>
			<tr>
			<!-- 有效时间 -->
				<td align=center>
				<select name="accountType" >
    				<option>仅更改帐户类型</option>
					<option value="1" >1年</option>
					<option value="2" >2年</option>
					<option value="3" >3年</option>
					<option value="4" >4年</option>
					<option value="5" >5年</option>
				</select>
			</tr>
			<tr align=center>
				<td colspan=2 align=center>
				<input type="button" onClick="auditMember();" value="确&nbsp;&nbsp;定">&nbsp;
				<input type="button" value="返&nbsp;&nbsp;回" onClick="javascript:window.close();">
				</td>
			</tr>
		</table>
	</form>
  </body>
</html>
