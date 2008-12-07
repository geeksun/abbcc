<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
	String path = request.getContextPath();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>基本信息设置</title>

  </head>
  <frameset rows="80,*"> 
		<frame name="top" src="<%=path %>/user/service/topMenu.jsp"> 
	<frameset cols="200,*"> 
		<frame name="lower_left" src="<%=path %>/user/service/leftMenu.jsp" scrolling="NO" noresize> 
		<frame name="lower_right" src="<%=path %>/user/service/main.jsp"> 
	</frameset> 
  </frameset> 
  <body>
        
  </body>
</html>
