<%@ page contentType="text/html;charset=gbk"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<html>
	<head>
		<title>��������Ż���վ</title>
		<script type="text/javascript">
			function verify(){
			if(validate()){
				document.forms[0].submit();
			}
				else return;	
			}
			function validate(){
				if(document.forms[0].hydlm.value == null || document.forms[0].hydlm.value == ""){
					alert("�û�������Ϊ��");
					document.forms[0].hydlm.focus();
					return false;
				}
				else if(document.forms[0].mm.value == null || document.forms[0].mm.value == ""){
					alert("���벻��Ϊ��");
					document.forms[0].mm.focus();
					return false;
				}
				return true;
			}
			function register(){
				window.location.href = "register.jsp";
			}
		</script>
	</head>
	<body>
		<br>
		<p>
		</p>
		<html:messages id="usernameError" message="true">
				<div align="center" id="message">
					<font color=red size=h3>
					<bean:write name="usernameError" />
					</font>
				</div>
		</html:messages>
		<!-- 
		<html:messages id="repeatLogin" message="false">
				<div align="center" id="message">
					<font color=red size=h3>
					<bean:write name="repeatLogin" />
					</font>
				</div>
		</html:messages>
		 -->
		<html:form action="login.do" method="post">
			<table align="center" >
				<tr>
				<td align="center">
				
				</td>
				</tr>
				<tr>
					<td>
						�û���:
					</td>
					<td>
						<input type="text" name="hydlm">&nbsp;<a href="http://www.google.cn/member/retrieve_login_id.htm">���˵�¼����</a>
					</td>
				</tr>
				<tr>
					<td>
						��&nbsp;&nbsp;��:
					</td>
					<td>
						<input type="password" name="mm" >&nbsp;<a href="javascript:goToRetrievePWD()">�������룿</a>
					</td> 
				</tr>
				<tr>
					<!-- ��½״̬ -->
					<html:hidden property="status" value="userlogin"/>
					<td colspan="2" align="center">
						<input type="button" value="��¼" onClick="verify();"/>
						<input type="button" value="ע��" onClick="register();"/>
					</td>
				</tr>
			</table>
		</html:form>
	</body>
</html>
