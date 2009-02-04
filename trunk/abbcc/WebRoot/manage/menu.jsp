<%@ page language="java"  pageEncoding="gbk" contentType="text/html;charset=gbk"%>
<%
	String path = request.getContextPath();
%> 
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
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
  </head> 
  <body>
     <dl>
     	<dt onclick="toggleDl(this)">会员管理</dt>
     	<dd><a href="<%=path%>/memberManage.do?action=displayRegisterMember" target="right">新用户注册管理</a></dd>
     	<dd><a href="<%=path%>/memberManage.do?action=displayPendMember" target="right">待审会员管理</a></dd>
     	<dd><a href="<%=path%>/memberManage.do?action=displayDetailInfo" target="right">待审未付费会员管理</a></dd> 
     	<dd><a href="<%=path%>/memberManage.do?action=displayHonorCertificate" target="right">已收费会员</a></dd>
     </dl>
     
     
  </body>
</html>
 