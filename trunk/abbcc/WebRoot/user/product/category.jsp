<%@ page contentType="text/html; charset=gbk" %> 
<%
	String path = request.getContextPath();
%> 
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
		<title></title>
		 
	</head>
	<script language="JavaScript" type="text/javascript">
 		function gotoPostPage(name)
 		{
 			
 			window.open("product.jsp","right");
 		}
	</script>
	<LINK rev=stylesheet href="<%=path %>/css/myalibaba.css" 
type=text/css rel=stylesheet> 
	<body>
<DIV >����������Ϣ</DIV><br></br>
<DIV >��ѡ��������Ϣ��������</DIV> 
<table> 
	<tr>
		<td>
			<table onclick="gotoPostPage('product')" class=Gbox_off id=Gbox1>
				<tr >
					<td  ><IMG src="<%=path%>/images/icon1.gif"></td>
					<td>��Ʒ��Ӧ����Ʒ�󹺡�һ�ڼ���Ϣ������һ�ڼ���Ϣ������������� </td>
				</tr>
				<tr><td colspan="2" align="center">��Ʒ��Ϣ</td></tr>
			</table>
		  </td>
		<td>
			<table class=Gbox_off id=Gbox1>
				<tr>
					<td><IMG src="<%=path%>/images/icon0.gif"></td>
					<td>������Ʒ��Ӧ��һ�ڼ���Ϣ����ѡ������<BR>����һ�ڼ���Ϣ�������������</td>
				</tr>
				<tr><td colspan="2" align="center"><A onclick="gotoPostPage('product')" >������Ϣ</A></td></tr>
			</table>  
		</td>
		<td>
			<table class=Gbox_off id=Gbox1>
				<tr>
					<td><IMG src="<%=path%>/images/icon0.gif"></td>
					<td>�ṩ�ӹ���Ѱ��ӹ���Ϣ�� </td>
				</tr>
				<tr><td colspan="2" align="center"><A onclick="gotoPostPage('product')" >�ӹ���Ϣ</A></td></tr>
			</table>   
		</td>
	</tr>
	<tr>
		<td>
			<table class=Gbox_off id=Gbox1>
				<tr>
					<td><IMG src="<%=path%>/images/icon3.gif"></td>
					<td>�������̴�ҵ��Ϣ����ļ�����̡������̡������̡�����Ӫ������������ר����ȡ�</td>
				</tr>
				<tr><td colspan="2" align="center"><A onclick="gotoPostPage('product')" >����������Ϣ</A></td></tr>
			</table>
		  </td>
		<td>
			<table class=Gbox_off id=Gbox1>
				<tr>
					<td><IMG src="<%=path%>/images/icon4.gif"></td>
					<td>�ṩ����Ѱ�������Ϣ��<BR>�磺��������ơ�չ��ȡ� </td>
				</tr>
				<tr><td colspan="2" align="center"><A onclick="gotoPostPage('product')" >������Ϣ</A></td></tr>
			</table>  
		</td>
		<td>
			<table class=Gbox_off id=Gbox1>
				<tr>
					<td><IMG src="<%=path%>/images/icon5.gif"></td>
					<td>�����ʽ���Ŀ����������ר��������ת�á�<BR>�磺��Ŀ��Ͷ�ʡ���Ͷ��ȡ�</td>
				</tr>
				<tr><td colspan="2" align="center"><A onclick="gotoPostPage('product')" >������Ϣ</A></td></tr>
			</table>   
		</td>
	</tr> 
 <tr>
		<td colspan="3">
			<table class=Gbox_off id=Gbox1>
				<tr>
					<td><IMG src="<%=path%>/images/icon6.gif"></td>
					<td>չʾ��ҵʵ�������������˲ż��ˣ�</td>
				</tr>
				<tr><td colspan="2" align="center"><A onclick="gotoPostPage('product')" >��Ƹ��Ϣ</A></td></tr>
			</table>
		  </td> 
	</tr>  
</table>
  
	</body>
</html>

