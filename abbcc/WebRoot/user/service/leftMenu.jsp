<%@ page language="java" import="java.util.*" pageEncoding="gbk" contentType="text/html;charset=gbk"%>
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
     	<dd><a href="<%=path%>/traceInfo.do?action=displayBasicInfo" target="lower_right">�������Ϲ���</a></dd>
     	<dd><a href="<%=path%>/modifyPassword.do?action=modifyPassword" target="lower_right">��̨�����޸�</a></dd>
     	<dd><a href="main.jsp" target="lower_right">��˾���</a></dd>
     	<dd>����֤��(���ն���)</dd>
     	<dd>����ʵ��</dd>
     	<dd>�ϴ���˾��־</dd>
     </dl>
     <dl>
     	<dt onclick="toggleDl(this)">�����</dt>
     	<dd>�ӽ��1</dd>
     	<dd>�ӽ��2</dd>
     	<dd>�ӽ��3</dd>
     	<dd>�ӽ��4</dd>
     </dl>
     <dl>
     	<dt onclick="toggleDl(this)">�����</dt>
     	<dd>�ӽ��1</dd>
     	<dd>�ӽ��2</dd>
     	<dd>�ӽ��3</dd>
     	<dd>�ӽ��4</dd>
     </dl>
  </body>
</html>
