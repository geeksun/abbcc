<%@ page language="java" import="java.util.*" pageEncoding="gbk" contentType="text/html;charset=gbk"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<%
	String path = request.getContextPath();
%>
<html>
  <head>
    <title>��ע���Ա����</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<script type="text/javascript">
		function examine(thisurl){
			var url = thisurl;
			var win = window.open(url,"��˻�Ա","width=270,height=150,top=0,left=0,resizable=no,scrollbars=no");
    		return;
		}
	</script>
  </head>
  
  <body>
    <form name="PageForm" method="post" action="memberManage.do">
    	<input type="hidden" name="action" value="displayRegisterMember">
       <table width="100%" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="99CCFF">        
	     <tr align=center>        
		    <td colspan=6 valign="middle">	        
		     <img border="0" src="<%=path%>/images/Search.gif" />�û���:&nbsp;&nbsp;<input type="text" name="userName" />&nbsp;&nbsp;
			 <input name="image" type="image" src="<%=path%>/images/search1.gif" align="absmiddle" border="0" />       
		    </td>
	     </tr>	         
	     <tr>
	       	<th>ID</th><th>��˾����</th><th>��Ա����</th><th>ע��ʱ��</th><th>����ʱ��</th><th>���</th>
	     </tr>        
	           
	     <c:forEach var="member" items="${page.data}" >
	     <tr align=center>
	     	<td>${member.hyjbxxid}&nbsp;<input type="checkbox" name="memberid" value="${member.hyjbxxid}"/></td>
	     	<td>${member.gsmc}&nbsp;&nbsp;<a href="#">����</a></td>
	     	<td>
	     		<c:if test="${member.memberType=='0'}">��ѻ�Ա</c:if>
	     		<c:if test="${member.memberType=='1'}">��ͨ��Ա</c:if>
	     		<c:if test="${member.memberType=='2'}">������Ա</c:if>
	     		<c:if test="${member.memberType=='3'}">�����ͻ�Ա</c:if>
	     		<c:if test="${member.memberType=='4'}">VIP�����ͻ�Ա</c:if>
	     	</td>
	     	<td><fmt:formatDate pattern="yyyy-MM-dd" value="${member.registTime}" /></td>
	     	<td><fmt:formatDate pattern="yyyy-MM-dd" value="${member.scsj}" /></td>
	     <td>
		<a href="javascript:examine('<%=path%>/manage/memberManage/auditMember.jsp?hyjbxxid=${member.hyjbxxid}')"><img border="0" alt="" src="<%=path%>/images/m_news.gif"/></a>
		</td>      
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
