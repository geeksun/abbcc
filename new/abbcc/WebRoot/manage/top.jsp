<%@ page contentType="text/html; charset=gbk" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gbk"/>
		<title></title>
	</head>
	<body>
	<c:if test="${managerName!=null}">
		 ${managerName },欢迎您登录
	</c:if>	 
		<table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="FFBB00">
            <tr>
              <td bgcolor="FFFFE6" style="padding:5px 10px 5px 20px "><strong> top</strong></td>
            </tr>
         </table>
	</body>
</html>

