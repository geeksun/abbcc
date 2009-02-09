<%@ page contentType="text/html; charset=UTF-8" %> 
<%
	String path = request.getContextPath();
%>
<html>
  <head>
   <title>系统管理</title>
   <meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
  </head>
 <frameset rows="103,*" cols="*" frameborder="no"   border="0" framespacing="0" >
	  <frame src="<%=path%>/manage/top.jsp" name="top" scrolling="no" id="top" noresize>
	  <frameset rows="*" cols="160,10,*" frameborder="no" border="0" framespacing="0" id="attachucp">
		   <frame src="<%=path%>/manage/menu.jsp" name="left" scrolling="auto" noresize >
		   <frame src="<%=path%>/manage/mainswitch.html" name="middle" id="leftbar" name="switchFrame" noresize="noresize" scrolling="no">
		   <frame src="<%=path%>/manage/right.jsp" name="right" noresize>
	  </frameset>
 </frameset>
 <noframes>
	<body>
		您的浏览器不支持Frame,无法使用本系统
	</body>
 </noframes>
</html>

