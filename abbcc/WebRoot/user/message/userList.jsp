<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="java.util.List,com.abbcc.pojo.Hyjbxx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>Insert title here</title>
</head>
<body>

	<%
	
	List userList=(List)	request.getAttribute("userList");
	if(userList!=null){
		for(int i=0;i<userList.size();i++){
			Hyjbxx hyjbxx=(Hyjbxx)userList.get(i);

	
	%>		
	 <a href="message.do?method=getUser&toid=<%=hyjbxx.getHyjbxxid() %>&type=1">	<%=hyjbxx.getHydlm() %></a>		
<%			
		
		}
	
	}
	
			
	 %>


</body>
</html>