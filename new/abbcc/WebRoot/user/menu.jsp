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
     	<dt onclick="toggleDl(this)">������Ϣ����</dt>
     	<dd><a href="<%=path%>/traceInfo.do?action=displayBasicInfo" target="right">�������Ϲ���</a></dd>
     	<dd><a href="<%=path%>/modifyPassword.do?action=displayModifyCipher" target="right">��̨�����޸�</a></dd>
     	<dd><a href="<%=path%>/traceInfo.do?action=displayDetailInfo" target="right">��˾���</a></dd> 
     	<dd><a href="<%=path%>/strengthInfo.do?action=displayHonorCertificate" target="right">����֤��</a></dd>
     	<dd><a href="<%=path%>/strengthInfo.do?action=displayTechnology" target="right">����ʵ��</a></dd>
     	<dd><a href="<%=path%>/strengthInfo.do?action=displayCompanyLogo" target="right">�ϴ���˾��־</a></dd>
     </dl>
     <dl>
     	<dt onclick="toggleDl(this)">�������</dt>
     	<dd><a href="<%=path%>/user/product/category.jsp" target="right">������Ϣ</a></dd>
     	<dd><a href="<%=path%>/productInfo.do?method=productInfoList&auditType=<%=AppConstants.CPGQXX_SFYX_1 %>&overdue=<%=AppConstants.CPGOXX_UN_OVERDUE %>" target="right">��������Ϣ</a></dd>
     </dl>
      
      <dl>
     	<dt onclick="toggleDl(this)">�ҵ����</dt>
     	<dd><a href="<%=path%>/user/comment/comment.jsp" target="right">���۶������</a></dd>
     	<dd>���ʻ����� </dd>
     	<dd>�������</dd> 
     </dl>
     <dl>
     	<dt onclick="toggleDl(this)">���Թ���</dt>
     	<dd><a href="<%=path %>/message.do?method=userList" target="right">����</a></dd>
     	<dd><a href="<%=path%>/message.do?method=messageList&messagefrom=1" target="right">���յ�������</a></dd>
     	<dd><a href="<%=path %>/message.do?method=messageList&messagefrom=2" target="right">�ҷ���������</a></dd> 
 
     </dl> 
  </body>
</html>
 