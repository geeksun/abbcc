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
<DIV >发布供求信息</DIV><br></br>
<DIV >请选择您的信息发布类型</DIV> 
<table> 
	<tr>
		<td>
			<table onclick="gotoPostPage('product')" class=Gbox_off id=Gbox1>
				<tr >
					<td  ><IMG src="<%=path%>/images/icon1.gif"></td>
					<td>产品供应、产品求购、一口价信息。发布一口价信息，获得优先排序。 </td>
				</tr>
				<tr><td colspan="2" align="center">产品信息</td></tr>
			</table>
		  </td>
		<td>
			<table class=Gbox_off id=Gbox1>
				<tr>
					<td><IMG src="<%=path%>/images/icon0.gif"></td>
					<td>批发产品供应、一口价信息，可选混批。<BR>发布一口价信息，获得优先排序。</td>
				</tr>
				<tr><td colspan="2" align="center"><A onclick="gotoPostPage('product')" >批发信息</A></td></tr>
			</table>  
		</td>
		<td>
			<table class=Gbox_off id=Gbox1>
				<tr>
					<td><IMG src="<%=path%>/images/icon0.gif"></td>
					<td>提供加工、寻求加工信息。 </td>
				</tr>
				<tr><td colspan="2" align="center"><A onclick="gotoPostPage('product')" >加工信息</A></td></tr>
			</table>   
		</td>
	</tr>
	<tr>
		<td>
			<table class=Gbox_off id=Gbox1>
				<tr>
					<td><IMG src="<%=path%>/images/icon3.gif"></td>
					<td>各种招商创业信息、招募经销商、代理商、加盟商、特许经营、连锁合作、专卖店等。</td>
				</tr>
				<tr><td colspan="2" align="center"><A onclick="gotoPostPage('product')" >代理招商信息</A></td></tr>
			</table>
		  </td>
		<td>
			<table class=Gbox_off id=Gbox1>
				<tr>
					<td><IMG src="<%=path%>/images/icon4.gif"></td>
					<td>提供服务、寻求服务信息。<BR>如：物流、设计、展会等。 </td>
				</tr>
				<tr><td colspan="2" align="center"><A onclick="gotoPostPage('product')" >服务信息</A></td></tr>
			</table>  
		</td>
		<td>
			<table class=Gbox_off id=Gbox1>
				<tr>
					<td><IMG src="<%=path%>/images/icon5.gif"></td>
					<td>各种资金项目合作、技术专利、租赁转让。<BR>如：项目、投资、招投标等。</td>
				</tr>
				<tr><td colspan="2" align="center"><A onclick="gotoPostPage('product')" >合作信息</A></td></tr>
			</table>   
		</td>
	</tr> 
 <tr>
		<td colspan="3">
			<table class=Gbox_off id=Gbox1>
				<tr>
					<td><IMG src="<%=path%>/images/icon6.gif"></td>
					<td>展示企业实力，吸引优秀人才加盟！</td>
				</tr>
				<tr><td colspan="2" align="center"><A onclick="gotoPostPage('product')" >招聘信息</A></td></tr>
			</table>
		  </td> 
	</tr>  
</table>
  
	</body>
</html>

