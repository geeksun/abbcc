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
		<p align=center>
		<c:if test="${customer_logininfo!=null}">
			<font color=red>${customer_logininfo }</font>
		</c:if>
		</p>
		<html:form action="login.do" method="post">
			<table align="center" >
				<tr>
				<td>
				<table>
				<tr>
					<td>
						�û���:
					</td>
					<td>
						<input type="text" name="hydlm" size=18>&nbsp;
					</td>
				</tr>
				<tr>
					<td>
						��&nbsp;&nbsp;��:
					</td>
					<td>
						<input type="password" name="mm" onKeyDown="inspire()" size=19>&nbsp;
					</td> 
				</tr>
				</table>
				</td>
				<td>
				<table>
				<tr>
				<td>
				<a href="http://www.google.cn/member/retrieve_login_id.htm">���˵�¼����</a>
				</td>
				</tr>
				<tr>
				<td>
				<a href="javascript:goToRetrievePWD()">�������룿</a>
				</td>
				</tr>
				</table>
				</td>
				</tr>
				<tr>
					<!-- ��½״̬ -->
					<html:hidden property="status" value="userlogin"/>
					<td colspan="2" align="center">
						<input type="button" value="��¼" onClick="verify();"/>
						<input type="button" value="ע��" onClick="document.location='<%=path%>/user/register.jsp'"/>
					</td>
				</tr>
			</table>
		</html:form>
	</body>
</html>
