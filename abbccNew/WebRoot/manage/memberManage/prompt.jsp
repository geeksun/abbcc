<%@ page language="java" import="java.util.*" pageEncoding="gbk" contentType="text/html;charset=gbk"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getContextPath();
%>
<html>
  <head>   
    <title>��Ա������Ϣ</title>
    <script type="text/javascript">
    function renovate(){    
    	var  prompt = document.promptForm;
    	prompt.submit();
    	window.close();																				
    }
    </script>
  </head>
  
  <body><p></p><br><p></p>
  		<c:if test="${opera_flag=='audit_register_member'}">
  		<p align="center">
  		<font color="blue">��Ա��Ϣ��˳ɹ�</font>
  		</p>
  		<p>
        <form name="promptForm" method="post" action="<%=path%>/memberManage.do" target="right">
        	<input type="hidden" name="action" value="displayRegisterMember"> 
        	<p align=center>
        	<input type="button" value="�ر�" onClick="renovate()">
        	</p>
        </form>
        </p>
        </c:if>
        <c:if test="${opera_flag!=null}">
        	<p align=center>
        	<c:out value="${opera_flag}"></c:out>
        	</p>
        </c:if>
  </body>																							
</html>																								
																											
																									