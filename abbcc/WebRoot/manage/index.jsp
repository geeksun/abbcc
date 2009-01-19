<%@ page contentType="text/html;charset=gbk"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%
	String path = request.getContextPath();
%>
<html>
	<head>
		<title>东方五金门户网站后台管理</title>
		<script type="text/javascript">
			function verify(){
			if(validate()){
				document.forms[0].submit();
			}
				else return;	
			}
			function validate(){
				if(document.forms[0].manageName.value == null || document.forms[0].manageName.value == ""){
					alert("用户名不得为空");
					document.forms[0].manageName.focus();
					return false;
				}
				else if(document.forms[0].password.value == null || document.forms[0].password.value == ""){
					alert("密码不得为空");
					document.forms[0].password.focus();
					return false;
				}
				return true;
			}
			function inspire()
			{
				if(event.keyCode==13)
				{
					return verify();
				}
				else
					return;
			}
		</script>
	</head>
	<body>
		<br>
		<p>
		</p>
		
		<form action="managerLogin.do" method="post">
			<table align="center" >
				<tr>
				<td>
				<table>
				<tr>
					<td>
						用户名:
					</td>
					<td>
						<input type="text" name="manageName" size=18>&nbsp;
					</td>
				</tr>
				<tr>
					<td>
						密&nbsp;&nbsp;码:
					</td>
					<td>
						<input type="password" name="password" onKeyDown="inspire()" size=19>&nbsp;
					</td> 
				</tr>
				</table>
				</td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="button" value="登录" onClick="verify();"/>
						<input type=reset value="清空" >
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>
