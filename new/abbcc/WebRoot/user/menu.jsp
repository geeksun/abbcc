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
     	<dt onclick="toggleDl(this)">基本信息设置</dt>
     	<dd><a href="<%=path%>/traceInfo.do?action=displayBasicInfo" target="right">基本资料管理</a></dd>
     	<dd><a href="<%=path%>/modifyPassword.do?action=displayModifyCipher" target="right">后台密码修改</a></dd>
     	<dd><a href="<%=path%>/traceInfo.do?action=displayDetailInfo" target="right">公司简介</a></dd> 
     	<dd><a href="<%=path%>/strengthInfo.do?action=displayHonorCertificate" target="right">荣誉证书</a></dd>
     	<dd><a href="<%=path%>/strengthInfo.do?action=displayTechnology" target="right">技术实力</a></dd>
     	<dd><a href="<%=path%>/strengthInfo.do?action=displayCompanyLogo" target="right">上传公司标志</a></dd>
     </dl>
     <dl>
     	<dt onclick="toggleDl(this)">供求管理</dt>
     	<dd><a href="<%=path%>/user/product/category.jsp" target="right">供求信息</a></dd>
     	<dd><a href="<%=path%>/productInfo.do?method=productInfoList&auditType=<%=AppConstants.CPGQXX_SFYX_1 %>&overdue=<%=AppConstants.CPGOXX_UN_OVERDUE %>" target="right">管理供求信息</a></dd>
     </dl>
      
      <dl>
     	<dt onclick="toggleDl(this)">我的意见</dt>
     	<dd><a href="<%=path%>/user/comment/comment.jsp" target="right">评价东方五金</a></dd>
     	<dd>疑问或难题 </dd>
     	<dd>意见管理</dd> 
     </dl>
     <dl>
     	<dt onclick="toggleDl(this)">留言管理</dt>
     	<dd><a href="<%=path %>/message.do?method=userList" target="right">留言</a></dd>
     	<dd><a href="<%=path%>/message.do?method=messageList&messagefrom=1" target="right">我收到的留言</a></dd>
     	<dd><a href="<%=path %>/message.do?method=messageList&messagefrom=2" target="right">我发出的留言</a></dd> 
 
     </dl> 
  </body>
</html>
 