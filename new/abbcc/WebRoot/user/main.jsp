<%@ page contentType="text/html; charset=UTF-8" %> 
<%
	String path = request.getContextPath();
%>
<html>
  <head>
   <title>用户管理</title>
  </head>
 <frameset rows="103,*" cols="*" frameborder="no"   border="0" framespacing="0" >
	  <frame src="<%=path%>/user/top.jsp" name="top" scrolling="no" id="top" noresize>
	  <frameset rows="*" cols="160,10,*" frameborder="no" border="0" framespacing="0" id="attachucp">
		   <frame src="<%=path%>/user/menu.jsp" name="left" scrolling="auto" noresize >
		   <frame src="<%=path%>/user/mainswitch.html" name="middle" id="leftbar" name="switchFrame" noresize="noresize" scrolling="no">
		   <frame src="<%=path%>/productInfo.do?method=userManagerIndex" name="right" noresize>
	  </frameset>
 </frameset>
 <noframes>
	<body>
		您的浏览器不支持Frame,无法使用本系统
	</body>
 </noframes>
</html> 