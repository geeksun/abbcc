<%@ page language="java" import="java.util.*" pageEncoding="gbk" contentType="text/html;charset=gbk"%>
<%
	String path = request.getContextPath();
%>
<html>
  <head>   
    <title>会员操作信息</title>
    <script type="text/javascript">
    function renovate(){    
    	var  prompt = document.promptForm;
    	prompt.submit();
    	window.close();																				
    }
    </script>
  </head>
  
  <body><p></p><br><p></p>
  		<p align="center">
  		<font color="blue">会员信息审核成功</font>
  		</p>
  		<p>
        <form name="promptForm" method="post" action="<%=path%>/memberManage.do" target="right">
        	<input type="hidden" name="action" value="displayRegisterMember"> 
        	<p align=center>
        	<input type="button" value="关闭" onClick="renovate()">
        	</p>
        </form>
        </p>
  </body>																							
</html>																								
																											
																									