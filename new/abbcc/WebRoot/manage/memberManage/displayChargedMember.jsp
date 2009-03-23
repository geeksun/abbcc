<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<%
	String path = request.getContextPath();
%>
<html>
  <head>
    <title>已收费会员</title>

  </head>
  
  <body>
     <form name="PageForm" method="post" action="memberManage.do">
    	<input type="hidden" name="action" value="displayChargedMember">
       <table width="100%" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="99CCFF">        
	     <tr align=center>        
		    <td colspan=6 valign="middle">	        
		     <img border="0" src="<%=path%>/images/Search.gif" />用户名:&nbsp;&nbsp;<input type="text" name="userName" />&nbsp;&nbsp;
			 <input name="image" type="image" src="<%=path%>/images/search1.gif" align="absmiddle" border="0" />       
		    </td>
	     </tr>	         
	     <tr>
	       	<th>ID</th><th>公司名称</th><th>注册时间</th><th>到期时间</th><th>审核</th><th>续费</th>
	     </tr>        
	           
	     <c:forEach var="member" items="${page.data}" >
	     <tr align=center>
	     	<td>${member.hyjbxxid}&nbsp;<input type="checkbox" name="memberid" value="${member.hyjbxxid}"/></td>
	     	<td>${member.gsmc}&nbsp;&nbsp;<a href="#">发信</a></td>
	     	<td><fmt:formatDate pattern="yyyy-MM-dd" value="${member.registTime}" /></td>
	     	<td><fmt:formatDate pattern="yyyy-MM-dd" value="${member.scsj}" /></td>
	     <td>
		<a href="javascript:examine('<%=path%>/manage/memberManage/auditMember.jsp?hyjbxxid=${member.hyjbxxid}')"><img border="0" alt="" src="<%=path%>/images/m_news.gif"/></a>
		</td>
		<td><a href="#">续费</a></td>     
	     </tr>
	     </c:forEach>	     
      </table>        
      
      <p>
      <c:set var="lee" value="${requestScope.page}" scope="request" />  
	  <c:if test="${lee.totalPage!=1}">	  
	     <c:import url="page.jsp"></c:import> 	  	 
      </c:if>              
      </form>     
  </body>
</html>
