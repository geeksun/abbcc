<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
	String path = request.getContextPath();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>welcome to abbcc</title>
  <style type="text/css">
		dl{	background-color:#FFDAB9;color:#0000ff;width:200px;}
		dt{ cursor:pointer;width:100%;background-color:#008000;}
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
  	<div align="center">
  		XX,��ӭ��½  <a href="http://yys580.cn.alibaba.com">�ͻ���ַ</a>
  	</div>
     <dl>
     	<dt onclick="toggleDl(this)">������Ϣ����</dt>
     	<dd><a href="/service/index.jsp">�������Ϲ���</a></dd>
     	<dd>��̨�����޸�</dd>
     	<dd>��˾���</dd>
     	<dd>����֤��</dd>
     	<dd>����ʵ��</dd>
     	<dd>�ϴ���˾��־</dd>
     	<dd>���ݵ���</dd>
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
