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
  		XX,欢迎登陆  <a href="http://yys580.cn.alibaba.com">客户网址</a>
  	</div>
     <dl>
     	<dt onclick="toggleDl(this)">基本信息设置</dt>
     	<dd><a href="/service/index.jsp">基本资料管理</a></dd>
     	<dd>后台密码修改</dd>
     	<dd>公司简介</dd>
     	<dd>荣誉证书</dd>
     	<dd>技术实力</dd>
     	<dd>上传公司标志</dd>
     	<dd>数据导入</dd>
     </dl>
     <dl>
     	<dt onclick="toggleDl(this)">根结点</dt>
     	<dd>子结点1</dd>
     	<dd>子结点2</dd>
     	<dd>子结点3</dd>
     	<dd>子结点4</dd>
     </dl>
     <dl>
     	<dt onclick="toggleDl(this)">根结点</dt>
     	<dd>子结点1</dd>
     	<dd>子结点2</dd>
     	<dd>子结点3</dd>
     	<dd>子结点4</dd>
     </dl>
  </body>
</html>
