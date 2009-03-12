<%@ page contentType="text/html;charset=gbk"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<html>
	<head>
		<title>东方五金门户网站</title>
	</head>
	<body>
		<html:form action="login.do" method="post">
			<table>
				<tr>
					<td>
						用户名:
					</td>
					<td>
						<html:text property="user" />
					</td>
				</tr>
				<tr>
					<td>
						密&nbsp;&nbsp;码:
					</td>
					<td>
						<html:password property="password" />
					</td> 
				</tr>
				<tr>
					<html:hidden property="status" value="userlogin"/>
					<td colspan="2">
						<html:submit value="提交" />
					</td>
				</tr>
			</table>
		</html:form>
	</body>
</html>

