<%@ page contentType="text/html;charset=gbk"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<html>
	<head>
		<title>��������Ż���վ</title>
	</head>
	<body>
		<html:form action="login.do" method="post">
			<table>
				<tr>
					<td>
						�û���:
					</td>
					<td>
						<html:text property="user" />
					</td>
				</tr>
				<tr>
					<td>
						��&nbsp;&nbsp;��:
					</td>
					<td>
						<html:password property="password" />
					</td> 
				</tr>
				<tr>
					<html:hidden property="status" value="userlogin"/>
					<td colspan="2">
						<html:submit value="�ύ" />
					</td>
				</tr>
			</table>
		</html:form>
	</body>
</html>

