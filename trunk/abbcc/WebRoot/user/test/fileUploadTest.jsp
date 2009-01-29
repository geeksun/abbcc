<%@ page language="java" contentType="text/html; charset=gbk"
	pageEncoding="gbk"%> 
<%
String path = request.getContextPath();
%>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<title>create product</title>
	</head>  
	<body  >
	<form name="form_product" method="post" action="<%=path %>/productInfo.do?method=uploadFile" enctype ="multipart/form-data" >
		 <input type="text" name="fileName" value="i am"/>
		 <input type="file" name="uploadFile" />
		  <input type="submit" name="submit"  />
	 </form>
	</body>
</html>
