<%@ page language="java" import="java.util.*" pageEncoding="gbk" contentType="text/html;charset=gbk"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getContextPath();
%>
<html>
  <head>
    <title>待审会员管理</title>
  </head>
  <body>
      <form name="PageForm" method="post" action="memberManage.do">
    	<input type="hidden" name="action" value="displayRegisterMember">
       <table width="100%" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="99CCFF">        
	     <tr align=center>        
		    <td colspan=7 valign="middle">	        
		     <img border="0" src="<%=path%>/images/Search.gif" />用户名:&nbsp;&nbsp;<input type="text" name="userName" />&nbsp;&nbsp;
			 <input name="image" type="image" src="<%=path%>/images/search1.gif" align="absmiddle" border="0" />       
		    </td>
	     </tr>	         
	     <tr>
	       	<th>ID</th><th>公司名称</th><th>用户名</th><th>密码</th><th>审核</th><th>批审</th><th>删除</th>
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
