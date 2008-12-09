<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<%@ page import="com.Student" %>
<%@ page import="com.Teacher" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>    
    <title>My JSP 'MyJsp.jsp' starting page</title>
  
  <body>  
   <%
    	Student st1 = new Student();
    	st1.setName("a1");
    	st1.setOld(20);
    	
    	Teacher t = new Teacher();
    	t.setName("laoshi1");     	
    	st1.setTeacher(t);  
    	
    	Student st2 = new Student();
    	st2.setName("a2");
    	
    	Student st3 = new Student();
    	st3.setName("a3");

    	ArrayList ay = new ArrayList();
    	 
    	ay.add(st1);
    	ay.add(st2);
    	ay.add(st3);
    	
    	request.setAttribute("stu",ay);
    	
    %>
    <c:forEach var="x" items="${stu}" begin="0" end="2" step="1">    
    	<c:out value="${x.name}"/><br>    
    </c:forEach>
  </body>
</html>
