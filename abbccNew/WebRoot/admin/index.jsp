<%@ page language="java" pageEncoding="GBK" contentType="text/html;charset=GBK"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<html:html>
<head>
	<title>�������ϵͳ��̨</title>
</head>
<body topMargin=0 leftmargin="0" marginheight="0">
	<center>
		<br>
		<br>
		<br>
		<br>
		<br>
		<table cellSpacing=0 cellPadding=0 width=100% align=center border=0>
			<tbody>
				<tr>
					<td vAlign=top width=198 rowSpan=2>
<!-- ������þ���һ��ͼƬ ����Ҳ��Ӧ���ǻ�Ա��¼.Ӧ���ǹ���Ա��¼ͼƬ -->
						<img height=52 src="../images/aaa_1.gif" width=198>
						<img height=41 src="../images/aaa_a1.gif" width=198>
						<img height=53 src="../images/aaa_a2.gif" width=198>
						<img height=72 src="../images/aaa_a3.gif" width=198>
					</td>
					<td vAlign=top height=52>
						<img height=52 src="../images/aaa_2.gif" width=88>
						<img height=52 src="../images/aaa_3.gif" width=166>
						<img height=52 src="../images/aaa_r4.gif" width=77>
					</td>
				</tr>
				<tr>
					<td vAlign=top>
						<html:form action="/adminlogin.do" method="post">
							<table cellSpacing=4 cellPadding=0 width="80%" border=0>
								<tbody>
									<tr align="middle">
										<td colSpan=2>
											�û���:
											<html:text property="uname" />
										</td>
									</tr>
									<tr>
										<td align="middle" colSpan=2>
											��&nbsp;&nbsp;��:
											<html:password property="upass" />
										</td>
									</tr>
									<tr>
										<td colSpan=2 align="center">
											<html:hidden property="adminstatus" value="adminlogin" />
											<html:submit value="��¼" />
											<html:reset value="����" />
										</td>
									</tr>
								</tbody>
							</table>
						</html:form>
					</td>
				</tr>
			</tbody>
		</table>
		<html:errors />
	</center>
</body>
</html:html>