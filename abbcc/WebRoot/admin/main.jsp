<%@ page language="java" pageEncoding="GBK"%>
<%@ page contentType="text/html;charset=GBK"%>
<%@ page import="com.abbcc.factory.PubAbbcc"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%
	PubAbbcc pa = new PubAbbcc();
%>
<html>
	<head>
		<title>main</title>
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="this is my page">
	</head>
	<BODY topMargin=0 leftmargin="0" marginheight="0">
		<table width="100%" border="0" cellspacing="0" cellpadding="0"
			align="center">
			<tr>
				<td align=center height=80>
					<img src="../images/title.gif">
				</td>
			</tr>
		</table>
		<table width="80%" border="0" cellspacing="0" cellpadding="0"
			align="center">
			<tr>
				<td>
					<img src="../images/but2.gif" width="134" height="39">
				</td>
			</tr>
			<tr>
				<td height=25>
				</td>
			</tr>
			<tr>
				<td>
					<table width="100%" border="0" cellspacing="0" cellpadding="4"
						align="center">
						<tr>

							<td>
								目前注册会员
								<font color=#ff0000> [<%=pa.queryByTablename("hyjbxx_total", "",1) %>] </font>名,等待审核新注册会员
								<font color=#ff0000> [<%=pa.queryByTablename("hyjbxx_zc","",1) %>] </font>名,等待审核的付费会员
								<font color=#ff0000> [<%=pa.queryByTablename("hyjbxx_wff","",1) %>] </font>名,已审核的付费会员
								<font color=#ff0000> [<%=pa.queryByTablename("hyjbxx_yff", "", 1) %>] </font>名.
							</td>
						</tr>
						<tr>
							<td>
								目前共有
								<font color=#ff0000> [<%=pa.queryByTablename("cpgqxx_total", "", 1) %>] </font>条供求信息,其中已审核
								<font color=#ff0000> [<%=pa.queryByTablename("cpgqxx_wsh", "", 1) %>] </font>条,未审核
								<font color=#ff0000> [<%=pa.queryByTablename("cpgqxx_total", "cpgqxx_wsh", 0) %>] </font>条.
							</td>
						</tr>
						<tr>
							<td>
								目前您的共发布了
								<font color=#ff0000> [<%=pa.queryByTablename("xw_total", "", 1) %>] </font>条新闻信息.
							</td>
						</tr>
						<!-- 
						<tr>
							<td>
								目前产品展厅共有
								<font color=#ff0000> [<%=pa.queryByTablename("cp_total", "", 1) %>] </font>种产品,其中已审核
								<font color=#ff0000> [<%=pa.queryByTablename("cp_wsh", "", 1) %>] </font>条,未审核
								<font color=#ff0000> [<%=pa.queryByTablename("cp_total", "cp_wsh", 0) %>] </font>条.
							</td>
						</tr>
						<tr>
							<td>
								目前公司库中共有
								<font color=#ff0000> [<%=pa.queryByTablename("gs_total", "", 1) %>] </font>个公司,其中已审核
								<font color=#ff0000> [<%=pa.queryByTablename("gs_wsh", "", 1) %>] </font>条,未审核
								<font color=#ff0000> [<%=pa.queryByTablename("gs_total", "gs_wsh", 1) %>] </font>条.
							</td>
						</tr>
						-->
						<tr>
							<td>
								目前共有招聘信息
								<font color=#ff0000> [<%=pa.queryByTablename("zpxx_total", "", 1) %>] </font>条,其中已审核
								<font color=#ff0000> [<%=pa.queryByTablename("zpxx_wsh", "", 1) %>] </font>条,未审核
								<font color=#ff0000> [<%=pa.queryByTablename("zpxx_total", "zpxx_wsh", 0) %>] </font>条.
							</td>
						</tr>
						<!-- 
						<tr>
							<td>
								目前共有求职信息
								<font color=#ff0000> [<%=pa.queryByTablename("xw_total", "", 1) %>] </font>条,其中已审核
								<font color=#ff0000> [22] </font>条,未审核
								<font color=#ff0000> [22] </font>条.
							</td>
						</tr>
						 -->
					</table>
				</td>
			</tr>
		</table>
	</body>
</html>