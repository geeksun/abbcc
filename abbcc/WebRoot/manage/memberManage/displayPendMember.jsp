<%@ page language="java" import="java.util.*" pageEncoding="gbk" contentType="text/html;charset=gbk"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getContextPath();
%>
<html>
  <head>
    <title>�����Ա����</title>
  </head>
  <body>
      <form name="PageForm" method="post" action="memberManage.do">
    	<input type="hidden" name="action" value="displayRegisterMember">
       <table width="100%" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="99CCFF">        
	     <tr align=center>        
		    <td colspan=7 valign="middle">	        
		     <img border="0" src="<%=path%>/images/Search.gif" />�û���:&nbsp;&nbsp;<input type="text" name="userName" />&nbsp;&nbsp;
			 <input name="image" type="image" src="<%=path%>/images/search1.gif" align="absmiddle" border="0" />       
		    </td>
	     </tr>	         
	     <tr>
	       	<th>ID</th><th>��˾����</th><th>�û���</th><th>����</th><th>���</th><th>����</th><th>ɾ��</th>
	     </tr>        
	     <c:forEach var="member" items="${page.data}" >
	     <tr align=center>
	     	<td>${member.hyjbxxid}</td>
	     	<td><a href="membeManage.do?action=detailMemberInfo&hyjbxxid=${member.hyjbxxid}">${member.gsmc}</a></td>
	     	<td>${member.hydlm}</td>
	     	<td>${member.mm}</td>
	     	<td><a href="javascript:examine('<%=path%>/manage/memberManage/auditMember.jsp?hyjbxxid=${member.hyjbxxid}')"><img border="0" alt="" src="<%=path%>/images/m_news.gif"/></a></td>
		<td><input type="checkbox" name="memberid" value="${member.hyjbxxid}"/></td>
		<td><input type="checkbox" name="memberid" value="${member.hyjbxxid}"/></td>      
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
