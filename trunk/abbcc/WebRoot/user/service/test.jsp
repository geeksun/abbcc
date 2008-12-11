<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'test.jsp' starting page</title>
    <script src="<%=path%>/js/prototype140.js"></script>
	<script type="text/javascript">
		function test(){
    		alert('ok');
    		//var url = "/traceInfo.do?action=displayBasicInfo";
    		var url = "<%=request.getContextPath()%>/checkName.do";
    		alert(url);
    		var pars = "topCatFormKey="+$("topCatFormKey").value;
    		alert(pars);
		    var myAjax = new Ajax.Request(url,{method: 'post', parameters: pars, onComplete: showChecked});
	  	alert('run');
	  	}
	  	function test2(){
	  		alert('333');
	  	}
	</script>
  </head>
  
  <body>
       <input type="button" onclick="test()" value="testajax" >
        <input type="button" onclick="test2()" value="test2x" >
  </body>
</html>
