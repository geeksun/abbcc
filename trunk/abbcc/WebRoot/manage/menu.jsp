<%@ page language="java"  pageEncoding="gbk" contentType="text/html;charset=gbk"%>
<%@page import="com.abbcc.common.AppConstants" %>
<%
	String path = request.getContextPath();
%> 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>welcome to abbcc</title> 
	  <style type="text/css">
			dl{	background-color:#FFDAB9;color:#000E00;width:200px;}
			dt{ cursor:pointer;width:100%;background-color:#F0E68C;}
			.expand {overflow:visible;}
			.collapse {height:16px;overflow:hidden;}
		</style>
		<script type="text/javascript">
			function toggleDl(dt){
				var dl = dt.parentNode;
				if("collapse" == dl.className) dl.className = "expand";
				else dl.className = "collapse";	
			}
		</script>
  </head> 
  <body>
     <dl>
     	<dt onclick="toggleDl(this)">��Ա����</dt>
     	<dd><a href="<%=path%>/memberManage.do?action=displayBasicInfo" target="right">���û�ע�����</a></dd>
     	<dd><a href="<%=path%>/memberManage.do?action=displayModifyCipher" target="right">������ͨ��Ա����</a></dd>
     	<dd><a href="<%=path%>/memberManage.do?action=displayDetailInfo" target="right">����δ���ѻ�Ա����</a></dd> 
     	<dd><a href="<%=path%>/memberManage.do?action=displayHonorCertificate" target="right">���շѻ�Ա</a></dd>
     </dl>
     
     
  </body>
</html>
 