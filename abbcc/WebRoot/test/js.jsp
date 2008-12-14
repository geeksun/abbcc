<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'js.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript">
		function test(){
			alert('ok');
		}
		function doSubmit1(button_clicked){
	  		var leafCatFormKey = document.forms["basicInfoForm"].elements["leafCatFormKey"];
	  		var right_category_id = $("right_category_id");
	  		if(leafCatFormKey.length==0||leafCatFormKey.selectedIndex==-1){
	  			alert('您的"主营行业"未选择完整，请继续选择行业子类');
	  			return;
	  		}
	  		else{
	  			for(var i=0;i<leafCatFormKey.length;i++){
		  			if(true==leafCatFormKey.options[i].selected){
		  				//alert(leafCatFormKey.selectedIndex);
		  				//alert(leafCatFormKey.options[i]);
		  				//alert(leafCatFormKey.options[i].value+' '+leafCatFormKey.options[i].text);
		  				alert(right_category_id.length);
			  			right_category_id[k] = new Option(leafCatFormKey.options[i].text,leafCatFormKey.options[i].value);
			  			return;
			  				
		  			}
	  			}
	  			
	  		}
	  	}
	  	
	</script>
  </head>
  
  <body>
     
  </body>
</html>
